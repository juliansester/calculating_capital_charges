#########################################
###### PROJECT: CONCENTRATION RISK ######
#########################################
###### AUTHOR: JULIAN SESTER ############
###### UNIVERSITY OF FREIBURG ###########
###### VERSION: 03/15/2017    ###########
#########################################


################
# Morone Setting
################

morone1<-list(s=10, # Setting number of different obligors
              sec=3, # Setting number of different sectors
              EAD=c(500,1000,1700,2000,1800,1100,900,600,300,100), # Exposure at Default
              LGD=rep(0.45,10), # Loss given Default
              PD=c(0.0001,0.0002,0.0005,0.001,0.0025,0.007,0.017,0.045,0.12,0.3), # Probability of Default
              r=c(0.65,0.63,0.61,0.59,0.57,0.55,0.53,0.51,0.49,0.47), # coefficients r_c
              sector=c(1,1,1,2,2,2,3,3,3,3), # Assigning the sector
              a_c=c(0.52,0.5,0.48,0.45,0.43,0.42,0.48,0.46,0.44,0.42),# coefficients a_c
              inv_HHI=c(20,200,250,300,250,180,100,80,60,40), # 1/HHI_c effective number of counterparties
              a=t(chol(matrix(c(1,0.8,0.55,0.8,1,0.4,0.55,0.4,1),ncol=3))) # Correlations among sectors
              )

morone2<-list(s=10, # Setting number of different obligors
              sec=3, # Setting number of different sectors
              EAD=c(500,1000,1700,2000,1800,1100,900,600,300,100), # Exposure at Default
              LGD=rep(0.45,10), # Loss given Default
              PD=c(0.0001,0.0002,0.0005,0.001,0.0025,0.007,0.017,0.045,0.12,0.3), # Probability of Default
              r=c(0.65,0.63,0.61,0.59,0.57,0.55,0.53,0.51,0.49,0.47), # coefficients r_c
              sector=c(1,1,1,2,2,2,3,3,3,3), # Assigning the sector
              a_c=c(0.52,0.5,0.48,0.45,0.43,0.42,0.48,0.46,0.44,0.42),# coefficients a_c
              inv_HHI=c(1,30,50,30,20,100,40,10,5,1),# 1/HHI_c effective number of counterparties
              a=t(chol(matrix(c(1,0.8,0.55,0.8,1,0.4,0.55,0.4,1),ncol=3))) # Correlations among sectors
              )
morone3<-list(s=10, # Setting number of different obligors
              sec=3, # Setting number of different sectors
              EAD=c(500,1000,1700,2000,1800,1100,900,600,300,100), # Exposure at Default
              LGD=rep(0.45,10), # Loss given Default
              PD=c(0.0001,0.0002,0.0005,0.001,0.0025,0.007,0.017,0.045,0.12,0.3), # Probability of Default
              r=c(0.65,0.63,0.61,0.59,0.57,0.55,0.53,0.51,0.49,0.47), # coefficients r_c
              sector=c(1,1,1,1,1,1,2,3,3,3), # Assigning the sector
              a_c=c(0.6,0.58,0.56,0.54,0.52,0.51,0.42,0.42,0.4,0.38),# coefficients a_c
              inv_HHI=c(20,200,250,300,250,180,100,80,60,40),# 1/HHI_c effective number of counterparties
              a=t(chol(matrix(c(1,0.8,0.55,0.8,1,0.4,0.55,0.4,1),ncol=3))) # Correlations among sectors
              )
morone4<-list(s=10, # Setting number of different obligors
              sec=3, # Setting number of different sectors
              EAD=c(500,1000,1700,2000,1800,1100,900,600,300,100), # Exposure at Default
              LGD=rep(0.45,10), # Loss given Default
              PD=c(0.0001,0.0002,0.0005,0.001,0.0025,0.007,0.017,0.045,0.12,0.3), # Probability of Default
              r=c(0.65,0.63,0.61,0.59,0.57,0.55,0.53,0.51,0.49,0.47), # coefficients r_c
              sector=c(1,1,1,1,1,1,2,3,3,3), # Assigning the sector
              a_c=c(0.6,0.58,0.56,0.54,0.52,0.51,0.42,0.42,0.4,0.38),# coefficients a_c
              inv_HHI=c(1,30,50,30,20,100,40,10,5,1),# 1/HHI_c effective number of counterparties
              a=t(chol(matrix(c(1,0.8,0.55,0.8,1,0.4,0.55,0.4,1),ncol=3))) # Correlations among sectors
              )

####################
# Düllmann Setting #
####################
benchmark1<-list(s=11,
                  sec=11,
                  EAD=c(11,361,692,2020,429,898,389,545,192,63,400)*1000, # Combination of Table 1 and Table 2
                  LGD=rep(0.45,11),
                  PD=rep(0.02,11),
                  r=rep(0.5,11),
                  sector=1:11,
                  inv_HHI=c(11,361,692,2020,429,898,389,545,192,63,400),
                  a=t(chol(matrix(c(1,0.5,0.42,0.34,0.45,0.46,0.57,0.34,0.1,0.31,0.69,
                  0.5,1,0.87,0.61,0.75,0.84,0.62,0.3,0.56,0.73,0.66,
                  0.42,0.87,1,0.67,0.83,0.92,0.65,0.32,0.69,0.82,0.66,
                  0.34,0.61,0.67,1,0.58,0.68,0.4,0.08,0.5,0.6,0.37,
                  0.45,0.75,0.83,0.58,1,0.83,0.68,0.27,0.58,0.77,0.67,
                  0.46,0.84,0.92,0.68,0.83,1,0.76,0.21,0.69,0.81,0.66,
                  0.57,0.62,0.65,0.4,0.68,0.76,1,0.33,0.46,0.56,0.66,
                  0.34,0.3,0.32,0.08,0.27,0.21,0.33,1,0.15,0.24,0.46,
                  0.1,0.56,0.69,0.5,0.58,0.69,0.46,0.15,1,0.75,0.42,
                  0.31,0.73,0.82,0.6,0.77,0.81,0.56,0.24,0.75,1,0.62,
                  0.69,0.66,0.66,0.37,0.67,0.66,0.66,0.46,0.42,0.62,1),ncol=11))) # Correlations among sectors from MSCI
                  )
duellmann1<-list(s=11,
                  sec=11,
                  EAD=c(0.001,4,41,22,5,10,4,6,2,1,4)*(100/(sum(c(0.001,4,41,22,5,10,4,6,2,1,4))))*60000, # Combination of Table 1 and Table 2
                  LGD=rep(0.45,11),
                  PD=rep(0.02,11),
                  r=rep(0.5,11),
                  sector=1:11,
                  inv_HHI=(c(0.001,4,41,22,5,10,4,6,2,1,4)*(100/(sum(c(0.001,4,41,22,5,10,4,6,2,1,4))))*60000)/1000,
                  a=t(chol(matrix(c(1,0.5,0.42,0.34,0.45,0.46,0.57,0.34,0.1,0.31,0.69,
                                   0.5,1,0.87,0.61,0.75,0.84,0.62,0.3,0.56,0.73,0.66,
                                   0.42,0.87,1,0.67,0.83,0.92,0.65,0.32,0.69,0.82,0.66,
                                   0.34,0.61,0.67,1,0.58,0.68,0.4,0.08,0.5,0.6,0.37,
                                   0.45,0.75,0.83,0.58,1,0.83,0.68,0.27,0.58,0.77,0.67,
                                   0.46,0.84,0.92,0.68,0.83,1,0.76,0.21,0.69,0.81,0.66,
                                   0.57,0.62,0.65,0.4,0.68,0.76,1,0.33,0.46,0.56,0.66,
                                   0.34,0.3,0.32,0.08,0.27,0.21,0.33,1,0.15,0.24,0.46,
                                   0.1,0.56,0.69,0.5,0.58,0.69,0.46,0.15,1,0.75,0.42,
                                   0.31,0.73,0.82,0.6,0.77,0.81,0.56,0.24,0.75,1,0.62,
                                   0.69,0.66,0.66,0.37,0.67,0.66,0.66,0.46,0.42,0.62,1),ncol=11))) # Correlations among sectors from MSCI
)
duellmann2<-list(s=11,
                 sec=11,
                 EAD=c(0.001,3,56,17,4,7,3,5,2,1,3)*(100/(sum(c(0.001,3,56,17,4,7,3,5,2,1,3))))*60000, # Combination of Table 1 and Table 2
                 LGD=rep(0.45,11),
                 PD=rep(0.02,11),
                 r=rep(0.5,11),
                 sector=1:11,
                 inv_HHI=duellmann1$EAD/1000,
                 a=t(chol(matrix(c(1,0.5,0.42,0.34,0.45,0.46,0.57,0.34,0.1,0.31,0.69,
                                   0.5,1,0.87,0.61,0.75,0.84,0.62,0.3,0.56,0.73,0.66,
                                   0.42,0.87,1,0.67,0.83,0.92,0.65,0.32,0.69,0.82,0.66,
                                   0.34,0.61,0.67,1,0.58,0.68,0.4,0.08,0.5,0.6,0.37,
                                   0.45,0.75,0.83,0.58,1,0.83,0.68,0.27,0.58,0.77,0.67,
                                   0.46,0.84,0.92,0.68,0.83,1,0.76,0.21,0.69,0.81,0.66,
                                   0.57,0.62,0.65,0.4,0.68,0.76,1,0.33,0.46,0.56,0.66,
                                   0.34,0.3,0.32,0.08,0.27,0.21,0.33,1,0.15,0.24,0.46,
                                   0.1,0.56,0.69,0.5,0.58,0.69,0.46,0.15,1,0.75,0.42,
                                   0.31,0.73,0.82,0.6,0.77,0.81,0.56,0.24,0.75,1,0.62,
                                   0.69,0.66,0.66,0.37,0.67,0.66,0.66,0.46,0.42,0.62,1),ncol=11))) # Correlations among sectors from MSCI
)
duellmann3<-list(s=11,
                 sec=11,
                 EAD=c(0.001,2,71,11,2,5,2,3,1,0.001,2)*(100/(sum(c(0.001,2,71,11,2,5,2,3,1,0.001,2))))*60000, # Combination of Table 1 and Table 2
                 LGD=rep(0.45,11),
                 PD=rep(0.02,11),
                 r=rep(0.5,11),
                 sector=1:11,
                 inv_HHI=duellmann2$EAD/1000,
                 a=t(chol(matrix(c(1,0.5,0.42,0.34,0.45,0.46,0.57,0.34,0.1,0.31,0.69,
                                   0.5,1,0.87,0.61,0.75,0.84,0.62,0.3,0.56,0.73,0.66,
                                   0.42,0.87,1,0.67,0.83,0.92,0.65,0.32,0.69,0.82,0.66,
                                   0.34,0.61,0.67,1,0.58,0.68,0.4,0.08,0.5,0.6,0.37,
                                   0.45,0.75,0.83,0.58,1,0.83,0.68,0.27,0.58,0.77,0.67,
                                   0.46,0.84,0.92,0.68,0.83,1,0.76,0.21,0.69,0.81,0.66,
                                   0.57,0.62,0.65,0.4,0.68,0.76,1,0.33,0.46,0.56,0.66,
                                   0.34,0.3,0.32,0.08,0.27,0.21,0.33,1,0.15,0.24,0.46,
                                   0.1,0.56,0.69,0.5,0.58,0.69,0.46,0.15,1,0.75,0.42,
                                   0.31,0.73,0.82,0.6,0.77,0.81,0.56,0.24,0.75,1,0.62,
                                   0.69,0.66,0.66,0.37,0.67,0.66,0.66,0.46,0.42,0.62,1),ncol=11))) # Correlations among sectors from MSCI
)
duellmann4<-list(s=11,
                 sec=11,
                 EAD=c(0.001,2,78,8,2,4,2,2,1,0.001,2)*(100/(sum(c(0.001,2,78,8,2,4,2,2,1,0.001,2))))*60000, # Combination of Table 1 and Table 2
                 LGD=rep(0.45,11),
                 PD=rep(0.02,11),
                 r=rep(0.5,11),
                 sector=1:11,
                 inv_HHI=duellmann3$EAD/1000,
                 a=t(chol(matrix(c(1,0.5,0.42,0.34,0.45,0.46,0.57,0.34,0.1,0.31,0.69,
                                   0.5,1,0.87,0.61,0.75,0.84,0.62,0.3,0.56,0.73,0.66,
                                   0.42,0.87,1,0.67,0.83,0.92,0.65,0.32,0.69,0.82,0.66,
                                   0.34,0.61,0.67,1,0.58,0.68,0.4,0.08,0.5,0.6,0.37,
                                   0.45,0.75,0.83,0.58,1,0.83,0.68,0.27,0.58,0.77,0.67,
                                   0.46,0.84,0.92,0.68,0.83,1,0.76,0.21,0.69,0.81,0.66,
                                   0.57,0.62,0.65,0.4,0.68,0.76,1,0.33,0.46,0.56,0.66,
                                   0.34,0.3,0.32,0.08,0.27,0.21,0.33,1,0.15,0.24,0.46,
                                   0.1,0.56,0.69,0.5,0.58,0.69,0.46,0.15,1,0.75,0.42,
                                   0.31,0.73,0.82,0.6,0.77,0.81,0.56,0.24,0.75,1,0.62,
                                   0.69,0.66,0.66,0.37,0.67,0.66,0.66,0.46,0.42,0.62,1),ncol=11))) # Correlations among sectors from MSCI
)

duellmann5<-list(s=11,
                 sec=11,
                 EAD=c(0.001,1,82,7,1,3,1,2,1,0.001,1)*(100/(sum(c(0.001,1,82,7,1,3,1,2,1,0.001,1))))*60000, # Combination of Table 1 and Table 2
                 LGD=rep(0.45,11),
                 PD=rep(0.02,11),
                 r=rep(0.5,11),
                 sector=1:11,
                 inv_HHI=duellmann4$EAD/1000,
                 a=t(chol(matrix(c(1,0.5,0.42,0.34,0.45,0.46,0.57,0.34,0.1,0.31,0.69,
                                   0.5,1,0.87,0.61,0.75,0.84,0.62,0.3,0.56,0.73,0.66,
                                   0.42,0.87,1,0.67,0.83,0.92,0.65,0.32,0.69,0.82,0.66,
                                   0.34,0.61,0.67,1,0.58,0.68,0.4,0.08,0.5,0.6,0.37,
                                   0.45,0.75,0.83,0.58,1,0.83,0.68,0.27,0.58,0.77,0.67,
                                   0.46,0.84,0.92,0.68,0.83,1,0.76,0.21,0.69,0.81,0.66,
                                   0.57,0.62,0.65,0.4,0.68,0.76,1,0.33,0.46,0.56,0.66,
                                   0.34,0.3,0.32,0.08,0.27,0.21,0.33,1,0.15,0.24,0.46,
                                   0.1,0.56,0.69,0.5,0.58,0.69,0.46,0.15,1,0.75,0.42,
                                   0.31,0.73,0.82,0.6,0.77,0.81,0.56,0.24,0.75,1,0.62,
                                   0.69,0.66,0.66,0.37,0.67,0.66,0.66,0.46,0.42,0.62,1),ncol=11))) # Correlations among sectors from MSCI
)

duellmann6<-list(s=11,
                 sec=11,
                 EAD=c(0.001,0.001,100,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001)*(100/(sum(c(0.001,0.001,100,0.001,0.001,0.001,0.001,0.001,0.001,0.001,0.001))))*60000, # Combination of Table 1 and Table 2
                 LGD=rep(0.45,11),
                 PD=rep(0.02,11),
                 r=rep(0.5,11),
                 sector=1:11,
                 inv_HHI=duellmann5$EAD/1000,
                 a=t(chol(matrix(c(1,0.5,0.42,0.34,0.45,0.46,0.57,0.34,0.1,0.31,0.69,
                                   0.5,1,0.87,0.61,0.75,0.84,0.62,0.3,0.56,0.73,0.66,
                                   0.42,0.87,1,0.67,0.83,0.92,0.65,0.32,0.69,0.82,0.66,
                                   0.34,0.61,0.67,1,0.58,0.68,0.4,0.08,0.5,0.6,0.37,
                                   0.45,0.75,0.83,0.58,1,0.83,0.68,0.27,0.58,0.77,0.67,
                                   0.46,0.84,0.92,0.68,0.83,1,0.76,0.21,0.69,0.81,0.66,
                                   0.57,0.62,0.65,0.4,0.68,0.76,1,0.33,0.46,0.56,0.66,
                                   0.34,0.3,0.32,0.08,0.27,0.21,0.33,1,0.15,0.24,0.46,
                                   0.1,0.56,0.69,0.5,0.58,0.69,0.46,0.15,1,0.75,0.42,
                                   0.31,0.73,0.82,0.6,0.77,0.81,0.56,0.24,0.75,1,0.62,
                                   0.69,0.66,0.66,0.37,0.67,0.66,0.66,0.46,0.42,0.62,1),ncol=11))) # Correlations among sectors from MSCI
)



####################
# Test Setting #
####################

test1<-list(s=2, # Setting number of different obligors
              sec=2, # Setting number of different sectors
              EAD=c(100,10000), # Exposure at Default
              LGD=c(0.5,0.5), # Loss given Default
              PD=c(0.02,0.02), # Probability of Default
              r=c(0.5,0.5), # coefficients r_c
              sector=c(1,2), # Assigning the sector
              a_c=c(0.3,0.5),# coefficients a_c
              inv_HHI=c(50,50),# 1/HHI_c effective number of counterparties
              a=t(chol(matrix(c(1,0.6,0.6,1),ncol=2))) # Correlations among sectors
)

test2<-list(s=2, # Setting number of different obligors
            sec=2, # Setting number of different sectors
            EAD=c(500,10000), # Exposure at Default
            LGD=c(0.5,0.5), # Loss given Default
            PD=c(0.02,0.02), # Probability of Default
            r=c(0.5,0.5), # coefficients r_c
            sector=c(1,2), # Assigning the sector
            a_c=c(0.3,0.5),
            inv_HHI=c(50,50),# 1/HHI_c effective number of counterparties
            a=t(chol(matrix(c(1,0.6,0.6,1),ncol=2))) # Correlations among sectors
)

test3<-list(s=2, # Setting number of different obligors
            sec=2, # Setting number of different sectors
            EAD=c(1000,10000), # Exposure at Default
            LGD=c(0.5,0.5), # Loss given Default
            PD=c(0.02,0.02), # Probability of Default
            r=c(0.5,0.5), # coefficients r_c
            sector=c(1,2), # Assigning the sector
            a_c=c(0.3,0.5),# coefficients a_c
            inv_HHI=c(50,50),# 1/HHI_c effective number of counterparties
            a=t(chol(matrix(c(1,0.6,0.6,1),ncol=2))) # Correlations among sectors
)

test4<-list(s=2, # Setting number of different obligors
            sec=2, # Setting number of different sectors
            EAD=c(2500,10000), # Exposure at Default
            LGD=c(0.5,0.5), # Loss given Default
            PD=c(0.02,0.02), # Probability of Default
            r=c(0.5,0.5), # coefficients r_c
            sector=c(1,2), # Assigning the sector
            a_c=c(0.3,0.5),# coefficients a_c
            inv_HHI=c(50,50),# 1/HHI_c effective number of counterparties
            a=t(chol(matrix(c(1,0.6,0.6,1),ncol=2))) # Correlations among sectors
)

test5<-list(s=2, # Setting number of different obligors
            sec=2, # Setting number of different sectors
            EAD=c(5000,10000), # Exposure at Default
            LGD=c(0.5,0.5), # Loss given Default
            PD=c(0.02,0.02), # Probability of Default
            r=c(0.5,0.5), # coefficients r_c
            sector=c(1,2), # Assigning the sector
            a_c=c(0.3,0.5),# coefficients a_c
            inv_HHI=c(50,50),# 1/HHI_c effective number of counterparties
            a=t(chol(matrix(c(1,0.6,0.6,1),ncol=2))) # Correlations among sectors
)

test6<-list(s=2, # Setting number of different obligors
            sec=2, # Setting number of different sectors
            EAD=c(10000,10000), # Exposure at Default
            LGD=c(0.5,0.5), # Loss given Default
            PD=c(0.02,0.02), # Probability of Default
            r=c(0.5,0.5), # coefficients r_c
            sector=c(1,2), # Assigning the sector
            a_c=c(0.3,0.5),# coefficients a_c
            inv_HHI=c(50,50),# 1/HHI_c effective number of counterparties
            a=t(chol(matrix(c(1,0.6,0.6,1),ncol=2))) # Correlations among sectors
)



###############################################
########## MONTE CARLO SIMULATION ############################################################
###############################################

montecarlo<-function(MC_numb=10000,portfolio=morone1,alpha=0.999,sim=T){
  L_S_BAR_1<-numeric(MC_numb) # Setting the initial  loss to zero - Sector 1.
  L_S_BAR_2<-numeric(MC_numb) # Setting the initial  loss to zero - Sector 2.
  L_S_BAR_3<-numeric(MC_numb) # Setting the initial  loss to zero - Sector 3.
  Y<-numeric(portfolio$sec) # Setting initial sector risks to zero.
  X<-matrix(rep(0,portfolio$s*max(portfolio$inv_HHI)),nrow=portfolio$s)
  X_sum<-numeric(portfolio$s)
  in_sbar1<- (portfolio$sector!=1) # indicates whether in S_bar or not
  in_sbar2<- (portfolio$sector!=2)
  in_sbar3<- (portfolio$sector!=3)
  
  #Simulation
  if (sim==T){
    L<-numeric(MC_numb) # Setting the initial  loss to zero.
    L_S1<-numeric(MC_numb) # Setting the initial  loss to zero.
    L_S2<-numeric(MC_numb) # Setting the initial  loss to zero.
    L_S3<-numeric(MC_numb) # Setting the initial  loss to zero.
  for(i in 1:MC_numb){
    print(round((i/MC_numb)*100,2))
    Z<-rnorm(portfolio$sec)
    for(k in 1:portfolio$sec){
      Y[k]<-sum(portfolio$a[k,]*Z)
    } # 'sec' standard-normal distributed risk-drivers. New generated in each scenario.
    for(k in 1:portfolio$s){
      for(l in 1:portfolio$inv_HHI[k]){
        X[k,l]<-portfolio$r[k]*Y[portfolio$sector[k]]+sqrt(1-portfolio$r[k]^2)*rnorm(1)
      }
    } 
    for(k in 1:portfolio$s){
      X_sum[k]<-sum(X[k,]<qnorm(portfolio$PD[k])) # summing the number of losses in each cluster
    }
    # Assigning the losses
    L_S1[i]<-sum(portfolio$EAD*portfolio$LGD*(1-in_sbar1)*(1/portfolio$inv_HHI)*X_sum)  # Loss of S_BAR
    L_S2[i]<-sum(portfolio$EAD*portfolio$LGD*(1-in_sbar2)*(1/portfolio$inv_HHI)*X_sum)  # Loss of S_BAR
    L_S3[i]<-sum(portfolio$EAD*portfolio$LGD*(1-in_sbar3)*(1/portfolio$inv_HHI)*X_sum)  # Loss of S_BAR      
    L[i]<-sum(portfolio$EAD*portfolio$LGD*(1/portfolio$inv_HHI)*X_sum) # total loss
  }
  }
  

  
  #Assigning Summed Losses and Quantiles
  L_S_BAR_1<-L-L_S1 # Loss in S
  L_S_BAR_2<-L-L_S2 # Loss in S
  L_S_BAR_3<-L-L_S3 # Loss in S
  E_LOSS_S_BAR_1<-sum(L_S_BAR_1)/(MC_numb) # Expected Loss of S_BAR with Monte Carlo Simulation
  E_LOSS_S_BAR_2<-sum(L_S_BAR_2)/(MC_numb) # Expected Loss of S_BAR with Monte Carlo Simulation
  E_LOSS_S_BAR_3<-sum(L_S_BAR_3)/(MC_numb) # Expected Loss of S_BAR with Monte Carlo Simulation
  E_LOSS_S_1<-sum(L_S1)/(MC_numb) # Expected Loss of S with Monte Carlo Simulation
  E_LOSS_S_2<-sum(L_S2)/(MC_numb) # Expected Loss of S with Monte Carlo Simulation
  E_LOSS_S_3<-sum(L_S3)/(MC_numb) # Expected Loss of S with Monte Carlo Simulation
  E_LOSS<-E_LOSS_S_1+E_LOSS_S_BAR_1 # Expected Overall Loss
  QUANT<-quantile(L,prob=alpha,names=FALSE) # Overall Quantile
  S_BAR_QUANT_1<-quantile(L_S_BAR_1,prob=alpha,names=FALSE) # Alpha Quantile for S_BAR
  S_BAR_QUANT_2<-quantile(L_S_BAR_2,prob=alpha,names=FALSE) # Alpha Quantile for S_BAR
  S_BAR_QUANT_3<-quantile(L_S_BAR_3,prob=alpha,names=FALSE) # Alpha Quantile for S_BAR
  S_QUANT_1<-quantile(L_S1,prob=alpha,names=FALSE) # Alpha Quantile for S
  S_QUANT_2<-quantile(L_S2,prob=alpha,names=FALSE) # Alpha Quantile for S
  S_QUANT_3<-quantile(L_S3,prob=alpha,names=FALSE) # Alpha Quantile for S
  
  eps<-0.85#0.005*QUANT
  eps1<-1#0.005*S_BAR_QUANT_1
  eps2<-0.9#0.005*S_BAR_QUANT_2
  eps3<-6#0.005*S_BAR_QUANT_3
  # Computing the Expected Loss of S given the Loss of S_BAR = alpha_quantile of S_BAR
  Q_L1<-L_S1[abs(L_S_BAR_1-S_BAR_QUANT_1)<eps1] # all relevant loss of S conditioned on loss of S_bar = quantile
  Q_L2<-L_S2[abs(L_S_BAR_2-S_BAR_QUANT_2)<eps2] # all relevant loss of S conditioned on loss of S_bar = quantile
  Q_L3<-L_S3[abs(L_S_BAR_3-S_BAR_QUANT_3)<eps3] # all relevant loss of S conditioned on loss of S_bar = quantile
  
  
  
  EC_S_1<-L_S1[abs(L-QUANT)<eps]-E_LOSS_S_1 # all relevant loss of S conditioned on loss of S_bar = quantile
  EC_S_2<-L_S2[abs(L-QUANT)<eps]-E_LOSS_S_2# all relevant loss of S conditioned on loss of S_bar = quantile
  EC_S_3<-L_S3[abs(L-QUANT)<eps]-E_LOSS_S_3 # all relevant loss of S conditioned on loss of S_bar = quantile
  
  COND_LOSS_1<-sum(Q_L1)/length(Q_L1)   #Monte Carlo Simulation for the expected conditional loss
  COND_LOSS_2<-sum(Q_L2)/length(Q_L2)   #Monte Carlo Simulation for the expected conditional loss
  COND_LOSS_3<-sum(Q_L3)/length(Q_L3)   #Monte Carlo Simulation for the expected conditional loss
  
  # Calculation of the Concentration Charge as a difference
  EC<-quantile(L,prob=alpha,names=FALSE)-E_LOSS # Calculation of the economic capital
  
  CC_1<-mean(EC_S_1)-(COND_LOSS_1-E_LOSS_S_1) # Concentration Charge of S
  CC_2<-mean(EC_S_2)-(COND_LOSS_2-E_LOSS_S_2) # Concentration Charge of S
  CC_3<-mean(EC_S_3)-(COND_LOSS_3-E_LOSS_S_3) # Concentration Charge of S
  # Computing the marginal risk contribution of S
  #MLC_S_1<-L_S[(L>(EC+E_LOSS)-(1-alpha)*E_LOSS)*(L<(EC+E_LOSS)+(1-alpha)*E_LOSS)]
  #MLC_S_MEAN<-sum(MLC_S)/length(MLC_S)
  
  # Writing Output in two CSV - Files
#  write.csv(data.frame("Overall Loss"=L,
#                       "Loss in Sector 1"=L_S1,
#                       "Loss in Sector 2"=L_S2,
#                       "Loss in Sector 3"=L_S3),paste0("losses_",deparse(substitute(portfolio)),".csv"))
  
  
  write.csv(data.frame("Concentration Charge of Sector 1"=CC_1,
                       "Concentration Charge of Sector 2"=CC_2,
                       "Concentration Charge of Sector 3"=CC_3,
                       "Conditional Loss given quantile of S_1 bar"=COND_LOSS_1,
                       "Conditional Loss given quantile of S_2 bar"=COND_LOSS_2,
                       "Conditional Loss given quantile of S_3 bar"=COND_LOSS_3,
                       "MLC(S_1)"=mean(EC_S_1)+E_LOSS_S_1,
                       "MLC(S_2)"=mean(EC_S_2)+E_LOSS_S_2,
                       "MLC(S_3)"=mean(EC_S_3)+E_LOSS_S_3,
                       "ECC(S_1)"=mean(EC_S_1),
                       "ECC(S_2)"=mean(EC_S_2),
                       "ECC(S_3)"=mean(EC_S_3),
                       "Non Concentrated Capital Charge for Sector 1"=COND_LOSS_1-E_LOSS_S_1,
                       "Non Concentrated Capital Charge for Sector 2"=COND_LOSS_2-E_LOSS_S_2,
                       "Non Concentrated Capital Charge for Sector 2"=COND_LOSS_3-E_LOSS_S_3,
                       "Expected Loss in Sector 1"=E_LOSS_S_1,
                       "Expected Loss in Sector 2"=E_LOSS_S_2,
                       "Expected Loss in Sector 3"=E_LOSS_S_3,
                       "Overall Expected LOSS"=E_LOSS,
                       "Alpha Quantile"=QUANT,
                       "Economic Capital"=EC,
                       "Relevant Losses for Conditional Losses 1"=sum(abs(L_S_BAR_1-S_BAR_QUANT_1)<eps1),
                       "Relevant Losses for Conditional Losses 2"=sum(abs(L_S_BAR_2-S_BAR_QUANT_2)<eps2),
                       "Relevant Losses for Conditional Losses 3"=sum(abs(L_S_BAR_3-S_BAR_QUANT_3)<eps3),
                       "Relevant Losses for Conditional Losses 11"=sum(abs(L-QUANT)<eps)

  ),paste0("results_",deparse(substitute(portfolio)),".csv"))
  # Final Output
}




#########################################
########  PYKHTIN APPROX. ###############
#########################################
pykhtin<-function(portfolio=test1,in_sbar=in_sbar1,alpha=0.999,MC_numb=10000,plot=F){
  N<-portfolio$sec # setting numbers of influences
  M<-portfolio$s # number of clusters/obligors
  L<-numeric(MC_numb)
  L_S<-numeric(MC_numb)
  Y<-numeric(MC_numb) # setting initial value of Y to 0
  in_s<-(1-in_sbar) # Indicates whether in s or not
  a<-matrix(portfolio$a[portfolio$sector,1:portfolio$sec],ncol=portfolio$sec) # Correcting the correlation matrix in its dimensions
  .pardefault <- par() # Default Graphic Parameters
  EAD_orig<-portfolio$EAD
  
  #Determining the coefficients
  c_fun<-function(driver=rep(1,M)){(portfolio$EAD/sum(portfolio$EAD))*driver*portfolio$LGD*pnorm((qnorm(portfolio$PD)+portfolio$r*qnorm(alpha))/(sqrt(1-portfolio$r^2)))} # Factor c as in Pykhtin (21)


  
  b<-function(driver=rep(1,M)){
    r<-numeric(N)
    for(k in 1:N){r[k]<-sum(c_fun(driver)*a[,k])} 
    r<-r/sqrt(sum(r^2)) # Scaling s.t. sum of the squares = 1.
    return(r)
  }
  

  
  rho_fun<-function(driver=rep(1,M)){
    r<-numeric(M)
    for( i in 1:M){ # as in Pykhtin (15)
      r[i]<-sum(a[i,]*b(driver))
    }
    return(r)
  }
  
  # Determining a_c 
  a_c<-function(driver=rep(1,M)){(portfolio$r*rho_fun(driver))}
  

  #The necessary functions for the determination of VaR
  p<-function(y,driver=rep(1,M)){return(pnorm((qnorm(portfolio$PD)-a_c(driver)*y)/(sqrt(1-a_c(driver)^2))))} # Function p_i as in Pykhtin (9)
  

  p_prime<-function(y,driver=rep(1,M)){
    return((-a_c(driver)/(sqrt(1-a_c(driver)^2)))*dnorm((qnorm(portfolio$PD)-a_c(driver)*y)/(sqrt(1-a_c(driver)^2)))) # Morone (2.9) / Pykhtin (24)
  }
  
  p_prime_prime<-function(y,ind_s=rep(1,M),driver=rep(1,M)){ # Morone (2.10) / Pykhtin (24)
    return(-((a_c(driver)^2)/(1-a_c(driver)^2))*((qnorm(portfolio$PD)-a_c(driver)*y)/(sqrt(1-a_c(driver)^2)))*
        dnorm((qnorm(portfolio$PD)-a_c(driver)*y)/(sqrt(1-a_c(driver)^2))))
  }
  
  l<-function(y,ind_s=rep(1,M),driver=rep(1,M)){return(sum((portfolio$EAD/sum(portfolio$EAD))*(ind_s)*portfolio$LGD*p(y,driver)))} # Total loss as in Pykhtin (8)
  
  l_prime<-function(y,ind_s=rep(1,M),driver=rep(1,M)){return(sum((portfolio$EAD/sum(portfolio$EAD))*(ind_s)*portfolio$LGD*p_prime(y,driver)))} # Morone (2.9)
  
  l_prime_prime<-function(y,ind_s=rep(1,M),driver=rep(1,M)){return(sum((portfolio$EAD/sum(portfolio$EAD))*(ind_s)*portfolio$LGD*p_prime_prime(y,driver)))} # Morone (2.10)
  
  asset_corr<-function(driver=rep(1,M)){
      Mat<-matrix(0,M,M,byrow=T) # Morone (2.14)
      for (i in 1:M){
          for (j in 1:M){
            Mat[i,j]<-(portfolio$r[i]*portfolio$r[j]*sum(portfolio$a[portfolio$sector[i],]*portfolio$a[portfolio$sector[j],])-a_c(driver)[i]*a_c(driver)[j])/(sqrt(1-a_c(driver)[i]^2)*sqrt(1-a_c(driver)[j]^2))
        }
      }
      return(Mat)
  }
  
  # QUANTILE COMPUTATIONS

  v_inf<-function(y,ind_s=rep(1,M),driver=rep(1,M)){ # Morone (2.11)
    r<-0
    for (i in 1:M){
      for (j in 1:M){
        r<-r+(portfolio$EAD[i]/sum(portfolio$EAD))*(portfolio$EAD[j]/sum(portfolio$EAD))*portfolio$LGD[i]*portfolio$LGD[j]*ind_s[i]*ind_s[j]*
          (pbivnorm(qnorm(p(y,driver)[i]),qnorm(p(y,driver)[j]),
                             rho=asset_corr(driver)[i,j])-p(y,driver)[i]*p(y,driver)[j])
      }
    }
    return(r)
  }
  
  v_inf_prime<-function(y,ind_s=rep(1,M),driver=rep(1,M)){ # Morone (2.15) / Pykhtin (29)
    r<-0
    for (i in 1:M){
      for (j in 1:M){
        r<-r+(portfolio$EAD[i]/sum(portfolio$EAD))*(portfolio$EAD[j]/sum(portfolio$EAD))*portfolio$LGD[i]*portfolio$LGD[j]*ind_s[i]*ind_s[j]*
          p_prime(y,driver)[i]*(pnorm((qnorm(p(y,driver)[j])-asset_corr(driver)[i,j]*qnorm(p(y,driver)[i]))/(sqrt(1-asset_corr(driver)[i,j]^2)))-p(y,driver)[j])
                }
    }
    return(2*r)
  }
  
  v_ga<-function(y,ind_s=rep(1,M),driver=rep(1,M)){ # as in Morone (2.12) / Pykhtin (30)
    r<-0
    for (i in 1:M){
      r<-r+((portfolio$EAD[i]/sum(portfolio$EAD))^2)*(portfolio$LGD[i]^2)*(1/portfolio$inv_HHI[i])*ind_s[i]*
          (p(y,driver)[i]-pbivnorm(qnorm(p(y,driver)[i]),qnorm(p(y,driver)[i]),rho=asset_corr(driver)[i,i]))
    }
    return(r)
  }
  
  v_ga_prime<-function(y,ind_s=rep(1,M),driver=rep(1,M)){ # Morone (2.16)
    r<-0
    for (i in 1:M){
      r<-r+((portfolio$EAD[i]/sum(portfolio$EAD))^2)*(portfolio$LGD[i]^2)*(1/portfolio$inv_HHI[i])*ind_s[i]*
        p_prime(y,driver)[i]*(1-2*pnorm((qnorm(p(y,driver)[i])-asset_corr(driver)[i,i]*qnorm(p(y,driver)[i]))/(sqrt(1-asset_corr(driver)[i,i]^2))))
    }
    return(r)
  }
  
  quant_inf<-function(ind_s=rep(1,M),driver=rep(1,M)){
    return(-(1/(2*l_prime(qnorm(1-alpha),ind_s,driver)))*(v_inf_prime(qnorm(1-alpha),ind_s,driver)-v_inf(qnorm(1-alpha),ind_s,driver)*
                                                       (qnorm(1-alpha)+(l_prime_prime(qnorm(1-alpha),ind_s,driver))/(l_prime(qnorm(1-alpha),ind_s,driver))))) # Morone (2.8)
     }
  
  quant_ga<-function(ind_s=rep(1,M),driver=rep(1,M)){
    return(-(1/(2*l_prime(qnorm(1-alpha),ind_s,driver)))*(v_ga_prime(qnorm(1-alpha),ind_s,driver)-v_ga(qnorm(1-alpha),ind_s,driver)*
                                              (qnorm(1-alpha)+(l_prime_prime(qnorm(1-alpha),ind_s,driver))/(l_prime(qnorm(1-alpha),ind_s,driver))))) # Morone (2.8)
  }
  

  # DERIVATIVES with respect to amount of Exposure # Morone (3.2)
  # Computation of the Marginal Risk Contribution
  
  
  der33<-function(y,ind_s=rep(1,M)){ # Morone (3.3)
    return(sum(portfolio$LGD*p(y)*ind_s))
  }
  
  
  der35<-function(y,ind_s=rep(1,M)){ # Morone (3.5)
    sum(portfolio$LGD*p_prime(y)*ind_s)
  }
  
  der36<-function(y,ind_s=rep(1,M)){ # Morone (3.6)
    sum(ind_s*(portfolio$LGD*p_prime_prime(y)*sum((portfolio$EAD/sum(portfolio$EAD))*portfolio$LGD*p_prime(y))
               -portfolio$LGD*p_prime(y)*sum((portfolio$EAD/sum(portfolio$EAD))*portfolio$LGD*p_prime_prime(y)))/
          ((sum((portfolio$EAD/sum(portfolio$EAD))*portfolio$LGD*p_prime(y)))^2))
  }
  
  der37<-function(y,ind_s=rep(1,M)){ # Morone (3.7)
    r<-0
    for(j in 1:M){
      if (ind_s[j]==T){
        for(i in 1:M){
          r<-r+portfolio$LGD[j]*(portfolio$EAD[i]/sum(portfolio$EAD))*portfolio$LGD[i]*((pbivnorm(qnorm(p(y)[j]),qnorm(p(y)[i]),rho=asset_corr()[j,i],recycle=F))-p(y)[j]*p(y)[i])
        }
      }
    }
    return(2*r)
  }
  
  der38<-function(y,ind_s=rep(1,M)){ # Morone (3.8)
    r<-0
    for (i in 1:M){
      r<-r+(portfolio$EAD[i]/sum(portfolio$EAD))*(1/portfolio$inv_HHI[i])*(portfolio$LGD[i]^2)*ind_s[i]*(p(y)[i]-(pbivnorm(qnorm(p(y)[i]),qnorm(p(y)[i]),rho=asset_corr()[i,i],recycle=F)))
    }
    return(2*r)
  }
  
  der39<-function(y,ind_s=rep(1,M)){ # Morone (3.9)
    ret<-0
    for ( j in 1:M){
      if(ind_s[j]==T){
        for (i in 1:M){
          ret<-ret+(portfolio$LGD[j]*(portfolio$EAD[i]/sum(portfolio$EAD))*portfolio$LGD[i]*p_prime(y)[i]*
                      (pnorm((qnorm(p(y)[j])-asset_corr()[i,j]*qnorm(p(y)[i]))/sqrt(1-asset_corr()[i,j]^2))-p(y)[j])
                    +portfolio$LGD[j]*(portfolio$EAD[i]/sum(portfolio$EAD))*portfolio$LGD[i]*p_prime(y)[j]*
                      (pnorm((qnorm(p(y)[i])-asset_corr()[i,j]*qnorm(p(y)[j]))/sqrt(1-asset_corr()[i,j]^2))-p(y)[i]))
        }
      }
    }
    return(2*ret)
  }
  
  der310<-function(y,ind_s=rep(1,M)){ # Morone (3.10)
    return(
      2*sum(ind_s*(portfolio$EAD/sum(portfolio$EAD))*(1/portfolio$inv_HHI)*(portfolio$LGD^2)*p_prime(y)*
              (1-2*pnorm((qnorm(p(y))-diag(asset_corr())*qnorm(p(y)))/(sqrt(1-diag(asset_corr())^2)))))
    )
  }
  
  
  der34_ga<-function(y,ind_s=rep(1,M)){ # Morone (3.4)
    (1/(2*(l_prime(y)^2)))*(-(der310(y,ind_s))*l_prime(y)+(v_ga_prime(y))*der35(y,ind_s)+
                              ((der38(y,ind_s))*l_prime(y)-(v_ga(y))*der35(y,ind_s))*
                              ((l_prime_prime(y)/l_prime(y))+y)+(v_ga(y))*l_prime(y)*(der36(y,ind_s)))
  }
  
  der34_inf<-function(y,ind_s=rep(1,M)){ # Morone (3.4)
    (1/(2*(l_prime(y)^2)))*(-(der39(y,ind_s))*l_prime(y)+(v_inf_prime(y))*der35(y,ind_s)+
                              ((der37(y,ind_s))*l_prime(y)-(v_inf(y))*der35(y,ind_s))*
                              ((l_prime_prime(y)/l_prime(y))+y)+(v_inf(y))*l_prime(y)*(der36(y,ind_s)))
  }
  
  # Marginal Contributions of the Expected Shortfall
  
  der_es1<-function(y,ind_s=rep(1,M),driver=rep(1,M)){
    sum((1/(1-alpha))*portfolio$LGD*pbivnorm(qnorm(portfolio$PD),qnorm(1-alpha),rho=a_c(driver))*ind_s)
  }
  
  der_es2<-function(y,ind_s=rep(1,M),driver=rep(1,M)){
    sum()
  }

  ###########PLOTS#################

  
  if(plot==T){
  # ############# Plotting the non - linear Increase#################
  # #portfolio$a<-t(chol(matrix(c(1,0.05,0.05,1),ncol=2))) # Changing Correlation
  # alpha_original<-alpha
  # x<-seq(1,100,length=100)
  # e<-numeric(length(x))   #
  # e2<-numeric(length(x))
  # e3<-numeric(length(x))
  # 
  # 
  # for (j in 1:length(x)){
  #   for(i in 1:M) # Scaling the Portfolio in Order to Compute the losses
  #   {
  #     if(in_s[i]==T){
  #       portfolio$EAD[i]<-EAD_orig[i]*x[j]
  #     }
  #   }
  # 
  # 
  # 
  #   # Computing the Conditional Loss given quantile Loss in the Complement.
  #   alpha<-0.999
  #   MLC<-0
  #   for (i in 1:M){
  #     if (in_s[i]==T){
  #       if((i>1)&&(i<M)){
  #         in_s2<-c(rep(0,i-1),1,rep(0,M-i))
  #       }
  #       if(i==1){
  #         in_s2<-c(1,rep(0,M-1))
  #       }
  #       if(i==M){
  #         in_s2<-c(rep(0,M-1),1)
  #       }
  #       MLC<-MLC+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
  #     }
  #   }
  #   e[j]<-MLC-x[j] # IF the expected loss is 1.
  # 
  #   alpha<-0.99
  #   MLC<-0
  #   for (i in 1:M){
  #     if (in_s[i]==T){
  #       if((i>1)&&(i<M)){
  #         in_s2<-c(rep(0,i-1),1,rep(0,M-i))
  #       }
  #       if(i==1){
  #         in_s2<-c(1,rep(0,M-1))
  #       }
  #       if(i==M){
  #         in_s2<-c(rep(0,M-1),1)
  #       }
  #       MLC<-MLC+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
  #     }
  #   }
  #   e2[j]<-MLC-x[j] # IF the expected loss is 1.
  # 
  #   alpha<-0.9999
  #   MLC<-0
  #   for (i in 1:M){
  #     if (in_s[i]==T){
  #       if((i>1)&&(i<M)){
  #         in_s2<-c(rep(0,i-1),1,rep(0,M-i))
  #       }
  #       if(i==1){
  #         in_s2<-c(1,rep(0,M-1))
  #       }
  #       if(i==M){
  #         in_s2<-c(rep(0,M-1),1)
  #       }
  #       MLC<-MLC+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
  #     }
  #   }
  #   e3[j]<-MLC-x[j] # IF the expected loss is 1.
  # 
  # }
  # 
  # plot(x,(e-x*e[1])/sum(portfolio$EAD),type='l',font=7,xlab=expression(lambda),ylab=expression(EC[alpha](lambda * S)-lambda * EC[alpha](S)),
  #      frame.plot = F,lwd=4,cex=7)
  # lines(x,(e2-x*e2[1])/sum(portfolio$EAD),type='l',lwd=4,lty=2,col="blue")
  # lines(x,(e3-x*e3[1])/sum(portfolio$EAD),type='l',lwd=4,lty=3,col="red")
  # legend(5,0.03,
  #        c(expression(alpha == 99~'%'),expression(alpha == 99.9~'%'),expression(alpha == 99.99~'%')),
  #        lty=c(2,1,3),lwd=c(4,4,4),col=c("blue","black","red"),bty="n") 
  # 
  # alpha<-alpha_original # Resetting alpha


  ###########PLOTTING THE Concentration Charge for Increasing Portfolio SIZE ##############

  x<-seq(1,500,length=100)
  COND_LOSS<-numeric(length(x))
  MLC<-numeric(length(x))
  COND_LOSS2<-numeric(length(x))
  MLC2<-numeric(length(x))
  VARLIN<-numeric(length(x))
  Q_LIN<-numeric(length(x))
  Q_INF<-numeric(length(x))
  VARGA<-numeric(length(x))
  VARINF<-numeric(length(x))
  VARLIN2<-numeric(length(x))
  VARGA2<-numeric(length(x))
  VARINF2<-numeric(length(x))
  portfolio$EAD<-EAD_orig
  S_QUANT_L<-l(qnorm(1-alpha),in_s,in_s)*sum(portfolio$EAD) # The approx. Quantile of S
  S_QUANT_GA<-quant_ga(in_s,in_s)*sum(portfolio$EAD)
  S_QUANT_INF<-quant_inf(in_s,in_s)*sum(portfolio$EAD)
  S_QUANT<-S_QUANT_L+S_QUANT_GA+S_QUANT_INF

  for (j in 1:length(x)){
      portfolio$EAD<-EAD_orig
      for(i in 1:M) # Scaling the Portfolio in Order to Compute the losses
      {
        if(in_s[i]==T){
          portfolio$EAD[i]<-EAD_orig[i]*x[j]
        }
      }

    for (i in 1:M){
      if (in_s[i]==T){
        if((i>1)&&(i<M)){
          in_s2<-c(rep(0,i-1),1,rep(0,M-i))
        }
        if(i==1){
          in_s2<-c(1,rep(0,M-1))
        }
        if(i==M){
          in_s2<-c(rep(0,M-1),1)
        }
        MLC[j]<-MLC[j]+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
        VARLIN[j]<-VARLIN[j]+der33(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
        VARGA[j]<-VARGA[j]+der34_ga(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
        VARINF[j]<-VARINF[j]+der34_inf(qnorm(1-alpha),in_s2)*portfolio$EAD[i]

      }
      if (in_s[i]==F){
        if((i>1)&&(i<M)){
          in_s2<-c(rep(0,i-1),1,rep(0,M-i))
        }
        if(i==1){
          in_s2<-c(1,rep(0,M-1))
        }
        if(i==M){
          in_s2<-c(rep(0,M-1),1)
        }
        MLC2[j]<-MLC2[j]+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
        VARLIN2[j]<-VARLIN2[j]+der33(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
        VARGA2[j]<-VARGA2[j]+der34_ga(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
        VARINF2[j]<-VARINF2[j]+der34_inf(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
      }
    }

    for(i in 1:M) # Scaling the Portfolio in Order to Compute the losses
    {
      if(in_sbar[i]==T){
        portfolio$EAD[i]<-portfolio$EAD[i]*10^8
      }
    }

    for (i in 1:M){
      if (in_s[i]==T){
        if((i>1)&&(i<M)){
          in_s2<-c(rep(0,i-1),1,rep(0,M-i))
        }
        if(i==1){
          in_s2<-c(1,rep(0,M-1))
        }
        if(i==M){
          in_s2<-c(rep(0,M-1),1)
        }
        COND_LOSS[j]<-COND_LOSS[j]+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
      }
    }
      portfolio$EAD<-EAD_orig
      for(i in 1:M) # Scaling the Portfolio in Order to Compute the losses
      {
        if(in_sbar[i]==F){
          portfolio$EAD[i]<-portfolio$EAD[i]*10^8
        }
      }
      for ( i in 1:M){
      if (in_s[i]==F){
        if((i>1)&&(i<M)){
          in_s2<-c(rep(0,i-1),1,rep(0,M-i))
        }
        if(i==1){
          in_s2<-c(1,rep(0,M-1))
        }
        if(i==M){
          in_s2<-c(rep(0,M-1),1)
        }
        COND_LOSS2[j]<-COND_LOSS2[j]+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
      }
      }
  }
  CC<-MLC-COND_LOSS # Concentration Charge
  CC2<-MLC2-COND_LOSS2
  plot(x,CC,type='l',ylim=c(min(CC,CC2),max(CC,CC2)),xlab=expression(lambda),ylab="Concentration Charge in absolute Values",
       frame.plot = F,lwd=3,main=NULL,cex.lab=1.5,cex.axis=1.5)
  lines(x,CC2,type='l',lwd=3,lty=5,col="blue")

  ################Relative to total EAD

  plot(x,CC/sum(EAD_orig),ylim=c(min(CC,CC2,VARINF+VARLIN+VARGA,VARINF2+VARLIN2+VARGA2)/sum(EAD_orig),
                                 max(CC,CC2,VARINF+VARLIN+VARGA,VARINF2+VARLIN2+VARGA2)/sum(EAD_orig)),
       type='l',xlab=expression(lambda),ylab="Concentration Charge ",
       frame.plot = F,lwd=3,main=NULL,cex.lab=1.5,cex.axis=1.5,lty=2)
  lines(x,CC2/sum(EAD_orig),type='l',lwd=3,lty=2,col="blue")
  lines(x,(MLC-x)/sum(EAD_orig),lwd=3,lty=1,col="black")
  lines(x,(MLC2-100)/sum(EAD_orig),lwd=3,lty=1,col="blue")
  legend(60,0.20,c(expression(EC[alpha](S)),expression(EC[alpha](bar(S))),expression(CC[alpha](S)),expression(CC[alpha](bar(S))))
         ,lty=c(1,1,2,2),lwd=c(3,3,3,3),col=c("black","blue","black","blue"),bty="n")
  
  # relative to EC(S)
  plot(x,CC/(MLC-x),ylim=c(0,1),
       type='l',xlab=expression(lambda),ylab="",
       frame.plot = F,lwd=3,main=NULL,cex.lab=1.5,cex.axis=1.5,lty=1)
  abline(h=(S_QUANT-COND_LOSS[1])/(S_QUANT-1),col="red",lty=2,lwd=3)
  legend(200,0.6,c(expression(frac(CC[alpha](lambda*S),EC[alpha](lambda*S))),
                 expression(frac(t[alpha]^S-E*"["*L(S)~"|"~L(bar(S))==t[alpha]^{bar(S)}*"]",t[alpha]^S-E*"["*L(S)*"]")))
         ,lty=c(1,2),lwd=c(3,3),col=c("black","red"),bty="n")
  
  plot(x,CC2/(MLC2-100),ylim=c(0,1),
       type='l',xlab=expression(lambda),ylab="",
       frame.plot = F,lwd=3,main=NULL,cex.lab=1.5,cex.axis=1.5,lty=1)
  legend(600,0.8,expression(frac(CC[alpha](bar(S)),EC[alpha](bar(S)))),lty=1,lwd=3,col="black",bty="n")

  
  
  ###############INCREASE OF 1/HHI
# 
#   x<-seq(10,1000,length=1000)
#   COND_LOSS<-numeric(length(x))
#   MLC<-numeric(length(x))
#   VARLIN<-numeric(length(x))
#   VARGA<-numeric(length(x))
#   VARINF<-numeric(length(x))
#   COND_LOSS<-numeric(length(x))
#   MLC<-numeric(length(x))
#   HHI_orig<-portfolio$inv_HHI
#   EAD_orig[1]<-10000 # Making Pf homogeneous
#   EAD_orig[2]<-100
#   in_s<-c(1,0)
#   in_sbar<-c(0,1)
#   for (j in 1:length(x)){
#     portfolio$EAD<-EAD_orig
#     portfolio$inv_HHI[1]<-x[j]
#     portfolio$inv_HHI[2]<-100
# 
#     for (i in 1:M){
#       if (in_s[i]==T){
#         if((i>1)&&(i<M)){
#           in_s2<-c(rep(0,i-1),1,rep(0,M-i))
#         }
#         if(i==1){
#           in_s2<-c(1,rep(0,M-1))
#         }
#         if(i==M){
#           in_s2<-c(rep(0,M-1),1)
#         }
#         MLC[j]<-MLC[j]+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
#         VARLIN[j]<-VARLIN[j]+der33(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
#         VARGA[j]<-VARGA[j]+der34_ga(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
#         VARINF[j]<-VARINF[j]+der34_inf(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
#       }
#     }
#     for(i in 1:M) # Scaling the Portfolio in Order to Compute the losses
#     {
#       if(in_sbar[i]==T){
#         portfolio$EAD[i]<-portfolio$EAD[i]*10^8
#       }
#     }
#     for ( i in 1:M){
#       if (in_s[i]==T){
#         if((i>1)&&(i<M)){
#           in_s2<-c(rep(0,i-1),1,rep(0,M-i))
#         }
#         if(i==1){
#           in_s2<-c(1,rep(0,M-1))
#         }
#         if(i==M){
#           in_s2<-c(rep(0,M-1),1)
#         }
#         COND_LOSS[j]<-COND_LOSS[j]+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
#       }
#     }
# 
# 
#   }
#     par(.pardefault) # Reset Graphic Parameters
#     plot(x,(MLC-COND_LOSS)/(sum(EAD_orig)),type='l',xlab=expression(1 %/% "HHI"),ylab="Concentration Charge, Correlation 5 %",
#          frame.plot = F,lwd=3,
#          ylim=c(min(MLC-COND_LOSS,VARINF+VARGA,VARINF)/(sum(EAD_orig)),max(MLC-COND_LOSS,VARINF+VARGA,VARINF)/(sum(EAD_orig))),
#          main=NULL,cex.lab=1.5,cex.axis=1.5)
#     lines(x,(VARINF+VARGA)/(sum(EAD_orig)),type='l',lwd=3,lty=5,col="blue")
#     lines(x,VARINF/(sum(EAD_orig)),type='l',lwd=3,lty=3,col="red")


  ######### Increasing Granularity by dividing Portfolio into more 
  #   
  # steps<-20
  # COND_LOSS<-numeric(steps)
  # MLC<-numeric(steps)
  # VARLIN<-numeric(steps)
  # VARINF<-numeric(steps)
  # VARGA<-numeric(steps)
  # 
  # for(j in 1:steps){
  #   portfolio$s<-j+1
  #   portfolio$sec<-j+1
  #   portfolio$EAD<-c(10000,rep(10000/(j),j))
  #   portfolio$LGD<-rep(0.5,j+1)
  #   portfolio$PD<-rep(0.02,j+1)
  #   portfolio$r<-rep(0.5,j+1)
  #   portfolio$sector<-1:(j+1)
  #   portfolio$inv_HHI<-c(10000,rep(round(10000/(j)),j))
  #   portfolio$a<-t(chol(rep(diag(rep(0.4),j+1))+matrix(0.6,ncol=j+1,nrow=j+1))) 
  #   in_s<-c(1,rep(0,j))
  #   in_sbar<-c(0,rep(1,j))
  #   N<-j+1 # setting numbers of influences
  #   M<-j+1 # number of clusters/obligors
  #   a<-matrix(portfolio$a[portfolio$sector,1:portfolio$sec],ncol=portfolio$sec)
  #   print(j)
  #     
  #     for (i in 1:M){
  #       if (in_s[i]==T){
  #         if((i>1)&&(i<M)){
  #           in_s2<-c(rep(0,i-1),1,rep(0,M-i))
  #         }
  #         if(i==1){
  #           in_s2<-c(1,rep(0,M-1))
  #         }
  #         if(i==M){
  #           in_s2<-c(rep(0,M-1),1)
  #         }
  #         MLC[j]<-MLC[j]+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
  #         VARLIN[j]<-VARLIN[j]+der33(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
  #         VARGA[j]<-VARGA[j]+der34_ga(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
  #         VARINF[j]<-VARINF[j]+der34_inf(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
  #       }
  #     }
  #     for(i in 1:M) # Scaling the Portfolio in Order to Compute the losses
  #     {
  #       if(in_sbar[i]==T){
  #         portfolio$EAD[i]<-portfolio$EAD[i]*10^8
  #       }
  #     }
  #     for ( i in 1:M){
  #       if (in_s[i]==T){
  #         if((i>1)&&(i<M)){
  #           in_s2<-c(rep(0,i-1),1,rep(0,M-i))
  #         }
  #         if(i==1){
  #           in_s2<-c(1,rep(0,M-1))
  #         }
  #         if(i==M){
  #           in_s2<-c(rep(0,M-1),1)
  #         }
  #         COND_LOSS[j]<-COND_LOSS[j]+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
  #       }
  # 
  #     
  #     
  #   }
  #   par(.pardefault) # Reset Graphic Parameters
  #   # Plotting each time, because of igh computational time
  #   plot(2:(j+1),MLC[1:j]-COND_LOSS[1:j],type='s',xlab=expression("Number of Sectors"),ylab="Concentration Risk",
  #        frame.plot = F,lwd=3,ylim=c(min(MLC-COND_LOSS,VARINF+VARGA,VARINF),max(MLC-COND_LOSS,VARINF+VARGA,VARINF)),
  #        main=NULL,cex.lab=1.5,cex.axis=1.5)
  #   lines(2:(j+1),VARINF[1:j]+VARGA[1:j],type='s',lwd=3,lty=5,col="blue")
  #   lines(2:(j+1),VARINF[1:j],type='s',lwd=3,lty=3,col="red")
  #   
  # }
  # 
   }
  
  ###########COMPUTATION OF VALUES#################
  
  
  else{ # IF NO PLOT DESIRED
    
    
    # Computing the Marginal Contribution
    MLC<-0
    VARLIN<-0
    VARGA<-0
    VARINF<-0
    
    for (i in 1:M){
      if (in_s[i]==T){
        if((i>1)&&(i<M)){
          in_s2<-c(rep(0,i-1),1,rep(0,M-i))
        }
        if(i==1){
          in_s2<-c(1,rep(0,M-1))
        }
        if(i==M){
          in_s2<-c(rep(0,M-1),1)
        }
        MLC<-MLC+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
        VARLIN<-VARLIN+der33(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
        VARGA<-VARGA+der34_ga(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
        VARINF<-VARINF+der34_inf(qnorm(1-alpha),in_s2)*portfolio$EAD[i]
      }
    }
    
    
    
    
    
    
    # #Calculation of Inverse Functions
    #   inverse<-function (f, lower = -1000, upper = 1000) {
    #   function (y) {uniroot(function (x){f(x) - y}, lower = lower, upper = upper)[1]}
    # }
    # 
    # 
    # l_inv_s_bar<-inverse(f=function(x){l(x,in_sbar,in_sbar)*sum(portfolio$EAD)})
    # l_inv_s<-inverse(f=function(x){l(x,in_sbar,in_s)*sum(portfolio$EAD)})
    # l_inv<-inverse(f=function(x){l(x,in_sbar)*sum(portfolio$EAD)})
    
    
    for(i in 1:MC_numb){ 
      # Single Risk factor
      Z<-rnorm(N)
      Y[i]<-sum(b()*Z)
      # Losses and Quantiles
      
      # Computation of the corresponding values
      L[i]<-l(Y[i])*sum(portfolio$EAD) # The overall loss
      L_S[i]<-l(Y[i],(in_s))*sum(portfolio$EAD) # The loss of S
    }
    
    
    # Computation of Quantities
    E_LOSS<-sum(L)/MC_numb # Expected loss 
    E_LOSS_S<-sum(L_S)/MC_numb # Expected loss of S
    
    QUANT_L<-l(qnorm(1-alpha))*sum(portfolio$EAD) # The approx. Quantile of the loss distribution
    QUANT_GA<-quant_ga()*sum(portfolio$EAD) 
    QUANT_INF<-quant_inf()*sum(portfolio$EAD)
    QUANT<-QUANT_L+QUANT_GA+QUANT_INF
    
    S_QUANT_L<-l(qnorm(1-alpha),in_s,in_s)*sum(portfolio$EAD) # The approx. Quantile of S
    S_QUANT_GA<-quant_ga(in_s,in_s)*sum(portfolio$EAD)
    S_QUANT_INF<-quant_inf(in_s,in_s)*sum(portfolio$EAD)
    S_QUANT<-S_QUANT_L+S_QUANT_GA+S_QUANT_INF
    
    S_BAR_QUANT_L<-l(qnorm(1-alpha),in_sbar,in_sbar)*sum(portfolio$EAD) # The approx. Quantile of S_BAR
    S_BAR_QUANT_GA<-quant_ga(in_sbar,in_sbar)*sum(portfolio$EAD)
    S_BAR_QUANT_INF<-quant_inf(in_sbar,in_sbar)*sum(portfolio$EAD)
    S_BAR_QUANT<-S_BAR_QUANT_L+S_BAR_QUANT_GA+S_BAR_QUANT_INF
    
    
    #COND_LOSS_OLD<-l(l_inv_s_bar(S_BAR_QUANT)$root,in_s,in_sbar)*sum(portfolio$EAD) # Computing conditional loss as proposed 
    
    EC<-QUANT-E_LOSS # Economic Capital
    EC_S<-S_QUANT-E_LOSS_S # Economic Capital of S
          
    for(i in 1:M) # Scaling the Portfolio in Order to Compute the losses
    {
      if(in_sbar[i]==T){
        portfolio$EAD[i]<-portfolio$EAD[i]*10^8
      }
    }
      
          # Computing the Conditional Loss given quantile Loss in the Complement.
          COND_LOSS<-0
          for (i in 1:M){
            if (in_s[i]==T){
              if((i>1)&&(i<M)){
                in_s2<-c(rep(0,i-1),1,rep(0,M-i))
              }
              if(i==1){
                in_s2<-c(1,rep(0,M-1))
              }
              if(i==M){
                in_s2<-c(rep(0,M-1),1)
              }
              COND_LOSS<-COND_LOSS+(der33(qnorm(1-alpha),in_s2)+der34_ga(qnorm(1-alpha),in_s2)+der34_inf(qnorm(1-alpha),in_s2))*portfolio$EAD[i]
            }
          }
          CC<-MLC-COND_LOSS # Concentration Charge
      
      
        
        # Final Output
        return(list('Concentration Charge of S'=CC,
                    'Conditional Loss of S - given Loss of S_bar = quantile of S_bar'=COND_LOSS,
                    'MLC(S)'=MLC,
                    'ECC(S)'=MLC-E_LOSS_S,
                    'Non-Concentrated Economic Capital of S'=COND_LOSS-E_LOSS_S,
                    'Expected Loss of S'=E_LOSS_S,
                    'Expected Overall Loss' = E_LOSS,
                    'Alpha Quantile of the Overall Loss'=QUANT,
                    'Economic Capital'=EC,
                    'Varlin'=VARLIN,
                    'VAR_GA'=VARGA,
                    'VAR_INF'=VARINF
        ))
      }
}

############################################
########### TESTING ########################
############################################

#Creating the Plots
#pykhtin(portfolio=test1,in_sbar=c(0,1),alpha=0.999,MC_numb=10^5,plot=T)


#Calculation
#pykhtin(portfolio=test1,in_sbar=c(0,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test2,in_sbar=c(0,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test3,in_sbar=c(0,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test4,in_sbar=c(0,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test5,in_sbar=c(0,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test1,in_sbar=c(1,0),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test2,in_sbar=c(1,0),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test3,in_sbar=c(1,0),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test4,in_sbar=c(1,0),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test5,in_sbar=c(1,0),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=test6,in_sbar=c(0,1),alpha=0.999,MC_numb=10^2)

# Morone
#pykhtin(portfolio=morone1,in_sbar=(morone1$sector!=1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone1,in_sbar=(morone1$sector!=2),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone1,in_sbar=(morone1$sector!=3),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone2,in_sbar=(morone2$sector!=1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone2,in_sbar=(morone2$sector!=2),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone2,in_sbar=(morone2$sector!=3),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone3,in_sbar=(morone3$sector!=1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone3,in_sbar=(morone3$sector!=2),alpha=0.999,MC_numb=10^2)
#pykhtin(portfolio=morone3,in_sbar=(morone3$sector!=3),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone4,in_sbar=(morone4$sector!=1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone4,in_sbar=(morone4$sector!=2),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=morone4,in_sbar=(morone4$sector!=3),alpha=0.999,MC_numb=10^5)


#Düllmann
#pykhtin(portfolio=benchmark1,in_sbar=c(1,1,0,1,1,1,1,1,1,1,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=duellmann1,in_sbar=c(1,1,0,1,1,1,1,1,1,1,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=duellmann2,in_sbar=c(1,1,0,1,1,1,1,1,1,1,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=duellmann3,in_sbar=c(1,1,0,1,1,1,1,1,1,1,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=duellmann4,in_sbar=c(1,1,0,1,1,1,1,1,1,1,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=duellmann5,in_sbar=c(1,1,0,1,1,1,1,1,1,1,1),alpha=0.999,MC_numb=10^5)
#pykhtin(portfolio=duellmann6,in_sbar=c(1,1,0,1,1,1,1,1,1,1,1),alpha=0.999,MC_numb=10^5)


#plot(1:7,c(5110.975,47833.69,74149.87,107186.4,103896.1,136901.2,2414883)/6000000,type="l",ylab="Concentration Charge")



# testing with 100 mio scenarios 
#montecarlo(MC_numb=10^8,portfolio=test1,alpha=0.999) 
#montecarlo(MC_numb=10^8,portfolio=test2,alpha=0.999) 
#montecarlo(MC_numb=10^8,portfolio=test3,alpha=0.999) 
#montecarlo(MC_numb=10^8,portfolio=test4,alpha=0.999) 
#montecarlo(MC_numb=10^8,portfolio=test5,alpha=0.999) 


# Manuelles einlesen der Verluste
# L<-read.csv("losses_morone1.csv",header = T)[,2] 
# L_S1<-read.csv("losses_morone1.csv",header = T)[,3]
# L_S2<-read.csv("losses_morone1.csv",header = T)[,4]
# L_S3<-read.csv("losses_morone1.csv",header = T)[,5]

montecarlo(MC_numb=10^8,portfolio=morone1,alpha=0.999,sim=F) # testing with 100 mio scenarios 
#montecarlo(MC_numb=10^8,portfolio=morone2,alpha=0.999) # testing with 100 mio scenarios 
#montecarlo(MC_numb=10^8,portfolio=morone3,alpha=0.999) # testing with 100 mio scenarios 
#montecarlo(MC_numb=10^8,portfolio=morone4,alpha=0.999) # testing with 100 mio scenarios 
