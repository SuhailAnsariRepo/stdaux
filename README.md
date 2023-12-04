Question-1
You have a table “Trans” having following data structure:
CustomerID INT, TransDate DATETIME, TransType CHAR (1), Amount MONEY
Trans Table has following data:

Write the following queries:
1. Display Trans Table records with following columns CustomerID, TransDate, WeekDay, TransType, Amount Where
TransType should display “Credit” for “C” and “Debit for “D” And WeekDay is TransDate of WeekDay, e.g. Today’s
Date is “Apr 17 2006” and Today WeekDay is “Monday”
2. Display Trans Table records with following columns CustomerID, TransDate, Credit Amount, Debit Amount, Where
Credit Amount is Amount When TransType = ‘C’ Where Debit Amount is Amount When TransType = ‘D’ Display Null
Value as “0.00” Display Amount with Two Decimal. Display TransDate with “MM/dd/yyyy” Format
3. Same as 2, but display the records where TransDate Month belongs to “4” month And Year = 2005
4. Same as 2, but display the records where TransDate is StartDate of the Month
5. Same as 2, but display the records where TransDate is EndDate of the Month
6. Display Trans Table records with following columns CustomerID, Year, Credit Total Amount, Debit Total Amount I
need Total for each CustomerID, Year Where Credit Total Amount and Debit Total Amount is Sum of Amount Null
Amount should display as 0.00

Question-2
How to pass an array using call by value in C ? Assuming array is declared locally that is inside main() ?

Question-3
Which line will show error and why?
```
#include<stdio.h>
int main(){
char *a = "India";
char b[] = "India";
a = a+1;//line 5
b = b+1;//line 6
}
```

Question-4
Write a simple web server in C (not C++) which accepts HTTP requests (eg. GET requests for HTML pages) and return
responses (eg. HTML pages showing parameters passed with GET request).

Question-5
Design and Code a simple clone app of Tesla Powerhub software based on Chromium Embedded Framework? Link
attached for reference - https://www.tesla.com/support/energy/tesla-software/powerhub.
For this question, you may ask the support from the StdAux team in the response and development.# stdaux
