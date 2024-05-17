#Find the top 5 most unsubscribed from offers
Select Offer_id, count(Offer_id) From emails.unsubscribed Group By Offer_id Order By count(Offer_id) DESC Limit 5;

#Find top 10 most clicked offers
Select offer_id, sum(clicked) from emails.offer_details Group By offer_id  Order By sum(clicked) DESC Limit 10;

#Find top 10 most successful offers
Select offer_id, sum(success) from emails.offer_details Group By offer_id Order By sum(success) DESC Limit 10;

#Find the most active users
Select Customer_id, count(Customer_id), email_address from emails.activeemails Group By Customer_id, email_address 
Order By count(Customer_id) DESC Limit 5;

#Pull Details of most active users
Select activeemails.Customer_id, Count(activeemails.Customer_id),customer.email_address, group_id, mail_md5, hash_1, hash_2, hash_3
from emails.customer inner Join emails.activeemails
On customer.Customer_id = activeemails.Customer_id
Group BY Customer_id, email_address, group_id, mail_md5, hash_1, hash_2, hash_3
Having Count(activeemails.Customer_id) > 1;

#Find particular email users (gmail in this case)
Select * From emails.customer
Where email_address like '%@gmail.com';

#Find most successfull offer types
Select Distinct offer_type, sum(success) from emails.offer_details
Group By offer_type Order By sum(success) DESC Limit 3;

#Find details of offer with highest click ratio per emails sent
Select Distinct offer_id, sum(clicked)/sum(email_sent), offer_type from emails.offer_details
Group By offer_id, offer_type Order By sum(clicked)/sum(email_sent) DESC;




