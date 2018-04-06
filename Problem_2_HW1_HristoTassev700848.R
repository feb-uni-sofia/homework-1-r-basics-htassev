#Problem 2 
#(a) (2 points) Create a vector called xmin for the minimum temperature measurements and a vector called xmax for the maximal temperature measurements.

xmin <- c (23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2 ) 
xmax <- c ( 25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1 ) 

#(b) (2 points) Compute the difference between the maximal and the minimum temperatures for each day.

xmin - xmax

#(c) (2 points) Compute the average minimum temperature and the average maximal temperature.
totalMinimum <- sum(xmin)
totalMinimum
avgMinimum <- totalMinimum/length(xmin)
avgMinimum

totalMaximum <-sum(xmax)
totalMaximum
avgMaximum <-totalMaximum/length(xmax)
avgMaximum

#(d) (3 points) Use the subsetting operator [ ] to select those elements of xmin where
#the minimum temperature was below its weekly average.

xmin [c(xmin<avgMinimum)]

#(e) (3 points) Use the subsetting operator [ ] to select those elements of xmin where
#the maximal temperature was above its weekly average.

xmin [c(xmin>avgMinimum)]

#(f) (2 points) Assign names to the elements of xmin and xmax.
dayNames <- c('03Mon18', '04Tue18', '05Wed18', '04Thu18', '05Fri18', '06Sat18', '07Sun18')
names(xmin) <- dayNames
xmin
names(xmax) <- dayNames
xmax

#(g) (2 points) Combine xmin and xmax to a data.frame called temperatures.
temperatures <- data.frame (xmin, xmax)
temperatures

#(h) (3 points) Create a new column in xminFahrenheit that equals the minimum
#temperature converted to a Fahrenheit scale. Hint: the conversion formula is РїРѕРіР»РµРґРЅРё С„РѕСЂРјСѓР»aС‚a where C is degrees Celsius and F degrees Fahrenheit.

xminFahrenheit <- c(9/5*xmin+32)
temperatures [["xminFahrenheit"]] <- xminFahrenheit
temperatures


#(i) (2 points) Create a new data.frame that contains only the temperature measurements
#in Fahrenheit.

xmaxFahrenheit <- c(9/5*xmax+32)
temperatureFahrenheit <- data.frame ( xminFahrenheit, xmaxFahrenheit)
temperatureFahrenheit

#(j) (4 points) Create a new data.frame that contains only the temperature measurements
#in Fahrenheit for the first five days of the week.
temperatureFahrenheit1 <- temperatureFahrenheit[c(1:5), ]
temperatureFahrenheit1
#ii) By excluding the last two days
temperatureFahrenheit2 <- temperatureFahrenheit[-c(6:7), ]
temperatureFahrenheit2
