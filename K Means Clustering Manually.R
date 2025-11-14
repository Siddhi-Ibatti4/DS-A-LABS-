# Load dataset
data(mtcars)

# Use all numeric columns for clustering
X <- scale(mtcars)  # Scale features for fair distance

set.seed(123)
k <- 3
n <- nrow(X)
centroids <- X[sample(1:n, k),]  # Random initialization

max_iter <- 100
clusters <- rep(0, n)

for (iter in 1:max_iter) {
  # Assign clusters
  for (i in 1:n) {
    distances <- apply(centroids, 1, function(cent) sum((X[i,] - cent)^2))
    clusters[i] <- which.min(distances)
  }
  
  # Update centroids
  for (j in 1:k) {
    centroids[j,] <- colMeans(X[clusters==j, , drop=FALSE])
  }
}

# Compute WCSS
wcss_manual <- sum(sapply(1:k, function(j) sum(rowSums((X[clusters==j,] - centroids[j,])^2))))

cat("Manual K-Means WCSS:", wcss_manual, "\n")
