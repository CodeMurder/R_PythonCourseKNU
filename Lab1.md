### 1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.

    > var_numeric <- as.numeric(3.14)
    > var_character <- "A"
    > var_logical <- TRUE
    > var_complex <- 1+4i
    > var_integer <- as.integer(10)

    typeof(var_numeric)
    [1] "double"
    > typeof(var_character)
    [1] "character"
    > typeof(var_logical)
    [1] "logical"
    > typeof(var_complex)
    [1] "complex"
    > typeof(var_integer)
    [1] "integer"

### 2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.

    vector1 <- 5:75
    vector2 <- c(3.14,2.71,0,13)
    vector3 <- rep(T,100)
    
    > vector1
     [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42
    [39] 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75
    > vector2
    [1]  3.14  2.71  0.00 13.00
    > vector3
      [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
     [24] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
     [47] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
     [70] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
     [93] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE

### 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
|  0.5| 1.3 |  3.5 |
|--|--|--|
| 3.9 | 131 |2.8 |
|0 | 2.2| 4.6|
|2|7|5.1|

   

    > A = matrix(c(0.5,1.3,3.5,3.9,131,2.8,0,2.2,4.6,2,7,5.1),nrow=4,ncol=3,byrow = TRUE)
    > A
         [,1]  [,2] [,3]
    [1,]  0.5   1.3  3.5
    [2,]  3.9 131.0  2.8
    [3,]  0.0   2.2  4.6
    [4,]  2.0   7.0  5.1
    > B = rbind(c(0.5,1.3,3.5),c(3.9,131,2.8),c(0,2.2,4.6),c(2,7,5.1))
    > B
         [,1]  [,2] [,3]
    [1,]  0.5   1.3  3.5
    [2,]  3.9 131.0  2.8
    [3,]  0.0   2.2  4.6
    [4,]  2.0   7.0  5.1

### 4. Створити довільний список (list), в який включити всі базові типи.

    > data_list <- list(TRUE, 1, 1+3i, "Text", 3.14, c(1,2,3,4,5))
    > data_list
    [[1]]
    [1] TRUE
    
    [[2]]
    [1] 1
    
    [[3]]
    [1] 1+3i
    
    [[4]]
    [1] "Text"
    
    [[5]]
    [1] 3.14
    
    [[6]]
    [1] 1 2 3 4 5

### 5. Створити фактор з трьома рівнями «baby», «child», «adult».

    > data <- factor(c("baby","child","adult"))
    > data
    [1] baby  child adult
    Levels: adult baby child

### 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.

    > vector4 <- c(1, 2, 3, 4, "NA", 6, 7, "NA", 9, "NA", 11)
    > match("NA",vector4)
    [1] 5
    > sum(vector4=="NA")
    [1] 3

### 7. Створити довільний data frame та вивести в консоль.

    > data <- data.frame(
    +   emp_id = c (1:5), 
    +   emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
    +   salary = c(623.3,515.2,611.0,729.0,843.25))
    > data
      emp_id emp_name salary
    1      1     Rick 623.30
    2      2      Dan 515.20
    3      3 Michelle 611.00
    4      4     Ryan 729.00
    5      5     Gary 843.25

### 8. Змінити імена стовпців цього data frame.

    > colnames(data)[2] <- "workers"
    > data
      emp_id  workers salary
    1      1     Rick 623.30
    2      2      Dan 515.20
    3      3 Michelle 611.00
    4      4     Ryan 729.00
    5      5     Gary 843.25
    
