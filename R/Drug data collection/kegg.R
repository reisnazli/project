source("https://bioconductor.org/biocLite.R")
biocLite("KEGGREST")

#load KEGGREST library
library(KEGGREST)
# list databases you can use
listDatabases()
#check the organism code
org <- keggList("organism")
#every entry for a particular organism (e.g hsa)
keggList("hsa")



setwd("C:/Users/nazli/Desktop/Drug_Datasource")
write.csv(org, file="keggdata.csv")
