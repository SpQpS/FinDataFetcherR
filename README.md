# Financial Data Fetching with R Programming
**This R script fetches financial data, such as stock prices, using the Alpha Vantage API. It provides a simple way to retrieve the latest close price for a given stock symbol.**

## Prerequisites

Before running the script, you need to obtain an API key from Alpha Vantage. You can sign up for a free account and obtain the key [here](https://www.alphavantage.co/).

## Installation

Make sure you have the required R packages installed. You can install them using the following commands or download Required_Packages file:

- In R Studio:
  
   - ```install.packages("httr")```

   - ```install.packages("jsonlite")```

## Configuration
- Replace the placeholder ```YOUR_ALPHA_VANTAGE_API_KEY``` in the script with your actual Alpha Vantage API key.

**Copy code**
- Alpha Vantage API key (replace with your key)
   - api_key <- "YOUR_ALPHA_VANTAGE_API_KEY"

## Usage
- Run the R script ```financial_script.R``` in your R environment. You can do this by opening the script in RStudio or running it in the R console.
- The script provides an example of fetching stock data for a specific symbol (AAPL for Apple Inc.). You can customize the script to fetch data for different stock symbols dynamically.
