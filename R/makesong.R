#' Makes a song from a vector of notes/chords
#' 
#' Makes a song from a vector of notes/chords
#' 
#' @param song_notes A character vector containing valid notes and/or chords.
#' Currently these need to be of the form "3_A1.B2.C3"
#' @param baseduration The length (in seconds) each individual note should take
#' @export
#' @examples
#' song <- c("A5", "B5", "C5", "B5", "A5")
#' mysong <- makesong(song)
makesong <- function(song_notes, baseduration = 1/4){
    # Turn the definition into Wave objects
    waves <- lapply(song_notes, convert_to_wave, duration = baseduration)
    # Smooth out the transitions
    smoothed_waves <- suppressWarnings(lapply(waves, prepComb))
    # Bind the Waves together
    song <- do.call("bind", smoothed_waves)
    song
}