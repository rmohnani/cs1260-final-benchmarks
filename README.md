Benchmarks for the CSCI 1260 final project
------------------------------------------

Open up a pull request on this repository to add a benchmark to the
`benchmarks/` directory.

Benchmarking the final homework
-------------------------------

Here's how to get started running benchmarks for the final homework:

1. Clone this respository into your final homework repository:

```shell
git clone git@github.com:BrownCS1260/final-benchmarks.git benchmarks
```

2. In the new benchmarks directory, make a `config.json` file. This file should
   be a JSON-formatted dictionary where the keys are configurations and the
   values are lists of pass names. For example, it might look like:
   
```json
{"No optimizations": [],
 "Inlining": ["uniquify-variables", "inline"],
 "Constant propagation and inlining": ["uniquify-variables", "inline", "propagate-constants"]}
 ```
 
 3. Run the benchmark script. It will run each benchmark 10 times using each
    specified configuration and write the results to `results.csv`.
    
 ```shell
 python3 bench.py
 ```
 
Have fun!
