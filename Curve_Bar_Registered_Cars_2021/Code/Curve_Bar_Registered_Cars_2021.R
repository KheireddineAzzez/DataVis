# Read data
Data_Car_2021= read.csv("../data/data_car_2021_filtered_date.csv")

# Filter Data 

Data_Car_2021_filtered<-Data_Car_2021 %>%
  drop_na(year,Mk) %>% # Mk= Maker of the car 
  select(Mk,year)  %>%
  count(year)

Data_Car_2021_filtered_and_omit <- na.omit(Nonth_Freq)

# Change the columns names
colnames(Data_Car_2021_filtered_and_omit)[colnames(Data_Car_2021_filtered_and_omit) %in% c("DateR_Month","n")] <- c("Month","Car")

# Graph Creation

Car_Sales_2021 <- ggplot(Data_Car_2021_filtered_and_omit, aes(x=Month, y=Car,fill=Month,group=1)) +
  geom_bar(stat="identity", alpha=.6, width=.4)+
  xlab("MONTH") +
  ylab(label="Car")+
  theme_ipsum()+
  theme_bw()+geom_line(color="#69b3a2",size=1.5) + 
  labs(title = "Registered Cars In 2021(EU)",x="MONTH",y="CAR")
