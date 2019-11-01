library(ggplot2)
options(device = "quartz")

codes <- read.csv(file="offense_codes.csv", header=TRUE, sep=",")
crimes <- read.csv(file="crime.csv", header=TRUE, sep=",")

# Quick look at the data frame
print(ncol(crimes))
head(crimes,2)
str(crimes)

dev.new()
ggplot(crimes,aes(x=factor(MONTH),fill=factor(YEAR))) + geom_bar(position=position_dodge(),color='black',size=0.1)+scale_fill_brewer(palette = 'Pastel1')
