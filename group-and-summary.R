# Examples of grouping and summarizing data!
# 2021-03-15

gapminder %>% group_by(country)
gapminder %>% group_by(country) %>% summarise(avg_pop = mean(pop))
gapminder %>% group_by(year) %>% summarise(mle = max(lifeExp))
gapminder %>% group_by(year) %>% summarise(mle = max(lifeExp)) %>%
    ggplot(aes(year, mle)) + geom_line()
gapminder %>%
    group_by(continent, year) %>%
    summarise(maxpop = max(pop)) %>%
    ggplot(aes(year, maxpop, color=continent)) + geom_line()

gapminder %>%
    filter(continent=="Europe") %>%
    select(year, country, pop, lifeExp) %>%
    pivot_longer(cols = c(pop, lifeExp), names_to = "variable", values_to = "value") ->
    europe

europe %>%
    group_by(variable, year) %>%
    summarise(value = median(value)) ->
    median_europe

ggplot(europe, aes(year, value)) +
    facet_wrap(~variable, scales="free") +
    geom_line(aes(group = country)) +
    geom_line(data = median_europe, color = "red", size = 4)



# Homework

# 1. Compute and graph mean life expectancy by continent and year:

gapminder %>%
    group_by(continent, year) %>%
    summarise(lifeExp = mean(lifeExp), pop = sum(pop)) %>%
    ggplot(aes(year, lifeExp, size = pop, color = continent)) + geom_line()

# 2. I used " summarise(lifeExp = mean(lifeExp)..." for this, but actually that means this graph
# actually isn't correct. Why not? How would I fix it?

# 3. Install the "babynames" package and reads its help page (?babynames).
# Compute and graph the number of boys and girls born by year

babynames %>% group_by(year, sex) %>% summarise(n = sum(n)) %>% ggplot(aes(year, n, color=sex)) + geom_line()

# 4. Use filter() to graph how many girls with YOUR name were born over time
