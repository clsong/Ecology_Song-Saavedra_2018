#R-code of "Will a small randomly-assembled community be feasible and stable?" by:
#Chuliang Song and Serguei Saavedra
#published in: Ecology

rm(list=ls())
source('toolbox.R') #load the toolbox

num = 5 #set the community size
#generates a random interaction matrix with a given number of species, interaction strength, and connectance
Inte <- generate_Interaction_matrix(num, 0.6, 1) 
# choose a parametrization for the vector of intrinsic growth rates
# below are four different parameterizations to choose from
r <- parameterization_random(num) 
r <- parameterization_fixed(num)
r <- parameterization_feasible(Inte, num)
r <- parameterization_center(Inte, num)

check_feasibility(Inte, r) #check whether the given parameterization satisfies feasibility
check_stability(Inte, r) #check whether the given parameterization satisfies stability
