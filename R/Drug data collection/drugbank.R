library(XML)
#library(xml2)
#library(gdata)

#drug.name <- array(dim = 0)
# Define function to extract necessary data from each drug (= each main node)
#getDrug <- function(x, ...) {
  
  # name the current drug for easy reference
 # current_drug <- read_xml(toString.XMLNode(x));
  
  # extract properties related to drug
  #drug.name <- xml_text(xml_find_first(current_drug, './name'))
  
  # remove the current node from memory when finished with it
  #rm(x)
  
#}
# Use event-driven SAX parser to process the XML without requiring the full tree structure to be loaded into memory
# Call the function defined above
setwd("E:/Database_Drug/drugbank")
#xmlEventParse(file = "full_database.xml", handlers = NULL, trim = FALSE, branches = list(drug = getDrug))

########################################
## Import of DrugBank Annotation Data ##
########################################
## Function to import DrugBank xml to data.frame and store in SQLite database.
## Note, this functions needs some major speed improvements. Ideally,
## (1) Download
##     - download DrugBank xml file (https://www.drugbank.ca/releases/latest)
##     - name uncompressed file 'drugbank.xml'
## (2) Function to convert xml into dataframe and store in SQLite database.
#' 
#' ## into your current directory and rename as drugbank.xml
#' 
#' ## convert drugbank dabase (xml file) into dataframe: 
#' 
#' drugbank_dataframe <- dbxml2df(xmlfile="drugbank.xml", version="5.0.10")
#' }
dbxml2df <- function(xmlfile, version) {
  myxml <- xmlParse(file=xmlfile) 
  rootnode <- xmlRoot(myxml)
  rootsize <- xmlSize(rootnode)
  mycol <- c("drugbank-id", "name", "description", "cas-number", "unii", 
             "state", "groups", "general-references", "synthesis-reference",
             "indication", "pharmacodynamics", "mechanism-of-action", "toxicity", 
             "metabolism", "absorption", "half-life", "protein-binding",
             "route-of-elimination", "volume-of-distribution", "clearance",
             "classification", "salts", "synonyms", "products", "international-brands",
             "mixtures", "packagers", "manufacturers", "prices", "categories",
             "affected-organisms", "dosages", "atc-codes", "ahfs-codes", "pdb-entries",
             "fda-label", "msds", "patents", "food-interactions", "drug-interactions",
             "sequences", "experimental-properties", "external-identifiers", "external-links",
             "pathways", "reactions", "snp-effects", "snp-adverse-drug-reactions", "targets",
             "enzymes", "carriers", "transporters", "average-mass", "monoisotopic-mass", 
             "calculated-properties")
  ## (b) Extract corresponding data in loop and inject into preformatted data.frame 
  message("Extracting data for column names. This may take 20 minutes.")
  df <- as.data.frame(matrix(NA, nrow=rootsize, ncol=length(mycol), dimnames=list(1:rootsize, mycol)))
  for(i in 1:rootsize) {
    tmp <- xmlToDataFrame(rootnode[i], stringsAsFactors = FALSE, collectNames = FALSE)
    v <- as.character(tmp[1,]); names(v) <- colnames(tmp)
    df[i,] <- v[mycol]
  }
  message("Successfully convert DrugBank database (xml file) into dataframe.")
  return(df)
}
#' ## download the original drugbank database (http://www.drugbank.ca/releases/latest) (xml file) 
#' 
#' ## into your current directory, and rename as drugbank.xml
#' 
#' drugbank_dataframe = dbxml2df(xmlfile="drugbank.xml", version="5.0.10")
#' 
#' ## store the converted drugbank dataframe into SQLite database, 
#' 
#' ## The path of the generated SQLite database (drugbank_version.db) is 
#' 
#'  {system.file("extdata", package="drugbankR")}
#' 
#' df2SQLite(dbdf=drugbank_dataframe, version="5.0.10") # set version as version of xml file
#' }
df2SQLite <- function(dbdf, version){
  ext_path <- system.file("extdata", package="drugbankR")
  mydb <- dbConnect(SQLite(), paste0(ext_path,"/drugbank_",version,".db"))
  RSQLite::dbWriteTable(mydb, "dbdf", dbdf)
  dbDisconnect(mydb)
  message("Successfully store drugbank dataframe into SQLite database ", paste0("`drugbank_",version,".db`"), " and it under ", ext_path)
}

drugbank_dataframe <- dbxml2df(xmlfile="drugbank.xml", version="5.0.10")
write.csv(drugbank_dataframe, file="drugbank_full.csv")
