
#Install the following packages
#install.packages("dplyr")
#install.packages("micromapST")
#set your working directory

setwd("C:/Users/sadam/Desktop/projectAIT580")
getwd()
income <- read.csv("state_averageIncome.csv", header=T, as.is=TRUE)
head(income)
usStates <- read.csv("usStates.csv", header=T, as.is=TRUE)
head(usStates)

State_income <- merge(income,usStates,by ="STATE")
head(State_income)


library(dplyr)
#State_income = State_income%>%rename(state_medianIncome = Total_income)
#str(State_income)


State_income$ave_FederalIncome <- mean(State_income$AverageIncome)/1000
State_income$AverageIncome <- State_income$AverageIncome/1000

#2.	Using the micromapST() function, create a linked micromap 

type=c('maptail','id','bar','arrow')
lab1=c('','','State Average Income','State Average Income Deviation')
lab2=c('' ,'',' ','From Federal Average Income')
lab3=c('','','in 1000 USD','in 1000 USD')
col1 =c(NA,NA,'AverageIncome','ave_FederalIncome')
col2 =c(NA,NA,NA,'AverageIncome')

panelDesc2<- data.frame(type,lab1,lab2,col1,col2,lab3)
panelDesc2

fName = "state_average_Income_1_.pdf"
pdf(file=fName,width=7.5,height=10)


library(micromapST)

micromapST(State_income, panelDesc2,
           rowNamesCol='ï..State',
           rowNames='full',
           plotNames='full',
           sortVar="AverageIncome",ascend=FALSE,
           title=c("Average Individual Income by State",
                   "Tax Year 2019 "),
           ignoreNoMatches=TRUE
           )
dev.off()



taxInfo <- read.csv("taxInformation.csv", header=T, as.is=TRUE)
head(taxInfo)
str(taxInfo)
taxInfo$itemized_deductions <- taxInfo$itemized_deductions/1000
taxInfo$Taxable_income <- taxInfo$Taxable_income/10000
taxInfo$standard_deduction <- taxInfo$standard_deduction/1000
taxInfo$Nonrefund_edu_credit <- taxInfo$Nonrefund_edu_credit
library(ggplot2)
corr_ItemizedDeduction <- ggplot(taxInfo,aes(x=itemized_deductions,y=Taxable_income))+geom_point() +stat_smooth()+
  labs(x = "Itemized deductions (in 1000 USD)",
       y = "Taxable income (in 10000 USD)", title="Correlation between Itemized deductions and Taxable income ")
 
print(corr_ItemizedDeduction)

corr_standardDeduction <- ggplot(taxInfo,aes(x = standard_deduction,y = Taxable_income))+geom_point() +stat_smooth()+
  labs(x = "Standard deduction (in 1000 USD)",
       y = "Taxable income in (10000 USD)", title="Correlation between Standard deduction and Taxable income ")

print(corr_standardDeduction)

cor(taxInfo$standard_deduction,taxInfo$Taxable_income)

cor.test(taxInfo$standard_deduction,taxInfo$Taxable_income, method = "spearman",exact=F)

corr_eduTaxIncome <- ggplot(taxInfo,aes(x = Nonrefund_edu_credit,y = Taxable_income))+geom_point() +stat_smooth()+
  labs(x = "Nonrefund_edu_credit (in 1000 USD)",
       y = "Taxable income in (10000 USD)", title="Correlation between Nonrefund_edu_credit and Taxable income ")

print(corr_eduTaxIncome)


cor.test(taxInfo$Nonrefund_edu_credit,taxInfo$Taxable_income, method = "spearman",exact=F)
