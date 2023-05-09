#Setup

library(tidyverse)

df = read_csv('codebook wdi.csv')

#Creating the function

sumfunc = function(.data,x){
  x = enquo(x)
  summarize(.data, min(!!x),
            mean(!!x),
            median(!!x),
            max(!!x)) %>% 
    knitr::kable(format = 'pipe', digits = 1L)
}

sumfunc(df,GDPPC)
