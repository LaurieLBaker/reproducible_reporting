## Asking for paremters

rmarkdown::render(input = "Country_Report_Final.Rmd", 
                  output_file = "newreports/Jamaica_CountryReport.html", 
                  params = "ask")


## Providing a parameter as your list

rmarkdown::render(input = "Country_Report_Final.Rmd", 
                  output_file = "newreports/Jamaica_CountryReport.html", 
                  params = list(country = "Jamaica", continent = "Americas"))


## Creating multiple reports


report_countries <- data.frame(country = c("Bulgaria", "Burkina Faso", "Cambodia", "Cameroon", "Canada"), 
                               continent = c("Europe", "Africa", "Asia", "Africa", "Americas"), 
                               stringsAsFactors = FALSE)


for (i in 1:nrow(report_countries)){
  
  rmarkdown::render(input = "Country_Report_Final.Rmd", 
                    output_file = paste0("newreports/", 
                                         report_countries[i, "country"], 
                                         "_Country_Report.html"),
                    params = list(country = report_countries[i, "country"],
                                  continent = report_countries[i, "continent"]))
  
}  
