\name{playsong}
\alias{playsong}
\title{Plays a song}
\usage{
  playsong(song)
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
playsong(song)
}
}

