\name{play_song}
\alias{play_song}
\title{Plays a song}
\usage{
  play_song(song)
}
\arguments{
  \item{song}{The output from make_song.  Any valid Wave
  object should work though}
}
\description{
  A system independent way of playing a song made with
  make_song
}
\examples{
\dontrun{
song <- make_song(c("A5", "B5", "C5"))
play_song(song)
}
}

