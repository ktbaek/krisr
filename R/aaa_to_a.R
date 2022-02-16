#' Return one-letter amino acid code from three-letter code
#'
#' @param aaa AA code (character)
#' 
#'
#' @return one-letter AA code (character)
#'
#' @examples
#' 
#'
#' @export
aaa_to_a <- 
  function(aaa) 
    {
    
    aaa <- stringr::str_to_upper(aaa)
    
    result <- dplyr::case_when(
      aaa == "ALA" ~ "A",
      aaa == "ARG" ~ "R",
      aaa == "ASN" ~ "N",
      aaa == "ASP" ~ "D",
      aaa == "CYS" ~ "C",
      aaa == "GLN" ~ "Q",
      aaa == "GLU" ~ "E",
      aaa == "GLY" ~ "G",
      aaa == "HIS" ~ "H",
      aaa == "ILE" ~ "I",
      aaa == "LEU" ~ "L",
      aaa == "LYS" ~ "K",
      aaa == "MET" ~ "M",
      aaa == "PHE" ~ "F",
      aaa == "PRO" ~ "P",
      aaa == "SER" ~ "S",
      aaa == "THR" ~ "T",
      aaa == "TRP" ~ "W",
      aaa == "TYR" ~ "Y",
      aaa == "VAL" ~ "V", 
      TRUE ~ aaa
      
    )
    
    return(result)
    
  }
