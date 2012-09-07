\name{make_song}
\alias{make_song}
\title{Makes a song from a vector of notes/chords}
\usage{
  make_song(song_notes, baseduration)
}
\arguments{
  \item{song_notes}{A character vector containing valid
  notes and/or chords. Currently these need to be of the
  form "3_A1.B2.C3"}

  \item{baseduration}{The length (in seconds) each
  individual note should take}
}
\description{
  Makes a song from a vector of notes/chords
}
\examples{
song <- c("A5", "B5", "C5", "B5", "A5")
mysong <- make_song(song)
}

