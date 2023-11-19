# Load required libraries
library(httr)
library(jsonlite)

# Alpha Vantage API key (replace with your key)
api_key <- "YOUR_ALPHA_VANTAGE_API_KEY"

# Function to get stock price data for a symbol
get_stock_data <- function(symbol) {
  # API endpoint URL
  url <- sprintf("https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=%s&interval=1min&apikey=%s", symbol, api_key)

  # Make the API request
  response <- GET(url)

  # Check if the request was successful (status code 200)
  if (http_status(response)$status == 200) {
    # Parse the JSON response
    stock_data <- fromJSON(content(response, "text", encoding = "UTF-8"))

    # Extract and print the relevant information (you can modify this based on the API response structure)
    cat("Symbol:", stock_data$Meta Data$"2. Symbol", "\n")
    cat("Latest Close Price:", stock_data$TimeSeries$`2023-11-16 16:00:00`$close, "\n")
  } else {
    cat("Error:", http_status(response)$reason, "\n")
  }
}

# Example: Get stock data for a specific symbol (e.g., Apple Inc.)
get_stock_data("AAPL")
