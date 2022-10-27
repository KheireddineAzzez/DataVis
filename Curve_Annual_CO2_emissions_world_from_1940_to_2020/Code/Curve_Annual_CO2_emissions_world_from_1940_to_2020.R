#Read Data

Curve_Annual_CO2_emission= read.csv("C:../data/Curve_Annual_CO2_emission.csv")


#Graph creation

Graphiqimage <- ggplot(DataAverageOfco2,aes(x=Year,y=Emission))+
  geom_area( fill="#69b3a2", alpha=0.4) +
  geom_line(color="#69b3a2", size=2) +
  geom_point(size=3,color="#9587EB") +
  geom_smooth()+
  theme_ipsum() +
  labs(title = "Annual CO2 emissions worldwide from 1940 to 2020",x="Years",
                      y=" Emission in Billion Metric tons")