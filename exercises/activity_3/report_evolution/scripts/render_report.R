report_countries <- data.frame(country = c("Bulgaria", "Burkina Faso", "Cambodia", "Cameroon", "Canada"), continent = c("Europe", "Africa", "Asia", "Africa", "Americas"), stringsAsFactors = FALSE)

for (i in 1:nrow(report_countries)){
  
  rmarkdown::render(input = "../Country_Report_Final.Rmd", 
                    output_file = paste0("new_reports/",report_countries[i, "country"],"_Country_Report.html"),
                    params = list(country = report_countries[i, "country"],
                                  continent = report_countries[i, "continent"]))
  
}  