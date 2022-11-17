
<!-- README.md is generated from README.Rmd. Please edit that file -->

# groupmean

<!-- badges: start -->
<!-- badges: end -->

The goal of groupmean is to quickly find the means of categorical
variables of interest. By specifying dataframe, a categorical variable,
and a numeric variable to the function, the categorical variable will be
grouped by each unique observation and the mean of a numeric variable in
question will be returned for each group.

## Installation

You can install the development version of groupmean like so:

``` r
devtools::install_github("groupmean")
```

## Example

This is a basic example which shows you how to solve a common problem
using the gapminder dataset:

``` r
library(groupmean)
library(gapminder)

# using group_mean to find the mean lifeExp for each country
group_mean(gapminder, country, lifeExp)
#> # A tibble: 142 × 2
#>    country      mean
#>    <fct>       <dbl>
#>  1 Afghanistan  37.5
#>  2 Albania      68.4
#>  3 Algeria      59.0
#>  4 Angola       37.9
#>  5 Argentina    69.1
#>  6 Australia    74.7
#>  7 Austria      73.1
#>  8 Bahrain      65.6
#>  9 Bangladesh   49.8
#> 10 Belgium      73.6
#> # … with 132 more rows

# using group_mean to find the mean gdpPercap of each continent
group_mean(gapminder, continent, gdpPercap)
#> # A tibble: 5 × 2
#>   continent   mean
#>   <fct>      <dbl>
#> 1 Africa     2194.
#> 2 Americas   7136.
#> 3 Asia       7902.
#> 4 Europe    14469.
#> 5 Oceania   18622.
```
