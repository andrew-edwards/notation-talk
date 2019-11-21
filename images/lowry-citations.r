# Histogram of citations of Lowry (1959)

# Only cited in 1961 and 2019

t <- 1959:2019
cite <- rep(0, length(t))
cite[t %in% c(1961, 2019)] = 1

png("lowry-citations.png",
    width = 1440)
par(mai=c(1,4.4,1,1),
    cex = 2.5)
plot(t, cite, type = "h", lwd = 5,
     col = "red",
     ylim = c(0,2),
     xlab = "Year",
     ylab = "Citations",
     main = "Annual citations of Lowry (1959)")
dev.off()
