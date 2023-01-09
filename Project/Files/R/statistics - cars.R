# Importing the datasets

df_cars = read.table(file = "../Desktop/Data Science/R/datasets/Accidents 5 years/cars.csv",
                     sep = ",",
                     header = TRUE)

# Cars 
df_cars
str(df_cars)

# --- engine capacity ---------
# cars engine
engine <- df_cars$engine_capacity_cc
engine
str(engine)

# Frequency of engine capacity in cars
table(engine)
sort(table(engine))

# Showing boxplot
boxplot(engine)
stats_engine<-boxplot(engine)

# quantiles
quantile(engine)
stats_engine

# first Graphic

hist(engine, probability = TRUE,xlab = "Engine capaity cc", ylab = "", col = "grey",
     axes = FALSE, main = "Histogram, density function and boxplot", breaks = 40)

# Eje
axis(1)


# Density
lines(density(engine), col = "red", lwd = 2)
par(new = TRUE)
boxplot(engine, horizontal = TRUE, axes = FALSE,
        lwd = 2, col = rgb(0, 1, 1, alpha = 0.15))

# Cleaning outliers
engine <- engine[(engine>=68) & (engine<=3059)]

str(engine)

# Second Graphic
hist(engine, probability = TRUE, ylab = "", col = "grey",
     axes = FALSE, main = "Histogram, density function and boxplot", breaks = 40)

# Eje
axis(1)


# Density
lines(density(engine), col = "red", lwd = 2)
par(new = TRUE)
boxplot(engine, horizontal = TRUE, axes = FALSE,
        lwd = 2, col = rgb(0, 1, 1, alpha = 0.15))
stats_engine<-boxplot(engine)
stats_engine

engine <- engine[(engine>=455) & (engine<=2874)]
# Third Graphic
hist(engine, probability = TRUE,xlab = "Engine capaity cc", ylab = "", col = "grey",
     axes = FALSE, main = "Histogram, density function and boxplot", breaks = 30)

# Eje
axis(1)


# Density
lines(density(engine), col = "red", lwd = 2)
par(new = TRUE)
boxplot(engine, horizontal = TRUE, axes = FALSE,
        lwd = 2, col = rgb(0, 1, 1, alpha = 0.15))
stats_engine<-boxplot(engine)
stats_engine
# Without outliers
engine_Frequency = table(cars_engine)
sort(engine_Frequency, decreasing = TRUE)

engine_prop = prop.table(engine_Frequency) * 100
engine_prop = engine_prop[engine_prop>0.5]
barplot(engine_prop, xlab = "Cars: Engine capacity", ylab = "Proportion %", main = "Proportion of accidents by Engine", col = "lightblue")
engine_prop
write.csv(engine_prop, file = "Engine_proportion.csv")

# ---------------------------------------------------------------------------------------

# --------- Cars: Age of driver
# age of driver
age_driver <- df_cars$age_of_driver

# Showing boxplot
boxplot(age_driver)
stats_age<-boxplot(age_driver)

# quantiles
quantile(age_driver)
stats_age


# first graphic

hist(age_driver, probability = TRUE, xlab = "Age of driver",ylab = "", col = "grey",
     axes = FALSE, main = "Histogram, density function and boxplot", breaks = 40)

# Eje
axis(1)


# Densidad
lines(density(age_driver), col = "red", lwd = 2)
par(new = TRUE)
boxplot(age_driver, horizontal = TRUE, axes = FALSE,
        lwd = 2, col = rgb(0, 1, 1, alpha = 0.15))


# cleaning data
age_driver <- age_driver[(age_driver>=18)&(age_driver<=90)]
str(age_driver)

stats_age<-boxplot(age_driver)

# quantiles
quantile(age_driver)
stats_age

# Frequency of engine capacity in cars
table(age_driver)
sort(table(age_driver))



hist(age_driver, probability = TRUE, xlab= "Age of driver", ylab = "", col = "grey",
     axes = FALSE, main = "Histogram, density function and boxplot", breaks = 40)

# Eje
axis(1)


# Densidad
lines(density(age_driver), col = "red", lwd = 2)
par(new = TRUE)
boxplot(age_driver, horizontal = TRUE, axes = FALSE,
        lwd = 2, col = rgb(0, 1, 1, alpha = 0.15))




# Without outliers
age_driver_frequency = table(age_of_driver_cars)
sort(age_driver_frequency, decreasing = TRUE)

age_driver_prop = prop.table(age_driver_frequency) * 100
age_driver_prop = age_driver_prop[age_driver_prop>0.5]
barplot(age_driver_prop, xlab = "Cars: Engine capacity", ylab = "Proportion %", main = "Proportion of accidents by Engine", col = "lightblue")
age_driver_prop
write.csv(age_driver_prop, file = "age_proportion.csv")

# ---------------------------------------------

# Sex of driver
sex_driver <- df_cars$sex_of_driver

# Frequencies
table(sex_driver)

# proportion
prop.table(table(sex_driver))*100

# -----------------------------------

# Generic make model ......

model <- df_cars$generic_make_model
model
model <- model[model!=-1]
sort(table(model), decreasing = TRUE)

write.csv(table(model),file = "makemodel.csv")


# --------------------------------------------------------

# -------- Age of vehicle ----------------
age_vehicle = df_cars$age_of_vehicle


# Showing boxplot
boxplot(age_vehicle)
stats_age<-boxplot(age_vehicle)

# quantiles
quantile(age_vehicle)
stats_age


# first graphic

hist(age_vehicle, probability = TRUE, xlab = "Age of vehicle",ylab = "", col = "grey",
     axes = FALSE, main = "Histogram, density function and boxplot", breaks = 20)

# Eje
axis(1)


# Densidad
lines(density(age_vehicle), col = "red", lwd = 2)
par(new = TRUE)
boxplot(age_vehicle, horizontal = TRUE, axes = FALSE,
        lwd = 2, col = rgb(0, 1, 1, alpha = 0.15))


# cleaning data
age_vehicle <- age_vehicle[(age_vehicle>=0)&(age_vehicle<=24)]
str(age_driver)


# second graphic

hist(age_vehicle, probability = TRUE, xlab = "Age of vehicle",ylab = "", col = "grey",
     axes = FALSE, main = "Histogram, density function and boxplot", breaks = 20)

# Eje
axis(1)


# Densidad
lines(density(age_vehicle), col = "red", lwd = 2)
par(new = TRUE)
boxplot(age_vehicle, horizontal = TRUE, axes = FALSE,
        lwd = 2, col = rgb(0, 1, 1, alpha = 0.15))

# Frequency
Frequency_AV = table(age_vehicle)
df<- data.frame("Frequency" = Frequency_AV,
                "Proportion"= prop.table(Frequency_AV))

write.csv(df,file = "Age vehicle.csv")


barplot(prop.table(Frequency_AV)*100, xlab = "Age of vehicle", ylab = "Proportion of accidents %", main = "Proportion of accidents by age of vehicle", col = "lightblue")

