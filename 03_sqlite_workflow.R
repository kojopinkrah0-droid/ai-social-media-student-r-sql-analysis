library(DBI)
library(RSQLite)
library(readr)
s <- read_csv("data/processed/student_wellbeing_clean.csv",show_col_types=FALSE)
con <- dbConnect(SQLite(),"data/student_wellbeing_from_r.sqlite")
dbWriteTable(con,"students",s,overwrite=TRUE)
for(f in list.files("sql",pattern="\\.sql$",full.names=TRUE)){
 q <- paste(readLines(f,warn=FALSE),collapse="\n")
 write_csv(dbGetQuery(con,q),file.path("results",paste0("r_",sub("\\.sql$",".csv",basename(f)))))
}
dbDisconnect(con)
