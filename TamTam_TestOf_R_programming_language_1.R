#1-a) Crating dataframe
stretch_distance <- data.frame(str= c(46,54,48,50,44,42,52),
                               dist = c(148,182,173,166,109,141,166))

#1-b) ploting the distance against the stretch by using the plot() function

plot(dist ~ str, data=stretch_distance)

#2
x <- seq(101,112)

rep(c(4,6,3),4)

c(rep(4,8),rep(6,7),rep(3,9)) 

mat64 <- matrix(c(rep(4,8),rep(6,7),rep(3,9)), nrow=6, ncol=4)

rep(seq(1,9),seq(1,9))

summary(airquality)

airquality[airquality$Ozone == max(airquality$Ozone),]

airquality$Wind[airquality$Ozone > quantile(airquality$Ozone, .75)]

mean(snow$snow.cover[seq(2,10,2)])

mean(snow$snow.cover[seq(1,9,2)])

summary(attitude);

summary(cpus)

mtcars6<-mtcars[mtcars$cyl==6,]

Cars93[Cars93$Type=="Small"|Cars93$Type=="Sporty",]
