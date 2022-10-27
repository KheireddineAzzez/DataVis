# Information visualization

> This project contains code and data (sources) that are used to create graphics for exercise 2 of the course 172383 - Informationsvisualisierung.
 
## Folder structure

>- The name of the folder indicates the type of graph as "Bar, Curve, Bar and Curve". 
>- Each file is structured:

     Data: Folder that contains the data used to create the plot.
     Code: folder containing the code that generates the plot.
     Readme.md: contains notes on the data and the code.                   


## The libraries are used during extraction, data matching and graph generation: 

```r
library(ggridges)
library(ggplot2)
library(dplyr)
library(tidyr)
library(forcats)
library(hrbrthemes)
library(viridis)
library(plotly)
library(lubridate)

```
## Global Theme : This theme is applied to all graphics.

```r
Global_theme <- function(Ggplot) {
  Themed_Graph=Gplot+ theme( axis.title.y  = element_text(hjust = 0.5,size = 13,face = "bold"),
         axis.title.x = element_text(hjust = 0.5,size = 13,face = "bold"),  plot.title = element_text(hjust = 0.5, family = "Arial",face = "bold",size = 17),
                             legend.background = element_rect(fill = "white",colour = "grey",size = 2),
                             panel.grid.major = element_line(colour ="grey70" ,size = 0.1))

  return(Themed_Graph)
}

```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)
