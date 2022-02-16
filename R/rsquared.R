#' Return R squared from linear regression using method "lm"
#'
#' @param x independent variable vector
#' @param y dependent variable vector
#' 
#'
#' @return R squared value
#'
#' @examples
#' 
#'
#' @export
rsquared <- 
  function(x,y) 
    {
  m <- lm(y ~ x)
  return(summary(m)$r.squared)
  }
