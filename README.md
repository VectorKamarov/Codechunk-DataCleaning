# Codechunk-DataSummaryFunction

This is a function I created for an quick summary of any certain variable within a dataset. The function will summarize the input variable's minimum, maxium, mean, and median value. 
It will then knit those values into a simple table using `knitr::kable`. This function only requires `tidyverse` package to work.

## Here's the function code chunk:

`sumfunc = function(.data,x){
  x = enquo(x)
  summarize(.data, min(!!x),
            mean(!!x),
            median(!!x),
            max(!!x)) %>% 
    knitr::kable(format = 'pipe', digits = 1L)
}

sumfunc(.data,x)`

By putting the name of the dataset into `.data` position and the variable name into `x`, we can easily get the summarized values into a simple table.

An output table would look like this:

`
| min(GDPPC)| mean(GDPPC)| median(GDPPC)| max(GDPPC)|
|----------:|-----------:|-------------:|----------:|
|     2124.7|     26280.7|       22998.2|      60698|`

## Files:  
-`codebook wdi.csv` Sample dataset used for showcasing the function  
-`codechunk showcase.R` Code script used for showcasing the function
