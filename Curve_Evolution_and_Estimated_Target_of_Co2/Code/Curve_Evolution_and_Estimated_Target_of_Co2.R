# Read Data 
data_of_Co2 <- read.csv("../data/Curve_Evolution_and_Estimated_Target_of_Co2.csv")

# colors used in the graph
colors_DataCarEmission <- c("Estimated Emission" = "orange", "Emission" = "#69b3a2")

# Grpah creation

ggplot(Data_CarEmission,
       aes(x=Year,y=AverageEmssionFromNewVan))+
  geom_area( fill="#69b3a2", alpha=0.4) +
  geom_line(color="#69b3a2", size=2,col="red") +
  geom_point(size=3, aes(color="Emission")) +
  geom_smooth()+
  theme_ipsum() +
  geom_step(aes(y=targetForNewVans,color="Estimated Emission"),size=2,na.rm =TRUE)+
  labs(title = "Evolution and Estimated Target of  Co2",x="Years",
       y=" Grams of carbon dioxide per kilometre (g CO₂/km)")+
       scale_color_manual(name = "Emissions Categories",values =colors_DataCarEmission   )
