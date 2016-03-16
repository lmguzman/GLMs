library('dplyr')
library('googlesheets')

## Import dataframe from google sheets

gs_ls()

ClassData<-gs_title('Class Data (Responses)')

#Separate the coordinates, Bromeliad number and site

Data <- gs_read(ClassData, ws='Form Responses 1', range='A1:F22', col_names=TRUE)

write.csv(Data, 'ClassData.csv')

