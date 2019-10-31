ricker <- function(Svec, alpha, beta)
{
  alpha * Svec * (exp(- beta * Svec))
}

S = seq(0, 10, by=0.01)
png("ricker.png")
plot(S, ricker(Svec = S, alpha = 2, beta = 1),
     type = "l",
     xlab = "Spawners, S",
     ylab = "Recruits, R",
     cex = 3)
lines(S, ricker(Svec = S, alpha = 1, beta = 1),
      col = "red")
lines(S, ricker(Svec = S, alpha = 2, beta = 2),
      col = "blue")
dev.off()
