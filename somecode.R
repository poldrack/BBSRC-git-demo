df=read.table('http://data.bris.ac.uk/datasets/swyt56qr4vaj17op9cw3sag7d/LskyetalPLOSONE.csv',
              header=TRUE,sep=',')
head(df)

max_age=120
min_age=18

df=subset(df,age>min_age&age<max_age)

stopifnot(max(df$age)<max_age)
stopifnot(min(df$age)>min_age)


lm.result=lm(conspiracist_avg~age,data=df)
summary(lm.result)
