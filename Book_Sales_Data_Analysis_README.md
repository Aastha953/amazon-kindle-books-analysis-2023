
# Book Sales Data Analysis

## Overview
This repository contains an analysis of book sales data using R and RStudio, leveraging the **Amazon Kindle Books Dataset 2023**. The project focuses on automating data cleaning and transformation, identifying top-performing titles, and providing actionable recommendations to maximize profitability. Modular workflows were developed to ensure efficiency and reproducibility.

## Dataset
**Amazon Kindle Books Dataset 2023**
- **Source:** Scraped dataset from October 2023.
- **Size:** Contains details for 130,000 Kindle e-books.
- **Details:** Includes book metadata such as title, author, genre, ratings, reviews, price, sales, and special tags (e.g., "Best Seller", "Editors' Pick").

### Key Dataset Features
- **Book Title**: Title of the book.
- **Author**: Author of the book.
- **Genre**: Category or genre of the book.
- **Price**: Selling price of the book.
- **Sales Data**: Number of units sold.
- **Ratings and Reviews**: Customer feedback and ratings.
- **Tags**: Special designations like "Best Seller" or "Editors' Pick."

## Goals
1. Automate data cleaning and transformation for efficient analysis.
2. Identify the most popular and profitable books and authors.
3. Provide data-driven recommendations to maximize profitability.
4. Explore the influence of Kindle Unlimited, special tags, and genre popularity on sales.
5. Develop modular workflows for reproducibility.

## Tools
- **R**: For data cleaning, transformation, and analysis.
- **RStudio**: Development environment for R.

## Key Insights
- Identified the top-performing books and authors based on sales and ratings.
- Analyzed the impact of Kindle Unlimited and special tags on sales.
- Explored publication trends over time and seasonality patterns.
- Made actionable recommendations for maximizing profitability.

## How to Use This Repository

### Prerequisites
- Install R and RStudio.
- Clone this repository:
  ```bash
  git clone https://github.com/your_username/book-sales-data-analysis.git
  cd book-sales-data-analysis
  ```

### Running the Analysis
1. Load the dataset:
   - Place the `amazon_kindle_books_2023.csv` file in the `data/` directory.
2. Open the R project file in RStudio.
3. Run the scripts in the following order:
   - `01_data_cleaning.R`: Cleans and preprocesses the dataset.
   - `02_analysis.R`: Performs analysis to identify top-performing titles and trends.
   - `03_visualization.R`: Generates visualizations for insights.
4. View the outputs in the `output/` directory.

### Example Tasks
- **Identify Top Authors**: Use the `02_analysis.R` script to determine the most popular authors based on sales and ratings.
- **Genre Analysis**: Explore the sales performance of specific genres.
- **Tag Impact**: Analyze the influence of tags like "Best Seller" on book sales.

## Interesting Task Ideas
- **Author Popularity**: Identify the most prolific authors and their ratings.
- **Kindle Unlimited Impact**: Assess how Kindle Unlimited influences book popularity and sales.
- **Seasonality Patterns**: Analyze trends in book publications over time.
- **Genre Insights**: Dive into specific genres for detailed performance analysis.
- **AI Recommendations**: Train a recommendation model for personalized book suggestions.

## Contribution
Contributions are welcome! Please fork this repository and create a pull request for any improvements or additional analyses.

## License
This project is licensed under the MIT License. See the `LICENSE` file for details.

## Contact
For queries, please contact:
- **Aastha Kale**
- Email: [aasthakale750@gmail.com](mailto:aasthakale750@gmail.com)
