# Read Data
Data_From_malgonant= read<- read.csv("../Data/Death_from_malognant_neoplasms_in_germany.csv") 

# Select Data : Year, Number , Name of Country

Extraction_Data_From_malgonant <- Data_From_malgonant %>% 
  select(Year,Number,Country.Name)


#  Graph  Creation

Graph_From_malgonant <- ggplot(Extraction_Data_From_malgonant,aes(x=Year,y=Number,fill=Year))+ 
  geom_bar(stat="identity", alpha=.6, width=.4)
  +theme_ipsum()
  + theme_bw()+
  labs(title = "Deaths from malignant neoplasms in Germany",x="Year",y="Number of deaths")
