# Team members
Members<-c("Barbi","Dorina","Huong","Varsha",
           "Bea","Juli","Thinh","Lila","David","Csilla","Marci")
# How many teams do you want? 
number_of_teams<-4

# Random team order
teams_pos<-sample(1:length(Members),replace=F,size=length(Members))
#print(teams_pos)

# Positions to select the teams

ini_pos<-round(seq(1,length(Members),length(Members)/number_of_teams))
  #c(1,ceiling(length(Members)/number_of_teams)+1)
fin_pos<-round(ini_pos+floor(length(Members)/number_of_teams))
  #c(ceiling(length(Members)/number_of_teams),length(Members))
#print(ini_pos)
#print(fin_pos)

# Team generator
for(team in 1:number_of_teams){
  cat("Team", team,
      "will be formed by",
      Members[teams_pos[ini_pos[team]:fin_pos[team]]],
      "\n",
      sep=" ")
}

