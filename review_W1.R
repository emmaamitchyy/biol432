#review 


#Custom Functions: 
FunName<-function(){#what function does
  
}

#we want to create a random normal variable (100 number random distribution)
x <- rnorm(100)
mean(x)

#instead of 100, we can use N where N is user input
n <- 100
x<- rnorm(n)
mean(x)

#turn into function
FunName<-function(n=100){#what function does
  x <- rnorm(100)
  print(mean(x)) #return

}
FunName(n=1000)

#instead of print we can put return and it gives output of function

FunName<-function(n=100){#what function does
  x <- rnorm(100)
  return(mean(x)) #return
  
}
FunName(n=1000)

#return gives something back to user 

#no default
n<-NULL

#Graphical Concepts - Video 2
#vester based graphic: expanding coordinated, clean shape
#formats: SVG,PDF,EPS,AI,PS
#Raster based graphic: pixel based image - pixelated (makes it large) - avoid!
#formats: JPEG,PNG,TIFF,BMP
#can convert between vector to raster 

#images on screen vs printed - when printed light isnt projected properly. colours are lost

#don't use power point for publication

#ggplot grammar:
#data - info you want to plot
#geoms - geometric objects (lines, points, polygons)
#stats - statistical transformations applied to the data (eg binning for histograms)
#scale - sclaes of conversion from data to visual space (e.g. legend ranger and axis scale)
#coord - cordinate system of the graph (cartesian, polar,lat/long)
#facet - break up data into separate graphs 
#aes - aesthetic mapping describes how data is mapped(x, y, colour)
# theme - fine tune appearance (background, grid lines, text size)


#relative pathnames - video 3
read.csv("#pathname")

#reproducibility
#data science - real data using compsci and stats 

#involves: high volume, high velocity, high variety, veracity(inverse of acuracy)



























