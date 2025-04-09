#The rep() function

x <- c(10.4,5.6,3.1,6.4,21.7)
s5 <- rep(x,times=5)
s5

s6 <- rep(x,each=5)
s6

#logical vector

temp <- x > 13
temp

is.na(temp)

z <- c(1:4, NA)
result <- is.na(z)
result

x1 <- x == NA
x1
is.na(x)
is.na(x1)

y <- c(1:4,NA)
y1 <- y == NA
y1
is.na(y)

#positive integral vectors
x <- c(50:1)
x[1:10]
x[6]
x3 <- x[20:30]
x3


#Negative integral vectors
y <- x[-(1:4)]
y

#Negative integral vectors
z <- x[-(47:50)]
z