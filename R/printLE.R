printLE <- function(gap_country, gap_year){

  LE_country <- gapminder %>%
    dplyr::filter(country == gap_country, year == gap_year)%>%
    dplyr::select(lifeExp)

  LE_avg <- gapminder %>%
    dplyr::filter(year == gap_year) %>%
    dplyr::summarise(avg = mean(lifeExp))

  glue::glue("The life expectancy of {gap_country} in {gap_year} was {LE_country} years,
compared to the average for all countries, {LE_avg}.")
}
