
# Song Definition
base_duration <- 1/2
intro <- c("2_D4", "2_A3", "2_B3", "2_F#3", 
           "2_G3", "2_D3", "2_G3", "2_A3",
           "2_D4/F#5", "2_A3/E5", "2_B3/D5", "2_F#3/C#5", 
           "2_G3/B4", "2_D3/A4", "2_G3/B4", "2_A3/C#5",
           "2_D4/D5/F#5", "2_A3/C#5/E5", "2_B3/B4/D5", "2_F#3/A4/C#5", 
           "2_G3/G4/B4", "2_D3/F#4/A4", "2_G3/G4/B4", "2_A3/E4/C#5",
           "D4/D4", "D4/F#4", "A3/A4", "A3/G4", "B3/F#4", "B3/D4", "F#3/F#4", "F#3/E4", 
           "G3/D4", "G3/B3", "D3/D4", "D3/A4", "G3/G4", "G3/B4", "A3/A4", "A3/G4") 

canon_notes <- c(intro)

song <- makesong(canon_notes, base_duration)
playsong(song)
