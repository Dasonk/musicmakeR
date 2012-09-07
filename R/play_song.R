#' Plays a song
#' 
#' A system independent way of playing a song made with make_song
#' 
#' @param song The output from make_song.  Any valid Wave object should
#' work though
#' 
#' @export
#' @examples
#' \dontrun{
#' song <- make_song(c("A5", "B5", "C5"))
#' play_song(song)
#' }
play_song <- function(song){
    # Actually play the song
    if(.Platform['OS.type'] == "windows"){
        play(song)
    }else{
        tmpfile <- if(exists("tmpfile")){tmpfile}else{tempfile(fileext = ".wav")}
        writeWave(song, file = tmpfile)
        com <- paste("xdg-open", tmpfile)
        system(com)
    }
}