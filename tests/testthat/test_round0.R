context("Round number with trailing zeros")

test_that("round0() works", {
  
  a <- c(3.4, 5.5555, 1.0003, NA, -1.2005)
  
  expect_identical(round0(a, 3), c("3.400", "5.556", "1.000", "NA", "-1.200"))
  
})