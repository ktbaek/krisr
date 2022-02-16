#' Reorder vector using factor levels
#'
#' @param vector vector to be reordered
#' @param order vector with new order of elements
#' 
#'
#' @return reordered vector of factors
#'
#' @examples
#' 
#'
#' @export
new_order <- 
  function(vector, order) {
  
  factor(vector, levels = order)
  
}
