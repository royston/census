#housing <- read.csv("T:/data/datasets/census/data/pums/ss13husa.csv")
#housingb <- read.csv("T:/data/datasets/census/data/pums/ss13husb.csv")
cols <- c('SCHL', #Educational attainment
          'SCHG', #Grade level attending
          'SEX',
          'SSP', #Social security income pas 12 monthsa
          'WAGP', #Wages or salary income past 12 months
          'WKL', #When last worked
          'ANC1P', #Recoded detailed ancestry - first entry
          'ANC2P', #Recoded detailed ancestry - second entry
          'FOD1P', #recoded field of degree - first entry
          'FOD2P', #recoded field of degree - second entry
          'JWAP', #time of arrival at work
          'JWDP', #time of departurn from work
          'JWTR', #Means of transportation to work
          'JWMNP', #Time of travel to work
          'NATIVITY',
          'OCCP', #occupation
          'PERNP', #total persons earnings
          'PINCP', #total persons incomes,
          'QTRBIR', #Quarter of brith
          'RAC1P', #recoded detailed race code'1
          'RAC2P', #recoded detailed race code'2
          'RAC3P', #recoded detailed race code' 3
          'PWGTP', #persons weight
          'AGEP' #Persons age
)


persons <- read.csv("T:/data/datasets/census/data/pums/ss13pusa.csv")
persons <- persons[,cols]
personsb <- read.csv("T:/data/datasets/census/data/pums/ss13pusb.csv")
personsb <- personsb[,cols]
#housing <- rbind(housing, housingb)
#rm(housingb)

persons <- rbind(persons, personsb)
rm(personsb)

library(dplyr)


#English speaking households

#mort <- housing[,c('MRGT', 'TEN', 'SMP', 'SMX', 'HINCP', 'GRNTP', 'FINCP', 'ST', 'GRPIP')]
#When moved into house
#number of own children
#income per child
