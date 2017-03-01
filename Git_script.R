############################################################################################################
########################################### Github #########################################################
#############################################################################################################

# Libraries
library(ggplot2)
library(gridExtra)
library()

temp <- read.csv ("C:/Users/wwainwright/Documents/R/Github/Git/temp_elevation.csv")

# Using the clean function

theme.clean <- function(){
  theme_bw()+
    theme(axis.text.x=element_text(size=12, angle=45, vjust=1, hjust=1),
          axis.text.y=element_text(size=12),
          axis.title.x=element_text(size=14, face="plain"),             
          axis.title.y=element_text(size=14, face="plain"),             
          panel.grid.major.x=element_blank(),                                          
          panel.grid.minor.x=element_blank(),
          panel.grid.minor.y=element_blank(),
          panel.grid.major.y=element_blank(),  
          plot.margin = unit(c(0.5, 0.5, 0.5, 0.5), units = , "cm"),
          plot.title = element_text(size=20, vjust=1, hjust=0.5),
          legend.text = element_text(size=12, face="italic"),          
          legend.title = element_blank(),                              
          legend.position=c(0.9, 0.9))
}

#Plotting the graph

(temp1 <- ggplot (data=temp, aes(x = Elevation.m, y = Soil.temp.mean)) +
  geom_point(colour = "#8B4513") +
  geom_smooth(method = lm, colour = "#8B4513", fill = "#8B4513", alpha = 0.6) +
  labs(x = "Elevation (m)", y = "Mean soil temperature (°C)") 
  + theme.clean())

getwd()


