d=dist(USArrests)
k=kmeans(d,4)
plot(k)
plot.kmeans <- function(obj, data, col = NULL, text = NULL, scale. = FALSE) {
data <- as.matrix(data)
p <- ncol(data)
n <- nrow(data)
attr(data, "scaled:center") <- NULL
attr(data, "scaled:scale") <- NULL
if(is.null(text)) text <- n < 20
if(is.null(col)) col <- 1:NROW(obj$centers)
if(p > 2) {
xpr <- prcomp(data, scale. = scale.)
xp <- predict(xpr)[,1:2]
if(text) {
plot(xp, xlab = "PC1", ylab = "PC2", type = "n")
text(xp, rownames(data), col = col[obj$cluster])
} else {
plot(xp, xlab = "PC1", ylab = "PC2", pch = 19, col = col[obj$cluster])
}
points(predict(xpr, obj$centers)[,1:2], col = col, cex = 3, pch = 3)
} else {
if(text) {
plot(data, type = "n")
text(data, rownames(data), col = obj$cluster)
} else {
plot(data, pch = 19, col = col[obj$cluster])
}
points(obj$centers, col = col, cex = 3, pch = 3)
}
}
plot.kmeans(k,d,text=TRUE)
