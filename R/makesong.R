#' Makes a song from a vector of notes/chords
#' 
#' Makes a song from a vector of notes/chords
#' 
#' @param songnotes A character vector containing valid notes and/or chords.
#' Currently these need to be of the form "3_A1.B2.C3"
#' @param baseduration The length (in seconds) each individual note should take.
#' If this is NULL it will check songnotes for a baseduration attribute and if 
#' present will use that.  If there is no attribute then it defaults to 1/4.
#' @export
#' @examples
#' song <- c("A5", "B5", "C5", "B5", "A5")
#' mysong <- makesong(song)
makesong <- function(songnotes, baseduration = NULL){
    if(is.null(baseduration)){
        # If there is a baseduration attribute then use that
        tmp <- attr(songnotes, "baseduration")
        if(!is.null(tmp)){
            baseduration <- tmp
        }else{
            # Default if nothing is specified and there isn't
            # a baseduration attribute
            baseduration <- 1/4
        }
    }
    # Turn the definition into Wave objects
    waves <- lapply(songnotes, convert_to_wave, duration = baseduration)
    # Smooth out the transitions
    smoothed_waves <- suppressWarnings(lapply(waves, prepComb))
    # Bind the Waves together
    song <- do.call("bind", smoothed_waves)
    song
}