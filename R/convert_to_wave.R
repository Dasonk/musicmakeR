convert_to_wave <- function(note, duration = 1/4, wave = sine){
    # Check for a modified duration
    if(grepl("_", note, fixed = TRUE)){
        tmp <- strsplit(note, "_")[[1]]
        duration_modifier <- as.numeric(tmp[1])
        return(convert_to_wave(tmp[2], duration = duration*duration_modifier, wave = wave))
    }
    
    if(note == "rest"){
        return(silence(duration = duration, bit = 16, xunit = "time"))
    }
    
    # Check for chords - These have periods in them
    if(grepl(".", note, fixed = TRUE)){
        notes <- strsplit(note, "\\.")[[1]]
        waves <- lapply(notes, convert_to_wave, duration = duration, wave = wave)
        return(do.call(chord, waves))
    }
    # If just a single note...
    wave(freq[note], bit = 16, xunit = "time", duration = duration)
}