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

pkgTest.github <- function(x,source=NA)
{
  if (!require(x,character.only = TRUE))
  {
    if ( is.na(source) ) { src = x } else { src = paste(source,x,sep="/") }
    install_github(src)
    if(!require(x,character.only = TRUE)) stop(paste("Package ",x,"not found"))
  }
  return("OK")
}

# "data.table",
global.libraries <- c("dplyr","devtools","rprojroot","rcrossref","tidyr",
                      "readxl","stringr","remotes","knitr","readr",
                      "purrr","xlsx","jsonlite","lubridate",
                       "ggplot2","haven","janitor","tictoc")
github.libraries <- c("iqss/dataverse-client-r")

results <- sapply(as.list(global.libraries), pkgTest)

#results <- sapply(as.list(github.libraries),pkgTest.github)
install_github(github.libraries)
