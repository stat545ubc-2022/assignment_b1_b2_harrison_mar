library(dplyr)

# making a tibble to compare with group_mean output
island_flip_length <- penguins %>%
  dplyr::group_by(island) %>%
  dplyr::summarise(mean = mean(flipper_length_mm, na.rm = TRUE))

# test_that function
testthat::test_that("Testing group_mean function", {
  expect_equal(island_flip_length, group_mean(penguins, island, flipper_length_mm, na.rm = TRUE))
  expect_warning(group_mean(penguins, island, "flipper_length_mm"))
  expect_error(group_mean(penguins, species, sex))
  expect_error(group_mean(penguins, specied, numeric(0)))
})
