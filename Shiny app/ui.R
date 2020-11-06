# creating the contents of my shiny app
library(shiny)
# designing the navigation bar
shinyUI(
    navbarPage("Shiny App",
               tabPanel(" Analysis",
                        fluidPage(
                            titlePanel("The relationship bw variables and miles per gallon (MPG)"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("No. of cylinders" = "cyl",
                                                  "Displacement   (cu.in.)" = "disp",
                                                  "Gross hp" = "hp",
                                                  "R.A  ratio" = "drat",
                                                  "Weight  (lb/1000)" = "wt",
                                                  "1/4 mile t  " = "qsec",
                                                  "V/S" = "vs",
                                                  "Transmission" = "am",
                                                  "No. of fwd gears" = "gear",
                                                  "No. of carbs" = "carb"
                                                )),
                                    
                                    checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                                ),
                                
                                mainPanel(
                                    h3(textOutput("caption")),
                                    
                                    tabsetPanel(type = "tabs", 
                                                tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                                tabPanel("Regression model", 
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel("Data set info",
                        
                        h3("Dev Data Week 4"),
                        helpText("Create a shinny app.  & then deploy it on  server and then pitch your app using slidify"),
                        p("A DF"),
                        
                        a("https://class.coursera.org/regmods-008")
               ),
               tabPanel("More details on data",
                        h2("Trend for Car Road Tests"),
                        hr(),
                        h3("Information"),
                        helpText("The data is obtained from Motor Trend US magazine of 1974 ,",
                                 " and includes their fuel consumption",
                                 " for the vehicles."),
                        h3("Format-"),
                        p("A DF given as"),
                        
                        p("  [, 1]   mpg         Miles/gallon"),
                        p("  [, 2]	 cyl	 No. of cylinders"),
                        p("  [, 3]	 disp	 Displacement (cu.in.)"),
                        p("  [, 4]	 hp	 Gross hp"),
                        p("  [, 5]	 drat	 RA ratio"),
                        p("  [, 6]	 wt	 Weight (lb/1000)"),
                        p("  [, 7]	 qsec	 1/4 mile t(sec)"),
                        p("  [, 8]	 vs	 V/S"),
                        p("  [, 9]	 am	 Transmission (Auto, Manu)"),
                        p("  [,10]	 gear	 No. of fwd gears"),
                        p("  [,11]	 carb	 No. of carbs"),
                        
                        h3("Source:-"),
                        
                        p("Henderson and  Velleman (1981), Building several reg.  models.")
               ),
               tabPanel("Github Repo",
                        a("https://github.com/Mrinalini02/Dev-Data-Week4"),
                        hr(),
                        h4("Hope you enjoyed my shiny app"),
                        h4("Find the relevant repository by the name of Dev Data Week4")
               )
    )
)
