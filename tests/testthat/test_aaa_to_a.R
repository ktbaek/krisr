context("convert three-letter AA code to one-letter")

test_that("aaa_to_a() works", {
  
  aaa <- c("ALA", "ARG", "ASN", "ASP", "CYS",
         "GLN", "GLU", "GLY", "HIS", "ILE", 
         "LEU", "LYS", "MET", "PHE", "PRO",
         "SER", "THR", "TRP", "TYR", "VAL",
         NA, "XXX", 23)
  
  a <- c("A", "R", "N", "D", "C",
         "Q", "E", "G", "H", "I", 
         "L", "K", "M", "F", "P",
         "S", "T", "W", "Y", "V",
         NA, "XXX", 23)
  
  
  expect_identical(aaa_to_a(aaa), a)
  
})
  
  