
# This is our first R script
# Created February 3 2021

print("hello world!")


for(i in 1:10) {
    print(paste("This is", i))   # we don't need a for loop to do this!
}

x <- readline("What is x?")

if(x > 3) {
    # this block gets executed if the 'if' condition is TRUE
    print("Greater than 3")
} else {
    # ...and this if it's FALSE
    print("Less than or equal to 3")
}

