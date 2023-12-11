#input data of experiments, n=1,2,3,4 dataA for gene A, dataB for gene B
dataA <- data.frame(
  Experiment = rep(1:4, each = 2),
  Group = rep(c("Control", "A"), times = 4),
  Percentage = c(56.9, 66.4, 50.3, 59.4, 50.2, 56.9, 49.6, 63)
  )
dataB <- data.frame(
  Experiment = rep(1:4, each = 2),
  Group = rep(c("Control", "B"), times = 4),
  Percentage = c(56.9, 38.8, 50.3, 39.7, 39.5, 30.8, 49.6, 41.3)
  )

#conduct shapiro-wilk test for normality
shapiro.test(dataA$Percentage)
shapiro.test(dataB$Percentage)


#change to factor
dataA$Experiment <- as.factor(dataA$Experiment)
dataA$Group <- as.factor(dataA$Group)

dataB$Experiment <- as.factor(dataB$Experiment)
dataB$Group <- as.factor(dataB$Group)

#two-way anova. repeated measure not performed considering the independent nature of experiments.
anovaA <- aov(Percentage ~ Group + Experiment, data = dataA)
summary(anovaA)

anovaB <- aov(Percentage ~ Group + Experiment, data = dataB)
summary(anovaB)


#welch t-test as post hoc for unequal variance with bonferroni correction
tTestA <- t.test(Percentage ~ Group, data = dataA, adjust ="bonferroni")
print(tTestA)
tTestB <- t.test(Percentage ~ Group, data = dataB, adjust ="bonferroni")
print(tTestB)


