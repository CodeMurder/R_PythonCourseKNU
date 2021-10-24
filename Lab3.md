
### 1. Функція add2(x, y), яка повертає суму двох чисел.

	> add2 <- function(x, y) {
	+   return(x+y)
	+ }
	> add2(2,2)
	[1] 4

### 2. Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.

    > above <- function(x, n=10){
    +   return(x[x>n])
    + }
    > above(c(2,11,12,5),3)
    [1] 11 12  5
    > above(c(2,11,12,5))
    [1] 11 12

### 3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.

    > my_ifelse <- function(x, expr, n){
    +   if(expr==">"){
    +     return(x[x>n])
    +   } else if(expr=="<"){
    +     return(x[x<n])
    +   } else if(expr=="=="){
    +     return(x[x==n])
    +   } else if(expr==">="){
    +     return(x[x>=n])
    +   } else if(expr=="<="){
    +     return(x[x<=n])
    +   } else {
    +     return(x)
    +   }
    +   
    + }
    > my_ifelse(c(2,11,12,5),">",8)
    [1] 11 12
    > my_ifelse(c(2,11,12,5),"!=",8)
    [1]  2 11 12  5
    > my_ifelse(c(2,11,12,5),"<=",5)
    [1] 2 5

### 4. Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
	> y <- data.frame(a = rnorm(100), b = 1:100, c = 101:200)
	> columnmean <- function(x, removeNA=TRUE){
	+   resultvector <- c()
	+   for (column in x) {
	+     if (removeNA==FALSE) {
	+       resultvector <- append(resultvector, mean(column))
	+     } else {
	+     column <- column[!is.na(column)]
	+     resultvector <- append(resultvector, mean(column))
	+   }
	+     
	+   }
	+   return(resultvector)
	+ }
	> columnmean(y)
	[1]   0.03037314  50.50000000 150.50000000


