---
title       : R and Google Visualization
subtitle    : 
author      : Daniel Fischer
job         : Natural Resources Institute Finland, Green Technology
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
---

## Read-And-Delete

1. Edit YAML front matter
2. Write using R Markdown
3. Use an empty line followed by three dashes to separate slides!

--- .class #id 

## Slide 2

---

## This is the next test!!!

sdfs  lkdsjfldskj f

s dlökjs ölkjsd öllkds j


sdl sdök jfösldkj ösldj

---
## A Simple Plot

 
 ```r
 require(ggplot2)
 qplot(wt, mpg, data = mtcars)
 ```
 
 <img src="assets/fig/simple-plot-1.png" title="plot of chunk simple-plot" alt="plot of chunk simple-plot" style="display: block; margin: auto;" />

---

## MotionPlot

 <!-- MotionChart generated in R 3.2.1 by googleVis 0.5.9 package -->
 <!-- Fri Aug 14 11:25:29 2015 -->
 
 
 <!-- jsHeader -->
 <script type="text/javascript">
  
 // jsData 
 function gvisDataMotionChartID199024cc93c1 () {
 var data = new google.visualization.DataTable();
 var datajson =
 [
  [
  "Apples",
 2008,
 "West",
 98,
 78,
 20,
 "2008-12-31" 
 ],
 [
  "Apples",
 2009,
 "West",
 111,
 79,
 32,
 "2009-12-31" 
 ],
 [
  "Apples",
 2010,
 "West",
 89,
 76,
 13,
 "2010-12-31" 
 ],
 [
  "Oranges",
 2008,
 "East",
 96,
 81,
 15,
 "2008-12-31" 
 ],
 [
  "Bananas",
 2008,
 "East",
 85,
 76,
 9,
 "2008-12-31" 
 ],
 [
  "Oranges",
 2009,
 "East",
 93,
 80,
 13,
 "2009-12-31" 
 ],
 [
  "Bananas",
 2009,
 "East",
 94,
 78,
 16,
 "2009-12-31" 
 ],
 [
  "Oranges",
 2010,
 "East",
 98,
 91,
 7,
 "2010-12-31" 
 ],
 [
  "Bananas",
 2010,
 "East",
 81,
 71,
 10,
 "2010-12-31" 
 ] 
 ];
 data.addColumn('string','Fruit');
 data.addColumn('number','Year');
 data.addColumn('string','Location');
 data.addColumn('number','Sales');
 data.addColumn('number','Expenses');
 data.addColumn('number','Profit');
 data.addColumn('string','Date');
 data.addRows(datajson);
 return(data);
 }
  
 // jsDrawChart
 function drawChartMotionChartID199024cc93c1() {
 var data = gvisDataMotionChartID199024cc93c1();
 var options = {};
 options["width"] =    600;
 options["height"] =    500;
 options["state"] = "";
 
     var chart = new google.visualization.MotionChart(
     document.getElementById('MotionChartID199024cc93c1')
     );
     chart.draw(data,options);
     
 
 }
   
  
 // jsDisplayChart
 (function() {
 var pkgs = window.__gvisPackages = window.__gvisPackages || [];
 var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
 var chartid = "motionchart";
   
 // Manually see if chartid is in pkgs (not all browsers support Array.indexOf)
 var i, newPackage = true;
 for (i = 0; newPackage && i < pkgs.length; i++) {
 if (pkgs[i] === chartid)
 newPackage = false;
 }
 if (newPackage)
   pkgs.push(chartid);
   
 // Add the drawChart function to the global list of callbacks
 callbacks.push(drawChartMotionChartID199024cc93c1);
 })();
 function displayChartMotionChartID199024cc93c1() {
   var pkgs = window.__gvisPackages = window.__gvisPackages || [];
   var callbacks = window.__gvisCallbacks = window.__gvisCallbacks || [];
   window.clearTimeout(window.__gvisLoad);
   // The timeout is set to 100 because otherwise the container div we are
   // targeting might not be part of the document yet
   window.__gvisLoad = setTimeout(function() {
   var pkgCount = pkgs.length;
   google.load("visualization", "1", { packages:pkgs, callback: function() {
   if (pkgCount != pkgs.length) {
   // Race condition where another setTimeout call snuck in after us; if
   // that call added a package, we must not shift its callback
   return;
 }
 while (callbacks.length > 0)
 callbacks.shift()();
 } });
 }, 100);
 }
  
 // jsFooter
 </script>
  
 <!-- jsChart -->  
 <script type="text/javascript" src="https://www.google.com/jsapi?callback=displayChartMotionChartID199024cc93c1"></script>
  
 <!-- divChart -->
   
 <div id="MotionChartID199024cc93c1" 
   style="width: 600; height: 500;">
 </div>


