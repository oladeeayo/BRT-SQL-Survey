# BRT-SQL-Survey

The full project details can be found here https://obukofe.notion.site/obukofe/SQL-Survey-501f61a843ab4a60879e60601eedeaac

## Synopsis

**This project makes use of the Lagos Metropolitan BRT (Bus Rapid Transit) System.** 

<aside>
💡 *A Bus Rapid Transit System is defined as a high-quality bus-based transit system that delivers fast, comfortable and cost-effective services at metro-level capacities. It does this through the provision of dedicated lanes with busways and stations/terminals aligned for fare collections and operational purposes.*

</aside>

Jane, the managing director of the Lagos Metropolitan BRT service is having a bit of trouble managing her database. As well as database management, she intends to ask important questions like *“What are the top locations based on arrival popularity?”* or *“Who are the top performing drivers?”.* 

She uses a Microsoft Excel Sheet to keep track of the passengers registered under the system, the trips they make on a daily basis, the drivers handling those trips, as well as the bus fleet and the details about each bus carrying passengers. She also records the licenses of the drivers as well as their phone numbers to make sure she has well-experienced, accountable and license-valid drivers in her company. The major issue however that Jane is facing is data management. She’s losing track of the trip information and her ‘database’ is also looking a lot messier than when it started. She needs our help!


##Schema Design

Here is the schema design for this survey
![image](https://user-images.githubusercontent.com/13979269/220179375-b60b82da-6a9b-4cd1-bd03-4b2629602671.png)



Jane has questions of her own she would like to know the answers to. Let’s get to it 🚀

1. 🎯 **Arrival Location Rankings**. Jane noticed that some arrival locations stand out more than the others and she intends to find out where her passengers head to the most. She needs a table of the top 5 arrival locations sorted in descending order. Can you help her with that?
2. 🎯 **Top Performing Drivers**. Jane is keen on employee retention and she’s planning on rewarding her top drivers. She needs to know the top 10 performing drivers based on the number of trips they’ve handled. For this, it would be best if we had a table containing their full names, their NIN’s and the number of trips they’ve handled. Let’s help Jane make that work!
3. 🎯 **Frequent Passengers**. Jane is a wonderful boss, and she loves her customers. She intends to reward her top 10 customers by offering 50% discounts on their next trips. The problem however is that she doesn’t exactly know which passengers are her most frequent. She needs a table containing the passenger’s full name, their email address and the number of trips they’ve taken sorted in descending order. 
4. 🎯 **Driver - Vehicle Pairings**. Jane lost track of her drivers and their paired vehicles. She needs your help! She wants to know the current current driver - vehicle pairings. To help her, let’s create a table containing the full names of the driver and the buses they are paired to. She’d also like to see some few details of the vehicle such as the plate number and the model.
5. 🎯 **Highest Issue Dates**. Jane has been impressed by your work so far but she needs one more thing. She wants to know the issue dates where her customers had the highest number of card issues for trips payment. She wants the list sorted by top 5 issue dates in descending order and also the number of cards issued. Let’s help her with that.
