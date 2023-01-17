# Fraud_Challenge
Assignment #6, Module 7 Challenge Assignment

## Background for Assignment
Fraud is prevalent these days, whether you are a small taco shop or a large international business. While there are emerging technologies that employ machine learning and artificial intelligence to detect fraud, many instances of fraud detection still require strong data analytics to find abnormal charges.

## Instructions
Original Instructions included in the Instructions.md file

## Part 1:

### Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders.

* How can you isolate (or group) the transactions of each cardholder?
    * You can group the transactions of each cardholder by linking the "Transaction", "Credit_Card" and "Cardholder" tables together.

* Count the Transactions that are less than $2.00 per cardholder
    * See the queries.sql file for details on how this data was obtained.  The results can also be seen in the "Transactions Under $2.00 by Cardholder" csv file.  The results are:
![Chart](./Images/Transactions_Under_2_by_Cardholder.png)

* Is there any evidence to suggest that a credit card has been hacked?
    * Given that this by by cardholder and not credit card, it's hard to determine if anything is going on.  As one cardholder may have more than one card, we cannot tell if higher numbers are due to a higher number of cards or a higher number of transacations. If we look at this data by credit card we may get a better idea.  
    * See the queries.sql file for details on how this data was obtained.  The results can also be seen in the "Transactions Under $2.00 by Card" csv file.  The top 42 results are:
![Chart](./Images/Transactions_Under_2_by_Card.png)

    * Based on this, we may believe that some of the Credit Cards may have been hacked, however, there is no time information here, so it's still difficult to draw any conclusions.

### Take your investigation a step futher by considering the time period in which potentially fraudulent transactions are made. 

* What are the top 100 highest transactions made between 7:00 am and 9:00 am?
    * See the queries.sql file for details on how this data was obtained.  The full results can also be seen in the "Top_100_AM" csv file.  The top 42 results are:<br>
![Chart](./Images/Top_100_AM.png)

* Do you see any anomalous transactions that could be fraudulent?
    * There are some transactions that may be abnormally high.  The Top 7 are all over $1,000, the 8th and 9th are over $99 and then the rest are all under $25.  These may be odd transactions or they may be fraudulant, but there is nothing conclusive.

* Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?
    * Since we have not really been able to define what fraudulent transactions are, this question cannot be answered.  Looking at transactions during the rest of the day, there are still high and low transactions.  From this basic analysis, I would say that no definitive answers can be given.
    * I have also looked at the highest transactions during the rest of the day.  See the queries.sql file for details on how this data was obtained.  The full results can also be seen in the "Highest 100 Other Transactions" csv file.  The top 42 results are:<br>
![Chart](./Images/Top_100_Other.png)

* If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.
    * My answer above is inconclusive, so there is no explaination available here.

* What are the top 5 merchants prone to being hacked using small transactions?
    * See the queries.sql file for details on how this data was obtained.  The full results can also be seen in the "Transactions Under $2.00 by Merchant" csv file.  The top 5 results are:<br>
![Chart](./Images/Transactions_Under_2_by_Merchant.png)

## Part 2

### The two most important customers of the firm may have been hacked. Verify if there are any fraudulent transactions in their history. For privacy reasons, you only know that their cardholder IDs are 2 and 18.

* Using hvPlot, create a line plot representing the time series of transactions over the course of the year for each cardholder separately. 

![Card Holder 2](./Images/Cardholder_2_Transactions.png)
![Card Holder 18](./Images/Cardholder_18_Transactions.png)

* Next, to better compare their patterns, create a single line plot that contains both card holders' trend data.  
![Card Holder 2 and 18](./Images/Cardholder_2_18_Transactions.png)

* What difference do you observe between the consumption patterns? Does the difference suggest a fraudulent transaction? Explain your rationale.
    * From these charts, we can observe that each cardholder has different spending habits or possibly shows fraudulent transactions.  Cardholder 2 has a lot of variability in thier transactions, but all between about $2 and $20.  Cardholder 18 has some variability, but the small transactions are barely noticable between the very large transactions.  You see huge spikes in the line graphs which may indicate fraudulant transactions.

### The CEO of the biggest customer of the firm suspects that someone has used her corporate credit card without authorization in the first quarter of 2018 to pay quite expensive restaurant bills. Again, for privacy reasons, you know only that the cardholder ID in question is 25.

* Using hvPlot, create a box plot, representing the expenditure data from January 2018 to June 2018 for cardholder ID 25.

![Card Holder 25](./Images/Cardholder_25_Boxplot.png)
  
* Are there any outliers for cardholder ID 25? How many outliers are there per month?
    * From this box plot, we can see that there are outliers for Cardholder25.  There are the following outliers:<br>
        * No Outliers in February
        * 1 Outlier in January, March and May
        * 3 Outliers in April and June
<br>
<br>
* Do you notice any anomalies? Describe your observations and conclusions.
    * The anomalies are the outliers.  You can see most months have at least one outlier.  It's hard to see from the graph, but if we zoom in 'hide' the outliers we can see that there are variances between the months.
![Card Holder 25 Zoomed](./Images/Cardholder_25_Boxplot_Zoomed.png)




    



