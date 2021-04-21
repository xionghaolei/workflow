data <- read.csv('../data/data.csv')#读取原始数据
data_clean <- na.omit(data)#删除含NA的行
write.csv(data_clean, '../data_clean/data_clean.csv')
