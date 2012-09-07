chord <- function(...){
    out <- list(...)[[1]]
    out@left <- rowSums(sapply(list(...), slot, name = "left"))
    out <- normalize(out, unit = as.character(out@bit))
    return(out)
}