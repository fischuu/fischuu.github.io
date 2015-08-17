---
title       : R and Google Visualization
subtitle    : Tampere University, 19 August 2015
author      : Daniel Fischer
job         : Natural Resources Institute Finland, Green Technology
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
license     : by-nc-sa
github      :
  user      : fischuu
  repo      : fischuu.github.io/presentations/RAndGoogleVisualization
             
---

## Motivation for googleVis

* Due to R's age some of its basic functions are not up-to-date anymore

* However, as R is modular, users keep developing new packages that improve the basic functionality

* One very popular R-library is [ggplot](http://http://ggplot2.org/), that was presented earlier today

* Google has also a large library for programmers that includes different types of algorithms and graphical presentations

* These google libraries can be access by programmers via standardized interfaces, so-called API's

* Some R-users have created now R-libraries that make the graphic functions provided by google easily accessible via R



--- 

## Overview of googleVis

* [googleVis](http://code.google.com/p/google-motion-charts-with-r/) is a package for [R](http://www.r-poject.org/) and provides an interface between R and the [Google Chart Tools](https://developers.google.com/chart/)

* The functions of the package allow users to visualise data with the Google Chart Tools without uploading their data to Google

* The output of googleVis functions is html code that contains the data and references to JavaScript functions hosted by Google

* To view the output a browser with an internet connection is required, the actual chart is rendered in the browser; some charts require Flash

* See also: **Using the Google Visualisation API with R**, 
  [The R Journal, 3(2):40-44, December 2011](http://journal.r-project.org/archive/2011-2/RJournal_2011-2_Gesmann+de~Castillo.pdf) and googleVis [package vignette](http://cran.r-project.org/web/packages/googleVis/vignettes/googleVis.pdf)

---

## Motion chart example


```r
library(googleVis)
worldBankData <- read.table("/home//ejo138/git//fischuu.github.io//presentations//RAndGoogleVisualization/worldBankData.Rda")
plot(gvisMotionChart(worldBankData, idvar="country.name", timevar="year", options=list(width=800, height=500)))
```
