musicmakeR
==========

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
