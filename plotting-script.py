import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from scipy.stats import wilcoxon
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
import numpy as np

# Read the CSV file into a Pandas DataFrame
df = pd.read_csv('results.csv')

# Function to calculate Cohen's d
def cohen_d(group1, group2):
    mean_diff = group1.mean() - group2.mean()
    pooled_std = np.sqrt((group1.std()**2 + group2.std()**2) / 2)
    return mean_diff / pooled_std

# Normalize execution times
baseline_means = df[df['optimization-name'] == 'No optimizations (0)'].groupby('program-name')['execution-time'].mean()

# Filter only those program names that have 'No optimizations' data
valid_programs = baseline_means.index
df['normalized-execution-time'] = df.apply(
    lambda row: row['execution-time'] / baseline_means[row['program-name']] if row['program-name'] in valid_programs else row['execution-time'],
    axis=1
)

# Save normalized data to a new CSV file
df.to_csv('results_normalized.csv', index=False)

# 1. Descriptive Statistics
descriptive_stats = df.groupby('optimization-name')['normalized-execution-time'].describe()

# 2. Visualization - Line Plots with Confidence Intervals
plt.figure(figsize=(12, 6))
sns.lineplot(x='optimization-name', y='normalized-execution-time', data=df, errorbar='sd')
plt.xticks(rotation=45)
plt.title('Line Plot of Normalized Execution Times with Confidence Intervals')
plt.show()

# 3. Non-Parametric Tests (Wilcoxon Signed-Rank Test)
baseline = df[df['optimization-name'] == 'No optimizations (0)']['normalized-execution-time']
for opt_name, group in df.groupby('optimization-name'):
    if opt_name != 'No optimizations (0)':
        stat, p_value = wilcoxon(baseline, group['normalized-execution-time'])
        print(f"Wilcoxon Test for {opt_name} vs. No optimizations: p-value = {p_value}")

# 4. Effect Size (Cohen's d)
for opt_name, group in df.groupby('optimization-name'):
    if opt_name != 'No optimizations (0)':
        effect_size = cohen_d(baseline, group['normalized-execution-time'])
        print(f"Cohen's d for {opt_name} vs. No optimizations: {effect_size}")

# 5. Regression Analysis
le = LabelEncoder()
df['optimization_code'] = le.fit_transform(df['optimization-name'])
X = df[['optimization_code']]
y = df['normalized-execution-time']

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# Fit a linear regression model
model = LinearRegression()
model.fit(X_train, y_train)

# Make predictions
y_pred = model.predict(X_test)

# Evaluate the model
mse = mean_squared_error(y_test, y_pred)
print(f'Mean Squared Error: {mse}')

# 6. Outlier Analysis - Box Plots with Outliers
plt.figure(figsize=(12, 6))
sns.boxplot(x='optimization-name', y='normalized-execution-time', data=df, showfliers=True)
plt.xticks(rotation=45)
plt.title('Box Plot of Normalized Execution Times with Outliers')
plt.show()

# 7. Bootstrapping Techniques
bootstrap_means = []
for _ in range(1000):
    bootstrap_sample = np.random.choice(df['normalized-execution-time'], size=len(df), replace=True)
    bootstrap_means.append(np.mean(bootstrap_sample))

# Plot histogram of bootstrapped means
plt.figure(figsize=(10, 6))
plt.hist(bootstrap_means, bins=30, color='skyblue', edgecolor='black')
plt.title('Bootstrapped Means of Normalized Execution Times')
plt.xlabel('Bootstrapped Mean')
plt.ylabel('Frequency')
plt.show()

# 8. Bar Plot of Average Normalized Execution Time by Optimization
plt.figure(figsize=(12, 6))
sns.barplot(x='optimization-name', y='normalized-execution-time', data=df)
plt.xticks(rotation=45)
plt.title('Bar Plot of Average Normalized Execution Time by Optimization')
plt.show()

# 9. Violin Plot
plt.figure(figsize=(12, 6))
sns.violinplot(x='optimization-name', y='normalized-execution-time', data=df)
plt.xticks(rotation=45)
plt.title('Violin Plot of Normalized Execution Times')
plt.show()

# 10. Pair Plots
sns.pairplot(df, hue='optimization-name', diag_kind='kde')
plt.suptitle('Pair Plots of Normalized Execution Times by Optimization', y=1.02)
plt.show()
