---
title       : Introduction to R
subtitle    : 
author      : Daniel Fischer 
job         : Natural Resources Institute Finland, Green Technology
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, bootstrap, quiz]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
license     : by-nc-sa
github      :
  user      : fischuu
  repo      : fischuu.github.io/presentations/RAndGoogleVisualization
             
--- .segue .dark

## Introduction



---

## Overview

1. Introduction

2.

---

## History of R

* R was started by Ross Ihaka and Robert Gentleman (the ”R & R’s” of the University of Auckland) in 1992.

* R is an environment and language for data manipulation, calculation and graphical display.

* R is published under GNU licence. This means it is an open source program and is distributed for free.

* R can be seen as an implementation or dialect of the S language. S was developed by Becker and Chambers 1984.

* The origin of the name is not known anymore (although there are obvious possibilities...).

---

## Why to use R?

* It is _easy_. Compared to real programming languages, R has a simplified syntax that can be used without big learning efforts.

* It is _open source_. This means you can alter or check every piece of code (or hope at least that someone else does it...).

* It is _friendly_. Usually the mailing lists (”Rhelp”) or online discussion forums (e.g. 'StackOverflow') are fast, friendly and helpful.

* It is an _universal tool_. Usually there is a function in R for everything, or if there isn’t, soon there will be.

---

## Why not to use R?

* It is _difficult_. Compared to graphical-interface based tools like Excel a console might be shocking and repellent.

* It is _open source_. This means, you have to trust the functions are correct - but noone gives you a warranty for this. Use it on own risk!

* It is _hostile_. Mailing lists (”Rhelp”) or online discussion forums (e.g. 'StackOverflow') don’t like reocurring questions or questions showing no own efforts to solve a problem.

* It is _static_. These days the figures are too static compared to other, competing languages like Matlab. You hardly can interact with created figures.

* It is _slow_. Compared to real programming languages, R is slow (the price for being easy...), but C,C++ and other languages can be included into R programs to boost the speed.

---

## Where to get R?

* R is pre-compiled available for every common operating system, like Windows, Linux and Mac , and also for 32 and 64bit.

* It can be downloaded from the CRAN (”Comprehensive R Archive Network”) webpage: [http://cran.r-project.org] (http://cran.r-project.org).

* Usually there are 2-3 major updates per year.

* Linux user that use the apt package system, can include the CRAN server into it and receive those updates then automatically.

* On CRAN are also thousands of additional extensions (”packages”) available.

* The [Bioconductor] (https://www.bioconductor.org/) projects offers on top of that also hundreds of packages specialized for genomic data analysis.


---

## How does R look like?

![](assets/img/RStudio.png)

---

## How to use a console?

* The symbol that 'waits' for the input is usually the > sign.

* One usually types the command there and sends it to the interpreter by pressing the Return key.

* If a command line starts with + instead of > the interpreter expects further input.

* Common reason for this are still open parantheses or quotations.

* A history of the last commands is accesible using the arrow keys ↑↓.

* The console is case-sensitive.

---

## How to start?

![](assets/img/RStudio-highlighted.png)

---

## How to start?

![](assets/img/RStudio2.png)

---

## The script window

* Using the console is alright for simple commands, but as soon as you apply a sequence of commands it gets messy

* For larger projects (e.g. analysing datasets) it is much more convenient to write and run a _script_.

* This has the advantage that the commands can easily be stored, changed and distributed.

* It is much easier to keep the overview over the project.

* It is easier to prepare the script and run it then as whole.

* Copy+Paste for similar tasks

---

## Where to get help?

* For each function in R exists a help file, that can be accessed with `?`
  This means, in order to get the help for the function foo type `?foo` into the console.

* If you forgot a function name but have a wild guess how it was, the `apropos()` command is usefull.
  In order to check for all commands that contain the word ’test’ type `apropos("test")`.

* Of course Google is always a good place to search 

* A very helpful online ressource is also http://www.stackoverflow.com


---

## A typical workflow in R

1. Open the data with a (good...) text editor or Excel and inspect its properties:

  a. Is the first line a _header-line_?

  b. What is the separator between the columns?

2. Import the data to R

3. Apply some data transformation and calculate desired statistics

4. Visualize the results

5. Store all results

--- .segue .dark

## Import Data to R

---

## Working directory I

* The term ’working directory’ refers in R to the place on the hard drive, where R looks for files, stores Figures etc.

* All paths and filenames that are given relative to this specific location.

* Of course it is possible to check and change this location. 

* A typical workflow of a project is that in the beginning the working directory is set to the project folder on the hard drive.

* The command to check the working directory is `getwd()` and the one for setting it is `setwd()`.

---

## Working directory II

* An example how the working directory is extracted and set using windows:


```r
getwd()
> [1] "C:/Program Files/R/R-3.0.2"
setwd("C:/temp/")
getwd()
> [1] "C:/temp"
```

* The file system is a bit different in Linux, a typical path looks there like
/home/ejo123/myProjects.

---

## Import ASCII files I

* Datasets that are imported to R are typically given in ASCII format. .

* Other formats are possible, but I'd recommend to stay with ASCII/text files.

ASCII is a plain text format and common file extensions are .txt or .csv. Before reading
files into R it is advisable to open them first with a text editor in order to
check the properties of the files. One should focus especially on the
following things:

1. What is the column separator (Whitespace, comma, tab, etc.)?

2. Is the first line a data line or does it contain the variable names?

3. Are real numbers given with comma or point (e.g. is it 5,25 or 5.25)?

4. How is missing data encoded (e.g. NA, dot, whitespace)?

---

## Import ASCII files II

In order to read an ASCII file to R, we perform the following steps:

1. Set the working directory to the path where the data is located.

2. Check for above mentioned properties

3. Read the data and assign it to an object. The command is


```r
myData <- read.table(file="theData.txt", header=FALSE, sep="\t")
```

In this case the first line contained already data (If the first line are the
variable names, the option is `header=TRUE`) and the columns are
separated with TAB (\t is the so-called escape-seqence for TAB, other
separators are usually given as they are.)

---

## Import ASCII files III

Overview of important import options in `read.table()`:

* `sep` What is the column separator? Typical values are: `","`, `";"`, `" "`, `"\t"`

* `header` Logical, contains the first row variable names or not? Possible values:`TRUE`, `FALSE`

* `na.string` How are missing values encoded? Typical values: `NA`, `"."`

* `dec` What is used as decimal symbol?

* `as.is` Logical, shall R try to predict the ’right’ data format?

* `colclasses` Vector of predefined column classes.

* `stringsAsFactors` Logical, handle strings as factors?

---

## Import other files to R

Other file formats can also be imported to R, but it usually requires more
efforts.

There are functions that read, e.g. Excel tables, but it is not very
advisable to use them, as those data formats are usually proprietary and
hence developers cannot provide full functionality. The easiest way to
import an excel sheet to R is it to open it with Excel, save it as ASCII file
and procede as above mentioned.

Another way to import data is to connect directly to a MySQL database,
but this is above the scope of the course and will be discussed in an
advanced course.

---

## Example data

* You can download example data from here:
   [Titanic-data](https://raw.githubusercontent.com/fischuu/fischuu.github.io/master/lectures/IntroductionToR/data/titanic3.csv)
   [stressEcho](https://raw.githubusercontent.com/fischuu/fischuu.github.io/master/lectures/IntroductionToR/data/stressEcho.csv)

* Just Right-click, choose 'Save as' and store them on your HDD.

* These datasets we will use throughout the whole course to learn the different methods.

"Data obtained from [http://biostat.mc.vanderbilt.edu/DataSets] (http://biostat.mc.vanderbilt.edu/DataSets)".

---

## Titanic passenger information variables:

1. pclass (Passenger class)
2. survived (yes=1, no=0)
3. name 
4. sex (female/male)  	
5. age 
6. sibsp	(Number of Siblings/Spouses Aboard)
7. parch	(Number of Parents/Children Aboard)
8. ticket	(Ticket Number)		
9. fare	(Passenger Fare	British Pound)
10. cabin	(Cabin number)		

---

## Titanic passenger information variables (continued):

11. embarked	(S, Q, C=)
12. boat			
13. body	Body Identification Number		
14. home.dest	Home/Destination



---

## Stress echo data

1. bhr	Basal heart rate	(bpm) integer
2. basebp	Basal blood pressure	mmHg integer
3. basedp	Basal Double Product bhr TIMES basebp	 bpm TIMES mmHg	integer
4. pkhr	Peak heart rate	mmHg	integer
5. sbp	Systolic blood pressure	mmHg integer
6. dp	Double product pkhrTIMESsbp	bpm TIMES mmHg integer
7. dose	Dose of dobutamine given	mg	integer
8. maxhr	Maximum heart rate	bpm	integer
9. pctMphr	Percent maximum predicted heart rate achieved	%	integer
10. mbp	Maximum blood pressure	mmHg integer
11. dpmaxdo	Double product on max dobutamine dose	bpm TIMES mmHg integer
12. dobdose	Dobutamine dose at max double product	mg	integer
13. age	Age	years	integer

---

## Stress echo data (continued)

14. gender 2 integer
15. baseEF	Baseline cardiac ejection fraction	%	integer
16. dobEF	Ejection fraction on dobutamine	%	integer
17. chestpain	Chest pain		integer
18. restwma	Resting wall motion abnormality on echocardiogram		integer
19. posSE	Positive stress echocardiogram		integer
20. newMI	New myocardial infarction		integer
21. newPTCA	Recent angioplasty		integer
22. newCABG	Recent bypass surgery	integer
23. death			integer
24. hxofHT	History of hypertension		integer
25. hxofDM	History of diabetes		integer
26. hxofCig	History of smoking		3 integer

---

## Stress echo data (continued)

27. hxofMI	History of myocardial infarction		integer
28. hxofPTCA	History of angioplasty		integer
29. hxofCABG	History of coronary artery bypass surgery		integer
30. any.event	Death, newMI, newPTCA, or newCABG		integer
31. ecg	Baseline electrocardiogram diagnosis		3 integer


--- 

## Hands-on: Import the Example data

1. After having downloaded the titanic data, import it to R and name it `titanic`

2. After having downloaded the stress echo data, import it to R and name it `stress`



(If you have your own data, )

---

## Hint

1. Open the file in a text editor (NOT Word)

2. Check the first line, is a header present or not?

3. How are the different cells separated?

---

## Solution: Import the Titanic data


```r
setwd("/home/ejo138/Projects/lectures/IntroductionToR")
titanic <- read.table("titanic3.csv", sep=",", header=TRUE)
stress <- read.table("stressEcho.csv", sep=",", header=TRUE)
```


---

## The R workspace I

As already mentioned now several times, everything is considered to be an
object in R. These objects are living in the so-called workspace. The
workspace in R is comparable with a desk. The content of this
workspace/desk can be shown with the command


```r
ls()
```

```
[1] "stress"  "titanic"
```

The `ls()` command shows all active R objects, unneeded objects can be
removed via `rm()` command. Assuming we have an object foo we can
remove it be typing

```r
rm(foo)
```
and all objects of a workspace can removed by

```r
rm(list=ls())
```

---

## The R workspace II

One can store the entire workspace and restore it later on. For that are the
commands `save.image()` and the `load()`command available.
If one want to save a workspace the command is

```r
save.image(file="myRsession.RData")
```

and one can load it via


```r
load(file="myRsession.RData")
```

This is especially then usful when one works on different projects where the calculations
take a while and cannot be easily repeated.


