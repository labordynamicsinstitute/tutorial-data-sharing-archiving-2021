####################################
# global libraries used everywhere #
####################################

#mran.date <- "2021-01-01"
#options(repos=paste0("https://cran.microsoft.com/snapshot/",mran.date,"/"))

options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/all/__linux__/focal/239"))

pkgTest <- function(x)
{
  if (!require(x,character.only = TRUE))
  {
    install.packages(x,dep=TRUE)
    if(!require(x,character.only = TRUE)) stop("Package not found")
  }
  return("OK")
}

pkgTest.github <- function(x,package=NA)
{
  if ( is.na(package) ) { package = strsplit(x,"/",fixed=TRUE)[[1]][2] } 
  if (!require(package,character.only = TRUE))
  {
    install_github(x)
    if(!require(package,character.only = TRUE)) stop(paste("Package ",package,"not found"))
  }
  return("OK")
}

# "data.table",
global.libraries <- c("dplyr","rmarkdown","ggplot2","ggthemes","knitr","devtools","diagram","DiagrammeR","DiagrammeRsvg","rjson", "tidyr","here","readxl")
github.libraries <- c("iqss/dataverse-client-r","hadley/emo")

results <- sapply(as.list(global.libraries), pkgTest)

#results <- sapply(as.list(github.libraries),pkgTest.github)
pkgTest.github("iqss/dataverse-client-r",package="dataverse")
pkgTest.github("hadley/emo")

# A utility function
png_digraph <- function(filename, code){
  capture.output({
    system(paste("dot -Tpng",code,"-Gdpi=100","-o",filename,sep=" "))
  },  file='NUL')
  knitr::include_graphics(filename)
}


# locations

basepath <- here::here()
dataloc <- file.path(basepath,"data")
workpath <- tempdir()

