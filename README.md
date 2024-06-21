# DVD Rental Analysis

This project involves analyzing a DVD rental database using SQL and visualizing the results with Tableau dashboards.

## Summary

The DVD rental database was connected to a PostgreSQL server and managed using pgAdmin4. SQL queries were executed to generate results stored in CSV files. These results were then used to create interactive dashboards in Tableau Public, providing comprehensive insights.

## Project Structure

- **dashboards/**: Contains Tableau dashboards of the analysis.
- **results/**: Stores output data from SQL queries.
- **sql/**: Includes SQL scripts for data extraction and analysis.
- **ER diagram.png**: Entity-Relationship diagram of the database.

## Business Questions Answered

The analysis and dashboards address the following business questions:
- What are the most popular rental genres?
- What is the average rental duration with top titles performance?
- Who are the top 5 customers?
- What is the customer lifetime value?
- What is the distribution of different categories to the business revenue?

## Tableau Dashboard

The interactive dashboard allows users to view results globally or country-wise using a world map filter. It visualizes:
- Total Revenue
- Total Rentals
- Movies on Rent
- Actor-wise Revenue
- Genre-wise Revenue

## Usage

- **SQL Scripts**: Use the scripts in the `sql` folder to query the DVD rental database.
- **Dashboards**: Open the files in the `dashboards` folder to view the analysis results visually.

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a Pull Request.

## License

This project is licensed under the MIT License.
