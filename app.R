library(shiny)
source("ddos_detection.R")

ui <- fluidPage(
  # Add UI elements for input parameters here
  titlePanel("DDoS Detection"),
  sidebarLayout(
    sidebarPanel(
      textInput("stack_name", "Stack Name", value = "DDoS-Detection-Stack"),
      textInput("vpc_cidr", "VPC CIDR Block", value = "10.0.0.0/16"),
      textInput("subnet_cidr", "Public Subnet CIDR Block", value = "10.0.1.0/24"),
      textInput("instance_type", "EC2 Instance Type", value = "t2.micro"),

      actionButton("deploy", "Deploy")
    ),
    mainPanel(
      # Add output elements to display results and status updates
    )
  )
)

server <- function(input, output, session) {
  # Add server-side logic for handling input and running DDoS Detection
  observeEvent(input$deploy, {
    deploy_cloudformation_template(stack_name = input$stack_name,
                                    vpc_cidr = input$vpc_cidr,
                                    subnet_cidr = input$subnet_cidr,
                                    instance_type = input$instance_type)
  })
}

shinyApp(ui = ui, server = server)
