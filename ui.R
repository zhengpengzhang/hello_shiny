fluidPage(
  titlePanel("More Widgets"),
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset",
                  label="Choose a dataset:",
                  choices=c("rock","cars","pressure"),
                  selected="rock"),
      br(),
      numericInput("num",
                   label="Number of observations:",
                   min=1,
                   max=10,
                   value=5),
      strong(helpText("vector of colors for the bars or bar components. 
               By default, grey is used if height is a vector, 
               and a gamma-corrected grey palette if height is a matrix.")),
      actionButton("act",
                   label="Update Now")
    ),
    mainPanel(
      verbatimTextOutput("summary"),
      tableOutput("table")
    )
  )
)
