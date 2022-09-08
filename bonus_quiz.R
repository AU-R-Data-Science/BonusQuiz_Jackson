# 1) Generate 50 observations from a Binomial distribution with m = 20 and p = 0.5 and assign it to an object called `fish`.

fish <- rbinom (20, n=50, p=0.5)

# 2) Take the square root of `fish` and multiply it by the logarithm of 10.

sqrt(fish)*log(10)

# 3) Create a histogram of 100 observations from a Gamma distribution with shape parameter = 2. Use the function `hist()`.

hist(rgamma(100,2))

# 4) Compute the probability of an observation from the above Gamma distribution of being larger than 2.

pgamma(2, 2, lower.tail = FALSE)

# 5) Install the package `idar` from the GitHub repository "https://github.com/SMAC-Group/idar" (if you have an install error, copy and paste it for your response).

install.packages("idar")
library(idar)

# 6) Install the simts package from CRAN using code (i.e. do not use the RStudio tabs).

install.packages("simts")
library(idar)

# 7) Find help for the gen_gts() function. Copy and run all the code necessary to generate the object 'x' in the first example (AR1 + WN). Apply the function as.vector() to the resulting object 'x' and assign this new vector to an object with the same name (i.e. 'x').

# Set seed for reproducibility
set.seed(1336)
n = 1000

# AR1 + WN
model = AR1(phi = .5, sigma2 = .1) + WN(sigma2=1)
x = gen_gts(n, model)
x <- as.vector(x)

# 8) Subset observations in this new 'x' to extract only positive observations and name this subset 'x_pos'.

x_pos <- x[x>0]

# 9) Modify the same code from Question 7 to generate a vector of length n = 100.

set.seed(1336)
n = 100

# AR1 + WN
model = AR1(phi = .5, sigma2 = .1) + WN(sigma2=1)
x = gen_gts(n, model)
x <- as.vector(x)

# 10) Run the following lines of code to obtain the object `dates` and convert this object into a date format recognizable for R:
#year <- round(runif(100, 1900, 2020))
#day <- round(runif(100, 1, 28))
#month <- round(runif(100, 1, 12))
#dates <- apply(cbind(day, month, year), 1, paste, collapse = "/")

year <- round(runif(100, 1900, 2020))
day <- round(runif(100, 1, 28))
month <- round(runif(100, 1, 12))
dates <- apply(cbind(day, month, year), 1, paste, collapse = "/")

dates <- as.Date(dates, format = "%d/%m/%Y")

# Optional: Create a plot of the object `x` generated in Question 10 where the y-axis represents the values of `x` and the x-axis represents the `dates` object formatted correctly. Use the plot() function with the argument `type = "l"`.

