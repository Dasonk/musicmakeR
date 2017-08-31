musicmakeR
==========

**Currently musicmakeR will install but is broken. I haven't had the time to look into fixing it and don't plan on doing that anytime in the near future 8/31/2017**

The `musicmakeR` package  provides an easy way to create music from within R. 
Currently only simple sine waves are used but chords can be created quite
easily as well.

## Installation

Currently there isn't a release on [CRAN](http://cran.r-project.org/).

You can, however, download the [zip ball](https://github.com/Dasonk/musicmakeR/zipball/master) or [tar ball](https://github.com/Dasonk/musicmakeR/tarball/master), decompress and run `R CMD INSTALL` on it, or use the **devtools** package to install the development version:

```r
## Make sure your current packages are up to date
update.packages()
## devtools is required
library(devtools)
install_github("musicmakeR", "Dasonk")
```

Note: Windows users need [Rtools](http://www.murdoch-sutherland.com/Rtools/) and [devtools](http://CRAN.R-project.org/package=devtools) to install this way.

## Using musicmakeR

Once you have `musicmakeR` installed if you want to test whether it works on your system you can try the following

```r
library(musicmakeR)

# odetojoy is a built in vector containing the notes/chords
# to play Beethoven's 'Ode to Joy'.  For more information see ?odetojoy
odetojoy.song <- makesong(odetojoy, baseduration = 1/4)

# Play the song
playsong(odetojoy.song)
```

If that plays "Ode to Joy" for you then you're all set and you can try to make your own music if you would like

```r
mynotes <- c("A5", "B5", "C5")
mysong <- makesong(mynotes)
playsong(mysong)
```
