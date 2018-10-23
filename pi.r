
# Generate the points
num_points = 10000 # feel free to play with this
x = runif(num_points, 0, 1)
y = runif(num_points, 0, 1)
z = x^2 + y^2
# pi approximation
pi = (area = 4 * length(z[z < 1]) / length(z))

# Get indices
ord = match(z[z<1], z)
ord_not = match(z[z>=1], z)

# Plot the figure
plot(x[ord], y[ord], col="BLUE", cex=0.1, xlim = c(0, 1), ylim = c(0, 1), 
     main=paste("pi ≈", pi, "\nwith", num_points, "points"),
     xlab="x axis", 
     ylab="y axis")
points(x[ord_not], y[ord_not], col="RED", cex = .1)
x_circ = seq(0, 1, 0.01)
y_circ = sqrt(1 - x_circ^2)
lines(x_circ, y_circ, lwd = 2)
