#!/usr/bin/env python3

import os
import sys
import argparse
import json
import subprocess
import time
import csv

N = 10

def input_file(benchmark):
    pre, _ = os.path.splitext(benchmark)
    return pre + ".in"

def compile_cmd(example: "str", output: "str", passes: "list[str]"):
    if passes == []:
        passes = "-noopt"
    else:
        passes = " ".join("-p {}".format(p) for p in passes)
    src = os.path.join(os.path.relpath("benchmarks", start=".."), example)
    output = os.path.relpath(output, start="..")
    return f"dune exec --root . bin/compile.exe -- {passes} {src} {output}"

def bench(config: "dict[str, list[str]]"):
    # Build the compiler
    subprocess.run(
        "dune build",
        shell=True,
        cwd="..",
        check=True,
    )

    compile_exe = os.path.abspath("../_build/default/bin/compile.exe")

    base_output = "compiled_benchmarks"
    if not os.path.exists(base_output):
        os.mkdir(base_output)

    examples = [f for f in os.listdir("benchmarks") if f.endswith(".lisp")]
    configs = list(enumerate(config.items()))

    # First, compile all benchmarks using all configurations
    for i, (name, passes) in configs:
        if passes == []:
            passes = "-noopt"
        else:
            passes = " ".join("-p {}".format(p) for p in passes)

        output_dir = os.path.join(base_output, str(i + 1))
        for example in examples:
            print(f'Compiling: {example}')
            src = os.path.join("benchmarks", example)
            subprocess.run(
                f"{compile_exe} {passes} {src} {output_dir}",
                shell=True,
                check=True,
            )

    # Then, run each benchmark N times and record the results
    results = {}
    for example in examples:
        print(f'Running: {example}')
        results[example] = {}

        input_path = os.path.join("benchmarks", input_file(example))
        stdin = open(input_path, "rb").read() if os.path.exists(input_path) else ""

        captured_stderr = None
        captured_stdout = None
        for i, (name, passes) in configs:
            run_cmd = os.path.abspath(os.path.join(base_output, str(i + 1), f"{example}.exe"))

            # Run once untimed to cache in memory and verify output
            result = subprocess.run(run_cmd, input=stdin, shell=False, capture_output=True)
            if result.returncode != 0:
                print(f"Error: '{example}' with configuration '{name}' exited with error")
                exit(1)

            if captured_stderr == None or captured_stdout == None:
                captured_stderr = result.stderr
                captured_stdout = result.stdout
            elif captured_stderr != result.stderr or captured_stdout != result.stdout:
                print(f"Error: output of '{example}' changes when using different optimizations")
                exit(1)
            # Run N times
            start = time.perf_counter()
            for i in range(N):
                subprocess.run(
                    run_cmd,
                    input=stdin,
                    shell=False,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.PIPE
                )

            end = time.perf_counter()
            results[example][name] = ((end - start) * 10 ** 9) / N

    return results


def main():
    if not os.path.exists("benchmarks"):
        print(
            "Benchmark script should be run from the root of the benchmarks repository"
        )
        sys.exit(1)
    parser = argparse.ArgumentParser(
        description="CSCI 1260 final homework benchmark script"
    )
    parser.add_argument("--config", type=argparse.FileType("r"), default="config.json")
    parser.add_argument("--output", type=argparse.FileType("w"), default="results.csv")
    args = parser.parse_args()
    config = None
    try:
        config = json.load(args.config)
    except json.decoder.JSONDecodeError as e:
        print("Error reading config file {}: {}".format(args.config.name, e))
        sys.exit(1)
    results = bench(config)
    writer = csv.writer(args.output)
    for example in sorted(results.keys()):
        config_times = results[example]
        for config_name in sorted(config_times.keys()):
            writer.writerow((example, config_name, config_times[config_name]))

if __name__ == "__main__":
    main()
