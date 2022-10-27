
#Read Data
DataEu= read.csv("../Losses_From_Climate_Change.csv")

# Rename columns
colnames(DataEu)[colnames(DataEu) %in% c("Country.text","Losses..million.euros..number")] <- c("Country","Country_Losses")

# Graph Creation
ResultOfClimateChange <- DataEu %>%
  ggplot(aes(x=Country_Losses,y=Country,fill=Country))+
  geom_bar(stat="identity", alpha=.6, width=.4)+
  xlab("Millions of euros in losses") +
  ylab(label="Country")+
  theme_bw()+
  labs(title = "Losses From Climate Change",x="Millions of euros in losses",y="Country")
