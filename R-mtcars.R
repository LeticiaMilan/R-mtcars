# dataset mtcars
data(mtcars)

# ver as primeiras linhas
head(mtcars)  

# sumário estatístico dos dados
summary(mtcars)  

# 1 - Limpeza e manipulação de dados:

# adicionar uma nova coluna com a classificação dos carros em Alta/Baixa performance com base na potência (hp)
mtcars$performance <- ifelse(mtcars$hp > 150, "Alta", "Baixa")
head(mtcars)

# 2 - Análise Descritiva:

# média do consumo (mpg)
mean(mtcars$mpg)

# desvio-padrão da cilindrada (disp)
sd(mtcars$disp)

# distribuição das categorias de performance
table(mtcars$performance)

# 3 - Visualização dos dados:

# histograma do consumo de combustível
hist(mtcars$mpg, main="Distribuição do Consumo (mpg)", xlab="Milhas por Galão", col="lightblue")

# boxplot para comparar performance alta/baixa em relação ao consumo
boxplot(mpg ~ performance, data=mtcars, main="Consumo por Performance", xlab="Performance", ylab="Consumo (mpg)", col=c("lightgreen", "lightcoral"))

# gráfico de dispersão da potência vs consumo
plot(mtcars$hp, mtcars$mpg, main="Potência vs Consumo", xlab="Potência (hp)", ylab="Consumo (mpg)", pch=19, col="blue")
