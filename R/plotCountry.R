
plotCountry <- function(name) {

  gap_country <- gapminder %>%
    dplyr::filter(country == name)

  gapminder %>%
    ggplot2::ggplot(aes(x = log10(gdpPercap), y = lifeExp, size = pop))+
    geom_point(alpha = .25)+
    geom_point(data = gap_country, aes(color = year))

}
