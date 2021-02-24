
# R script to determine whether the user is voting legal or not

name <- readline("What is your name? ")
print(paste("Hello", name))

year <- readline("What year were you born? ")

# Change year from a string to a number
year <- as.numeric(year)

age <- 2021 - year
print(paste("You are", age, "years old"))

if(age < 18) {
    print("You may not vote or see R rated movies")
} else {
    print("You are old enough to vote!")
}

