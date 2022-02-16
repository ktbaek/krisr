context("reorder vector and factorize")

test_that("new_order() works", {
  
  x <- c("A", "B", "A", "F", "C", "E", "D", "F", "G")
  
  order <- c("F", "E", "D", "C", "B", "A")
  
  expect_identical(levels(new_order(x, order)), order)
  
})
  
  