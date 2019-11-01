# Plot Ricker curve with example parameter values
ricker <- function(Svec, alpha, beta)
{
  alpha * Svec * (exp(- beta * Svec))
}

S = seq(0, 10, by=0.01)
png("ricker.png",
    width = 700)
par(cex = 2,
    mai = c(1.7, 1.7, 0.2, 1))
plot(S, ricker(Svec = S, alpha = 2, beta = 1),
     type = "l",
     xlab = "Spawners, S",
     ylab = "Recruits, R")
lines(S, ricker(Svec = S, alpha = 1, beta = 1),
      col = "red")
lines(S, ricker(Svec = S, alpha = 2, beta = 2),
      col = "blue")
dev.off()
