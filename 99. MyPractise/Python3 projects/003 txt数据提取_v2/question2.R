
#读取txt文件并以表格形式赋值给data
data <- read.table(file="DATA2.txt",sep = "\t",header = TRUE)

#统计有多少种样本，各种类所含有的样本数
table(data$L_category_numeric)

#抽取出0类和3类的样本特征值
case_0 <- subset(data,data$L_category_numeric == 0)
case_3 <- subset(data,data$L_category_numeric == 3)

#计算各特征值的t-test

#特征L
case_L_T <- t.test(case_0$L,case_3$L)
case_L_T$p.value
#特征LM
case_LM_T <- t.test(case_0$LM,case_3$LM)
case_LM_T$p.value
#特征X.P
case_X.P_T <- t.test(case_0$X.P,case_3$X.P)
case_X.P_T$p.value
#特征Urine.ml
case_Urine.ml_T <- t.test(case_0$Urine.ml,case_3$Urine.ml)
case_Urine.ml_T$p.value
#特征Age
case_Age_T <- t.test(case_0$Age,case_3$Age)
case_Age_T$p.value
#特征Length
case_Length_T <- t.test(case_0$Length,case_3$Length)
case_Length_T$p.value
#特征Weight
case_Weight_T <- t.test(case_0$Weight,case_3$Weight)
case_Weight_T$p.value
#特征muac
case_muac_T <- t.test(case_0$muac,case_3$muac)
case_muac_T$p.value
#特征WHZ
case_WHZ_T <- t.test(case_0$WHZ,case_3$WHZ)
case_WHZ_T$p.value
#特征HAZ
case_HAZ_T <- t.test(case_0$HAZ,case_3$HAZ)
case_HAZ_T$p.value
#特征WAZ
case_WAZ_T <- t.test(case_0$WAZ,case_3$WAZ)
case_WAZ_T$p.value
#特征BAZ
case_BAZ_T <- t.test(case_0$BAZ,case_3$BAZ)
case_BAZ_T$p.value
#特征MUACZ
case_MUACZ_T <- t.test(case_0$MUACZ,case_3$MUACZ)
case_MUACZ_T$p.value
