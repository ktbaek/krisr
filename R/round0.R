#' Return rounded number as string including trailing zeros
#'
#' @param x number to round
#' @param y number of decimals
#' 
#'
#' @return Rounded number
#'
#' @examples
#' 
#'
#' @export
round0 <- 
  function(x, decimals) {
    
  sprintf(paste0("%.", decimals,"f"),round(x,decimals))
    
  }
