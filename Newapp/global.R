library("Lab5")


chan <- as.character(read.csv("data/channels.csv")[,1])

son <- as.character(read.csv("data/song.csv")[,1])
pro <- read.csv("data/programs.csv")

get_program_chan <- function(program_name,pro){
  
  for(i in 1:length(pro[,1])){
    if(as.character(pro[i,1]) == as.character(program_name)){
      return(as.character(pro[i,3]))
    }
  }
}