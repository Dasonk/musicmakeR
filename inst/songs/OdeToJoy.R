
# Song Definition
baseduration <- 1/4
intro <- c("C4", "C4/G4", "C4/E4", "C4/G4", "C4", "C4/G4", "C4/E4", "C4/G4",
           "C4", "C4/G4", "C4/F4", "C4/G4", "C4", "C4/G4", "C4/F4", "C4/G4",
           "C4", "C4/G4", "C4/E4", "C4/G4", "C4", "C4/G4", "C4/E4", "C4/G4",
           "C4", "C4/G4", "C4/F4", "C4/G4", "C4", "C4/G4", "C4/F4", "C4/G4")
m1    <- c("C4/E5", "G4/E5", "E4/E5", "G4/E5", "C4/F5", "G4/F5", "E4/G5", "G4/G5",
           "B3/G5", "G4/G5", "E4/F5", "G4/F5", "B3/E5", "G4/E5", "D4/D5", "G4/D5",
           "A3/C5", "G4/C5", "E4/C5", "G4/C5", "A3/D5", "G4/D5", "E4/E5", "G4/E5",
           "G3/E5", "G4/E5", "D4/E5", "D4/D5", "G3/D5", "G4/D5", "D4/D5", "G4/D5")
m2    <- c("C4/E5", "G4/E5", "E4/E5", "G4/E5", "C4/F5", "G4/F5", "E4/G5", "G4/G5",
           "B3/G5", "G4/G5", "E4/F5", "G4/F5", "B3/E5", "G4/E5", "D4/D5", "G4/D5",
           "A3/C5", "G4/C5", "E4/C5", "G4/C5", "A3/D5", "G4/D5", "E4/E5", "G4/E5",
           "G3/D5", "G4/D5", "D4/D5", "D4/C5", "C4/C5", "G4/C5", "E4/C5", "G4/C5")
m3    <- c("B3/D5", "G4/D5", "D4/D5", "G4/D5", "C4/E5", "G4/E5", "E4/C5", "G4/C5",
           "B3/D5", "G4/D5", "G4/E5", "G4/F5", "C4/E5", "G4/E5", "E4/C5", "G4/C5",
           "B3/D5", "G4/D5", "G4/E5", "G4/F5", "E3/E5", "G#4/E5", "G#4/D5", "G#4/D5",
           "2_A3/E4/A5/C5", "2_F#3/D4/A4/D5", "4_G3/D4/G4")
m4    <- c("C4/E5", "G4/E5", "E4/E5", "G4/E5", "C4/F5", "G4/F5", "E4/G5", "G4/G5",
           "B3/G5", "G4/G5", "E4/F5", "G4/F5", "B3/E5", "G4/E5", "D4/D5", "G4/D5",
           "A3/C5", "G4/C5", "E4/C5", "G4/C5", "A3/D5", "G4/D5", "E4/E5", "G4/E5",
           "G3/D5", "G4/D5", "D4/D5", "D4/C5", "4_C4/E4/G4/C5")

odetojoy <- c(intro, m1, m2, m3, m4)
attr(odetojoy, "baseduration") <- baseduration
class(odetojoy) <- "songnotes"

save(odetojoy, file = "data/odetojoy.rda")

#song <- makesong(odetojoy, baseduration)
#playsong(song)
