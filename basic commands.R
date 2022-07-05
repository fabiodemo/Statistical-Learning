x <- c(1,3,2,5)
print(x)
# igual a expressão com seta
y = c(1,4,3)
x <- c(1,6,2)

# para abrir o helper do R
?funcname

# soma de valores só pode ocorrer se os dois conjuntos tiverem o mesmo tamanho
print(length(x))
print(length(y))
print(x+y)

# listar todos objetos criados, incluindo dados e funções.
print(ls())

# podemos deletar os objetos também
rm(x,y)
print(ls())

# podemos deletar todos objetos de uma vez só
rm(list=ls())

# uma matrix pode ser usada para criar uma matriz de números.
# print(?matrix)
# x = matrix(data = c(1,2,3,4), nrow=2, ncol=2)
# print(x)
# podemos omitir os valores de linhas e colunas
x = matrix(data = c(1,2,3,4),2,2,byrow=TRUE)
print(x)

# raiz quadrada e exponenciação
print(sqrt(x))
print(x^2)

# geração de vetor com valores aleatórios normais
x = rnorm(50)
y = x + rnorm(50, mean=50, sd=.1)
print(cor(x,y))

# setando a seed da geração aleatória
set.seed(1303)
print(rnorm(50))