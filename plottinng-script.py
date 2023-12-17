import pandas as pd
import matplotlib.pyplot as plt

# Read the CSV file into a Pandas DataFrame
df = pd.read_csv('results.csv')

# Group data by optimization name
grouped_data = df.groupby('optimization-name')

# Plot a line for each optimization
for name, group in grouped_data:
    plt.plot(group['program-name'], group['execution-time'], label=name)

# Set labels and title
plt.xlabel('Program Name')
plt.ylabel('Execution Time')
plt.title('Execution Time for Different Optimizations')
plt.xticks(rotation=90)  # Rotate x-axis labels for better readability
plt.legend(loc='upper right', bbox_to_anchor=(1.2, 1))

# Show the plot
plt.show()
