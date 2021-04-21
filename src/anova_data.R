data <- read.csv('../data_clean/data_clean.csv')
data$sex <- as.factor(data$sex)
data_anova <- aov(data$score ~ data$sex)
anova <- summary(data_anova)
library(ggplot2)
library(ggpubr)
p <- ggboxplot(data = data, x = 'sex', y = 'score', color = 'sex') +
  stat_compare_means(method = 'anova', label.x = 0.6, label.y = 110) +
  stat_compare_means(aes(label = ..p.signif..), 
                      label.x = 1.05, label.y = 110)
p
ggsave('../fig/anova.tiff', width = 5,height = 4)
