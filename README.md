
<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Travis-CI Build Status](https://travis-ci.org/mdsumner/ncload.svg?branch=master)](https://travis-ci.org/) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/mdsumner/ncload?branch=master&svg=true)](https://ci.appveyor.com/project/mdsumner/ncload) [![Coverage Status](https://img.shields.io/codecov/c/github/mdsumner/ncload/master.svg)](https://codecov.io/github/mdsumner/ncload?branch=master)

ncload
======

R doesn't seem to have a "just load it" function for NetCDF files.

Usage
-----

Load all the variables from a NetCDF file into the current session.

``` r
library(ncload)
file <- system.file("extdata", "S2008001.L3m_DAY_CHL_chl_ocx_9km.nc", package = "ncload")

nc_load(file)
#> Creating variable objects 'chl_ocx', 'palette'
#> Creating dimension-variable objects 'lat', 'lon'
ls()
#> [1] "chl_ocx" "file"    "lat"     "lon"     "palette"
dim(chl_ocx)
#> [1] 4320 2160
length(lon)
#> [1] 4320
```

Installation
------------

`ncload` is currently on Github only, so requires installation with `devtools`.

``` r
devtools::install_github("mdsumner/ncload")
```

TODO
----

-   check for useability with OpenDAP/Thredds
-   selectively load variables, options to avoid/select dimvals
-   etc.
