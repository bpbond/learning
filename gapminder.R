# Pipe example

library(dplyr)
library(gapminder)

gapminder %>%
    summary() %>%
    print()

print(summary(gapminder))

gapminder %>%
    filter(country == "Egypt") %>%
    ggplot(aes(x = year, y = pop)) + geom_line()

gapminder %>%
    filter(country %in% c("Egypt", "New Zealand", "Chad")) %>%
    ggplot(aes(x = year, y = pop, color = country)) + geom_line()




