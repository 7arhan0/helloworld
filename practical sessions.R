install.packages("swirl")
library("swirl")
swirl()


x <- c(3,12,7)
y <- c(4,9,11)
x
y


z <- x + y
z

x <- x + 2
y <- y + 50
x
y

sum(x)
mean(y)

w <- c(2,7,NA,20)
v <- sum(w)
v <- sum(w,na.rm = TRUE)
v

typeof(w)
typeof(x)
typeof(v)

# Logical Operator
x
y

x > y
x < y
x != y
x == y

u <- c(5:20)
u

u <- append(u,letters[1])
u

u <- append(x,letters[1:5])
u

j <- append(x,letters[10:21])
j

















