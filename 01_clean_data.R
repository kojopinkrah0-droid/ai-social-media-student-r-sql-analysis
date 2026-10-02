library(readr)
library(dplyr)
raw <- read_csv("data/raw/AI_SocialMedia_Student_Dataset.csv",show_col_types=FALSE)
students <- raw %>% distinct(Student_ID,.keep_all=TRUE) %>% mutate(
 Social_Media_Band=cut(Daily_Social_Media_Hours,c(-Inf,2,4,6,Inf),labels=c("0-2 hrs","2-4 hrs","4-6 hrs","6+ hrs")),
 AI_Usage_Band=cut(Daily_AI_Tool_Usage_Hours,c(-Inf,1,3,5,Inf),labels=c("0-1 hr","1-3 hrs","3-5 hrs","5+ hrs")),
 Sleep_Band=cut(Sleep_Hours,c(-Inf,6,8,Inf),labels=c("<6 hrs","6-8 hrs","8+ hrs")),
 Activity_Band=cut(Physical_Activity_Hours,c(-Inf,1,2,Inf),labels=c("<1 hr","1-2 hrs","2+ hrs")))
write_csv(students,"data/processed/student_wellbeing_clean.csv")
cat("Rows:",nrow(students)," Missing:",sum(is.na(students))," Duplicate IDs:",sum(duplicated(students$Student_ID)),"\n")
