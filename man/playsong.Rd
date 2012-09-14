\name{playsong}
\alias{playsong}
\title{Plays a song}
\usage{
  playsong(song)
}
\arguments{
  \item{song}{The output from make_song.  Any Wave object
  is valid input though.}
}
\description{
  A system independent way of playing a song made with
  make_song.  If a player for Wave files hasn't been set
  using setWavPlayer then the function tries to autodetect
  an appropriate player.
}
\section{Details}{
  The autodetection currently relies on xdg-mime.  If this
  is not on the system and a valid Wave player isn't set
  then a warning will occur.
}
\examples{
\dontrun{
song <- make_song(c("A5", "B5", "C5"))
playsong(song)
}
}

