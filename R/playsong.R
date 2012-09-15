#' Plays a song
#' 
#' A system independent way of playing a song made with makesong.  If
#' a player for Wave files hasn't been set using setWavPlayer then the function
#' tries to autodetect an appropriate player.  
#' 
#' @section Details:
#' The autodetection currently relies on xdg-mime.  If this is not on the
#' system and a valid Wave player isn't set then a warning will occur.
#' 
#' @param song Either a character vector of class "songnotes" or a Wave object.
#' 
#' @export
#' @examples
#' \dontrun{
#' song <- makesong(c("A5", "B5", "C5"))
#' playsong(song)
#' }
playsong <- function(song){
    
    if(is(song, "songnotes")){
        song <- makesong(song)
    }
    
    # Attempt to play song.
    # If things don't work we'll ask for forgiveness later
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
        
        out <- play(song)
        # Success - exit the function
        if(out == 0){
            return(invisible())
        }
    }
    
    # Damn! Still hasn't worked.  Let's get a little more creative.
    
    # If on a mac (maybe)
    if(Sys.info()["sysname"] == "Darwin"){
        filename <- tempfile("tuneRtemp", fileext = ".wav")
        on.exit(unlink(filename))
        writeWave(song, filename)
        system(paste("open -a iTunes", filename))
        return(invisible())
    }
    
    # taken from play.Wave
#     filename <- "tuneRtemp.wav"
#     wd <- getwd()
#     setwd(tempdir())
#     on.exit({
#         unlink(filename)
#         setwd(wd)
#     })
#     writeWave(object, filename)
#     play(file.path(tempdir(), filename), player, ...)
    
    

    if(out != 0){
        warning("Wave player is not currently set and autodetection failed\n",
                "Please set the desired player for Wave fles using the setWavPlayer function")
    }
}