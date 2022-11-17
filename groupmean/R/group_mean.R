#' @title Calculate group mean of numeric variable
#'
#' @description Groups specified observations together and provides the mean of
#' a chosen numeric variable for each group
#'
#' @details Groups specified observations together and provides the mean of a
#' chosen numeric variable for each group
#'
#' @param df dataframe being used for analysis
#'
#' @param group observational group which you would like to organize data by
#'
#' @param x numeric variable which the mean will be taken from
#'
#' @param ... allows user to access additional arguments for the mean function
#'
#' @param na.rm specifies that NA values will not be included in the mean calculation
#'
#' @return returns the mean of a numeric variable for each group of observations
#'
#' @export
#'
#' @importFrom magrittr "%>%"
#'
#' @examples
#' group_mean(penguins, species, body_mass_g)
#'
#' group_mean(gapminder, continent, gdpPercap)
#'

group_mean <- function(df, group, x, ..., na.rm = TRUE) {
  stopifnot(is.numeric(df %>%
                         dplyr::pull({{x}})))

  df %>%
    dplyr::group_by({{group}}) %>%
    dplyr::summarise(mean = mean({{x}}, na.rm = na.rm))

}
