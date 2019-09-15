library(plyr)
#Download Bioassay files from PubChem website by one by
#setwd("~/zipped")
setwd("C:/Users/nazli/Desktop/BioAssayDB/zipped")

require(RCurl)
url = "ftp://ftp.ncbi.nlm.nih.gov/pubchem/Bioassay/CSV/Description/"
filenames = getURL(url, ftp.use.epsv = FALSE, dirlistonly = TRUE)
filenames <- strsplit(filenames, "\r\n")
filenames = unlist(filenames)
filenames

for (filename in filenames) {
  download.file(paste(url, filename, sep = ""), paste(getwd(), "/", filename, sep = ""))
}


######################## first unzip #################################################

#Unzip Bioassay file to the  directory
zipF <- list.files(pattern=".zip", full.names = T) 
ourDir<- "C:/Users/nazli/Desktop/BioAssayDB/unzipped"
sapply(zipF, unzip, exdir = ourDir) 

###############################################################
######## Acummulate the all files in one folder  ############
############################################

fname <- list.files(ourDir, full.names = T)

for (i in fname) {
  
  current.folder <- fname
  new.folder <- "C:/Users/nazli/Desktop/BioAssayDB/all"
  
  list.of.files <- list.files(current.folder,full.names = T)
  
  file.copy(list.of.files,new.folder)
}

########################################
library("R.utils")
setwd("C:/Users/nazli/Desktop/BioAssayDB/all")
zipF2 <- list.files(pattern=".gz") 

for (i in 1:length(zipF2)) {
  
  curr_fold <-zipF2

  gunzip(curr_fold[i],destname=gsub("[.]gz$","",curr_fold[i]),overwrite=FALSE,remove=TRUE, BFR.SIZE=1e+07)
  
}

