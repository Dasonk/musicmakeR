
# Song Definition
base_duration <- 1/3
intro  <- c("E6", "D#6", 
            "E6", "D#6", "E6",  "B5",  "D6",  "C6")
v1     <- c("A3/A5", "E4/A5",  "A4",  "C5",  "E5",  "A5",
            "E3/B5", "E4/B5",  "G#4", "E5",  "G#5", "B5",
            "A3/C6", "E4/C6",  "A4",  "E5",  "E6",  "D#6",
            "E6", "D#6", "E6",  "B5",  "D6",  "C6",
            "A3/A5", "E4/A5",  "A4",  "C5",  "E5",  "A5",
            "E3/B5", "E4/B5",  "G#4", "E5",  "C6",  "B5")
v1e1   <- c("A3/A5", "E4/A5",  "A4",  "rest", intro)
v1e2   <- c("A3/A5", "E4/A5",  "A4",  "B5",  "C6",  "D6")
v2     <- c("C4/E6", "G4/E6",  "C5/E6",  "G5",  "F6",  "E6",
            "G4/D6", "G4/D6",  "B4/D6",  "F5",  "E6",  "D6",
            "A3/C6", "E4/C6",  "A4/C6",  "E5",  "D6",  "C6",
            "E3/B5", "E4/B5",  "E5",  "E5",  "E6",  "E5",
            "E6", "E5",  "E6",  "D#6", "E6",  "D#6",
            "E6", "D#6", "E6",  "D#6", "E6",  "D#6",
            "E6", "D#6", "E6",  "B5",  "D6",  "C6",
            v1)
v2e1    <- c("A3/A5", "E4/A5",  "A4",  "B5",  "C6",  "D6")
v2e2    <- c("2_A3/A5")
fur_elise_notes <- c(intro, v1, v1e1, v1, v1e2, v2, v2e1, v2, v2e2)


song <- makesong(fur_elise_notes, base_duration)
playsong(song)
