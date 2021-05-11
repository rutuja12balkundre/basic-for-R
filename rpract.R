rep(3,20)
seq(1,50)
seq(1,50,by=5)
x<-c(1,0,0,4)
x[2]
x[3]=4
x
x*y
y<-c(5,3,2,1)
x<4
x[x<4]=0
x
y
y[y>3]=9
y
df<-data.frame(x=1:4,y=c("a","b","c","d"))
df_1<-data.frame(height=c(150,148),weight=c(50,45))
df_1
df<-data.frame(x=c(1,2,3),y=c("a","b","c"))
df
df[1,1]
df[1,]
df[-2,-1,]
df_1[2,1]
df[,2]
df[,1]
df[1,]
df[c(1,3),2]
select(flights,year,carrier,flight)
flights<-data.frame(flights)
filter(flights,month==1,day==1,origin=='JFK')
filter(flights,carrier=="AA" | carrier=="UA")
flights%>%
  select(carrier,dep_delay)%>%
  filter(dep_delay > 60)
flights%>%
  select(carrier,dep_delay)%>%
  arrange(dep_delay)
flights <-flights%>%mutate(Speed=distance/air_time*60)
group_by(flights,month,day)
flights%>%
  group_by(dest)%>%
  summarise(avg_delay=mean(arr_delay, na.rm =TRUE))
flights%>%
  group_by(month,day)%>%
  summarise(flight_count =n())%>%
  arrange(desc(flight_count))
airquality <-datasets::airquality
head(airquality,20)
tail(airquality,15)
airquality[1,2]
airquality[,c(1,3)]
df<-airquality[,-6]
summary(airquality)
airquality$Temp
summary(airquality$Ozone)
summary(airquality)
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality)
plot(airquality$Solar.R,type = "b")
plot(airquality$Wind,type = "l",xlab = "No of Instances",
     ylab = "Ozone Concentration",main = "Ozone levels in NY city",
     col = "purple")
barplot(airquality$Month,main = "Month Of the year",col = "red",horiz = T,axes =T )

hist(airquality$Temp,xlab = "solar lab",main = "Solar radiation values in air",
     col='blue')
boxplot(airquality$Wind ,main="Boxplot")

boxplot(airquality[,1:4],main="Multiple Boxplot")
