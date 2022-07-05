#### Indexando Dados ####
# ïndices dos dados
A = matrix(1:16, 4, 4)
A
A[2,3]
A[c(1,3), c(2,4)]
A[1:3, 2:4]
A[1:2,]
A[,1:2]
A[1,]
A[-c(1,3),]
A[-c(1,3), -c(1,3,4)]
# Verificar dimensões da matrizz
dim(A)

#### Carregando Dados ####
library(ISLR)
Auto <- read.table("Auto.data")
fix(Auto)
Auto = read.csv("Auto.data", header=T, na.strings="?")
fix(Auto)
dim(Auto)
Auto[1:4, ]
names(Auto)
####  Gráficos Adicionais ####
# Scatterplot
plot(cylynders, mpg)
# Para chamar uma coluna específica
plot(Auto$cylinders)
# Para fazer com que o R saiba o nome das colunas, para usá-las sem precisar chamar o Dataframe
attach(Auto)
plot(cylinders, mpg)

# R tratou os cilindros como quantitativos, porém podemos convertê-lo para qualitativo com o comando as.factor()
cylinders = as.factor(cylinders)

# Se a variável plotada no eixo x é categórica, boxplots serão automaticamentes gerados pela função plot()
plot(cylinders, mpg)
plot(cylinders, mpg, col= "red")
plot(cylinders, mpg, col= "blue", varwidth= T)
plot(cylinders, mpg, col= "green", varwidth= T, horizontal= T)
plot(cylinders, mpg, col= "grey", varwidth= T, horizontal= T, xlab= "cylinders", ylab= "MPG")

# Geração de Histograma
hist(mpg)
hist(mpg, col= 2)
hist(mpg, col= 2, breaks= 15)

# A função pairs() cria uma matrix de dispersão para cada par de variáveis de qualquer conjunto de dados.
pairs(Auto)
pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto)

# identify() fornece um método interativo para identificar os valores para uma variável particular (para seus pontos no gráfico)
plot(horsepower, mpg)
identify(horsepower, mpg, name)

# A função summary() produz um sumário numérico de cada variável no dataset.
summary(Auto)
summary(mpg)

# antes de fechar o terminal R, podemos usar a função que sava todos comandos utilizados na sessão
savehistory()
# E podemos carregá-los numa próxima sessão
loadhistory()
