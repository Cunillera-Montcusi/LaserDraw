Members<-c("Barbi","Dorina","Huong","Varsha","Bea","Juli","Thinh","Lila","David","Csilla")
number_of_teams<-2
teams_pos<-sample(1:length(Members),
                  replace=F,
                  size=length(Members))
#print(teams_pos)
ini_pos<-c(1,length(Members)/number_of_teams+1)
fin_pos<-c(length(Members)/number_of_teams,length(Members))
#print(ini_pos)
#print(fin_pos)

for(team in 1:number_of_teams){
  print(Members[teams_pos[ini_pos[team]:fin_pos[team]]])
}
