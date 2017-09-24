
R version 3.4.0 (2017-04-21) -- "You Stupid Darkness"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[Workspace loaded from C:/Users/ansann/Desktop/predictive analytics/MT cars hw/.RData]

> install.packages("leaflet")
Warning in install.packages :
  cannot open URL 'http://www.stats.ox.ac.uk/pub/RWin/src/contrib/PACKAGES.rds': HTTP status was '404 Not Found'
Installing package into ‘C:/Users/ansann/Documents/R/win-library/3.4’
(as ‘lib’ is unspecified)
Warning in install.packages :
  cannot open URL 'http://www.stats.ox.ac.uk/pub/RWin/bin/windows/contrib/3.4/PACKAGES.rds': HTTP status was '404 Not Found'
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.4/leaflet_1.1.0.zip'
Content type 'application/zip' length 2527773 bytes (2.4 MB)
downloaded 2.4 MB

package ‘leaflet’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\ansann\AppData\Local\Temp\1\Rtmpi2PhLo\downloaded_packages
> library(leaflet)
Warning message:
  package ‘leaflet’ was built under R version 3.4.1 
> my_map <- leaflet() %>%
  + addTiles()
> my_map
> library(leaflet)
> my_map <- my_map %>%
  + addMarkers(lat=39.2980803, lng=-76.5898801, popup="Professor's Office")
> my_map
> set.seed(2017-09-23)
> df <- data.frame(lat = runif(20, min = 39.2, max = 39.3), lng = runif(20, min = -76.6, max = /76.5))
Error: unexpected '/' in "df <- data.frame(lat = runif(20, min = 39.2, max = 39.3), lng = runif(20, min = -76.6, max = /"
> df <- data.frame(lat = runif(20, min = 39.2, max = 39.3), lng = runif(20, min = -76.6, max = -76.5))
> df %>%
  + leaflet() %>%
  + addTiles() %>%
  + addMarkers()
> 
  > df <- data.frame(lat = runif(20, min = 39.25, max = 39.35), lng = runif(20, min = -76.65, max = -76.55), col = sample(c("red", "blue", "green"), 20, replace = TRUE), stringsAsFactors = FALSE)
> df %>%
  + leaflet() %>%
  + addTiles() %>%
  + addCircleMarkers(color = df$col) %>%
  + addLegend(labels = LETTERS[1:3], colors = c("blue", "red", "green"))
Assuming 'lng' and 'lat' are longitude and latitude, respectively