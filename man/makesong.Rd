\name{makesong}
\alias{makesong}
\title{Makes a song from a vector of notes/chords}
\usage{
  makesong(songnotes, baseduration = NULL)
}
\arguments{
  \item{songnotes}{A character vector containing valid
  notes and/or chords. Currently these need to be of the
  form "3_A1.B2.C3"}

  \item{baseduration}{The length (in seconds) each
  individual note should take. If this is NULL it will
  check songnotes for a baseduration attribute and if
  present will use that.  If there is no attribute then it
  defaults to 1/4.}
}
\description{
  Makes a song from a vector of notes/chords
}
\examples{
song <- c("A5", "B5", "C5", "B5", "A5")
mysong <- makesong(song)
}

