set.seed(123)
kmeans_model <- kmeans(X, centers=k, nstart=25)

clusters_lib <- kmeans_model$cluster
wcss_lib <- kmeans_model$tot.withinss

cat("Library K-Means WCSS:", wcss_lib, "\n")
