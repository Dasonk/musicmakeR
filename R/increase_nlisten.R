#' Test to play with saving data
#' 
#' Test to play with saving data
#' @export
increase_nlisten <- function(){
    loc <- file.path(find.package("musicmakeR"), "extdata", "nlisten.rds")
    nlisten <- readRDS(loc)
    nlisten <- nlisten + 1
    saveRDS(nlisten, file = loc)
}

#' display nlisten
#' 
#' display nlisten
#' @export
display_nlisten <- function(){
    loc <- file.path(find.package("musicmakeR"), "extdata", "nlisten.rds")
    nlisten <- readRDS(loc)
    return(nlisten)
}