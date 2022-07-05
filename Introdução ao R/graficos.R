# Plot() é a função mais comum de plotar um gráfico
x = rnorm(100)
y = rnorm(100)
plot(x, y)
plot(x, y, xlab="this is the x-axis", ylab="this is the y-axis", main="Plot of X vs Y")

# Salvar as gráficos para pdf
pdf("Figure.pdf")
plot(x, y, col="green")
# dev.off() faz que o R saiba que deve acabar de criar o gráfico.
dev.off()

# Criação de sequência de números
x = seq(1, 10)
x
x= 1:10
x
x = seq(-pi, pi, length=50)
x

# Função contour cria um gráfico sofisticado, representando dados de forma tridimensional
# 1. um vetor dos valores de x (primeira dimensão)
# 2. um vetor dos valores de y (segunda dimensão)
# 3. uma matriz dos elemntos correspondentes ao valor de zz (terceira dimensão), para cada par de (x, y)
y = x
f = outer(x, y, function(x,y)cos(y)/(1+x^2))
contour(x, y, f)
contour(x, y, f, nlevels=45, add=T)
fa = (f-t(f))/2
contour(x, y, fa, nlevels=15)
# Função image() funciona da mesma forma que o contour(), porém ela gera um gráfico com cores. Conhecido como mapa de calor
image(x, y, fa)
# De forma alternativa, persp() também produz um gráfico tridimensional. Theta e Phi controlam os ângulos nos quais o gráfico é exibido
persp(x, y, fa)
persp(x, y, fa, theta= 30, phi= 20)
persp(x, y, fa, theta= 30, phi= 70)
persp(x, y, fa, theta= 30, phi= 40)


