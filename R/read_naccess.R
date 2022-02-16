#' Read output from Naccess
#'
#' Read .rsa files and outputs a tibble. 
#'
#' @param path path to .rsa file
#'
#' @return Tibble containing the information from the .rsa file
#'
#' @examples
#' read_naccess('../naccess/1a2p.rsa')
#'
#' @export
read_naccess <- 
  function(path) 
    {

  name <- stringr::str_to_upper(stringr::str_sub(path, -8, -5))

  rsa_df <- readr::read_fwf(path,
         readr::fwf_cols(Tag = 4,
                  Type = 3,
                  Chain = 2,
                  Number = 6,
                  Total_abs = 7,
                  Total_rel = 6,
                  Side_abs = 7,
                  Side_rel = 6,
                  Main_abs = 7,
                  Main_rel = 6,
                  Nonpolar_abs = 7,
                  Nonpolar_rel = 6,
                  Polar_abs = 7,
                  Polar_rel = 6),
         skip = 5)

  if(nrow(rsa_df) > 0) {

    end <- match("END", rsa_df$Tag)

    rsa_df %<>%
      head(end - 1) %>%
      dplyr::mutate(dplyr::across(c(Type:Number), as.character),
             dplyr::across(c(Total_abs:Polar_rel), as.double)) %>%
      dplyr::mutate(PDB = name) %>%
      dplyr::select(PDB, everything(), -Tag)

    return(rsa_df)

    }else{

      cat(path, "cannot be read\n")

      }
} 
