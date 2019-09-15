require(XML)
require(plyr)

fileurl <- "C:/Users/nazli/Desktop/deneme/236.descr.xml"
doc <- xmlParse(fileurl,useInternalNodes = TRUE) ### xmlParse()- is to parse the xml content, the parsed content is stored into doc
doc

xL <- xmlToList(doc)

data <-ldply(xL, data.frame)
head(data)
rootnode <- xmlRoot(doc)
rootnode
child <- xmlChildren(rootnode)

write.csv(child,file = "deneme.txt")
################################################################
library(purrr)

txt <- "C:/Users/nazli/Desktop/deneme/236.descr.xml"
doc <- read_xml(txt)

xml_find_all(doc, ".//*[name()='hmmer3-match']") %>% 
  map(xml_find_all, ".//*[name()='signature']") -> sig
sig

hmmer <- xml_find_all(doc, ".//*[name()='hmmer3-match']")
sig <- lapply(hmmer, xml_find_all, ".//*[name()='signature']")
sig

hmmer <- xml_find_all(doc, ".//*[name()='hmmer3-match']")
sig <- list()
for (i in 1:length(hmmer)) {
  sig_match <- xml_find_all(hmmer[[i]], ".//*[name()='signature']")
  sig <- c(sig, sig_match)
}
sig

