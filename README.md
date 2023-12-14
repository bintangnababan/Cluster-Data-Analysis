# Cluster Analysis using Hierarchical Clustering

Cluster analysis is a data exploration and segmentation technique that aims to group similar data points into clusters or groups. It is widely used in various fields, including machine learning, statistics, and data mining, to discover patterns, relationships, and structures within datasets.

In this script, we apply hierarchical clustering, a popular method in cluster analysis. Hierarchical clustering builds a tree-like structure of nested clusters, where data points that are more similar to each other are grouped together. The resulting structure, often visualized as a dendrogram, provides insights into the inherent structure of the data.

### Euclidean Distance
The Euclidean distance measures the straight-line distance between two points in Euclidean space. In the context of cluster analysis, it quantifies the dissimilarity or similarity between observations. The script calculates the Euclidean distance matrix and generates dendrograms using various linkage methods, such as single linkage, average linkage, complete linkage, and Ward's method.

### Manhattan Distance
The Manhattan distance, also known as the L1 norm or taxicab distance, measures the distance between two points as the sum of the absolute differences of their coordinates. Similar to the Euclidean distance, the Manhattan distance matrix is computed, and dendrograms are created using different linkage methods.

The resulting dendrograms visually represent the hierarchical relationships among data points, offering insights into potential clusters or groups within the dataset. This script provides a comprehensive approach to cluster analysis using both Euclidean and Manhattan distances, allowing users to explore and interpret the inherent structure of their data.
