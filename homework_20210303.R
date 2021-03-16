# Homework 2021-03-03

# We saw an example of filter for a single year in the gapminder dataset and plotting it:

library(dplyr)
library(gapminder)
library(ggplot2)
theme_set(theme_minimal())

gapminder %>%
    filter(year == 1977) %>%
    ggplot(aes(gdpPercap, lifeExp, size = pop, color = continent)) +
    geom_point() +
    scale_x_log10()

# Write a pipeline produces the following graph:
gapminder %>%
    filter(continent == "Asia") %>%
    ggplot(aes(gdpPercap, lifeExp, color = year, size=pop)) +
    geom_point() + scale_x_log10() +
    facet_wrap(~country) + ggtitle("Asia")

# How many rows of gapminder have gdpPerCap at least as big as year?
# Use 'filter' construct this dataset. How many unique countries are there?
# Hint: you want the LENGTH of the UNIQUE values...


