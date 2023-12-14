#Input Data
library(readr)
Glass  <- read_csv("C:/Users/Binta/Downloads/glass.csv") 
head(Glass)

#Import data
library(data.table)
data.glass=data.table(Glass)
data.glass

#Data Cleaning
#Hapus Missing Value
new.glass <- na.omit(data.glass, col = c("RI","Na","Mg","Al","Si","K","Ca","Ba","Fe"))
#Hapus Data Duplikat
new.glass <- unique(new.glass)
new.glass

#Exploratory Data Analys (EDA)
pairs(new.glass)
summary(new.glass)
cor_matrix <- cor(new.glass)
heatmap(cor_matrix)

#Feature Engineering
#Normalisasi variabel numerik
library(caret)
preProcess_data <- preProcess(new.glass[,c("RI","Na","Mg","Al","Si","K","Ca","Ba","Fe")], method = c("center", "scale"))
#Terapkan normalisasi pada dataset
new.glass <- predict(preProcess_data, newdata = new.glass)

#Type
glass.type <- new.glass$Type
table(glass.type)

#Pembagian data training dan data testing
set.seed(123)
train_index <- sample(1:nrow(new.glass), 0.8 * nrow(new.glass))
train_data <- new.glass[train_index,]
test_data <- new.glass[-train_index]

#Menentukan banyak hidden layer dan neuron
nx = 9
ny = 6
nz = sqrt(nx*ny)
nz

#Algoritma
library(neuralnet)
nn <- neuralnet(Type ~ RI+Na+Mg+Al+Si+K+Ca+Ba+Fe, data=train_data, hidden=nz, linear.output = FALSE)
plot(nn)
weights(nn)