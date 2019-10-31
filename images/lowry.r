# Barplot for percentage of papers with equations in different issues

png("lowry.png",
    width = 1440)
par(mai=c(1,4.4,1,1),
    cex = 2.5)
barplot(height = rev(c(14, 38, 56)),
        names.arg = rev(c("July 1959 Ecology",
                      "March 2018 Ecology",
                      "March 2018 MEE")),
        horiz = TRUE,
        col = rev(c("skyblue", "skyblue", "red")),
        las = 1,
        main = "Percentage of contributions containing equations"
        )
dev.off()
