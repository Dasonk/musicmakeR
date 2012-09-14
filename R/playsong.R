#' Plays a song
#' 
#' A system independent way of playing a song made with make_song.  If
#' a player for Wave files hasn't been set using setWavPlayer then the function
#' tries to autodetect an appropriate player.  
#' 
#' @section Details:
#' The autodetection currently relies on xdg-mime.  If this is not on the
#' system and a valid Wave player isn't set then a warning will occur.
#' 
#' @param song The output from make_song.  Any Wave object is valid
#' input though.
#' 
#' @export
#' @examples
#' \dontrun{
#' song <- make_song(c("A5", "B5", "C5"))
#' playsong(song)
#' }
playsong <- function(song){
    
    # Attempt to play song.  
    out <- play(song)
    
    # Success - exit the function
    if(out == 0){
        return(invisible())
    }
    
    # If song couldn't play...
    
    # Check if the system has xdg-mime
    j <- Sys.which("xdg-mime")
    # If xdg-mime is available then autodetect the player for wav files
    # and set the player to that
    if(j != ""){
        prog <- system("xdg-mime query default audio/x-wav", intern = TRUE)
        prog <- gsub(".desktop", "", prog, fixed = TRUE)
        prog.path <- Sys.which(prog)
        setWavPlayer(prog.path)
    }
    
    out <- play(song)
    if(out != 0){
        warning("Wave player is not currently set and autodetection failed\n",
                "Please set the desired player for Wave fles using the setWavPlayer function")
    }
}