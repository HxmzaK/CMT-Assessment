-- CMT Assessment, Hamza Khalid
-- Query for all drives by user Ken Miles

SELECT u.name, format(d.trip_start_ts, 'yyyy-MM-dd-HHmm') --https://stackoverflow.com/questions/31463457/how-to-convert-getdate-to-yyyy-mm-dd-hhmm-format
FROM Users u
JOIN Drives d ON u.id = d.user_id
WHERE u.name = 'Ken Miles';

/*
What changes would I make to this schema?
To the users table I would add the following fields:
Demographic Information like location, date of birth, phone number, email address
Customer Information like insurance policy # and expiration date, credit card information, coverage

To the Drives table I would add the following fields specific to a company utilizing CMT products:
Amount of times speeding, amount of phone motion, amount of screen interactions, amount of hard brakes, amount of harsh accelerations

I would add the following Claims table with example fields such as: 
ID, user_id, amount, claim status

Other possible tables added to this schema could be:
Policy table, Insurance Agent table

Improving the Query Results?
I might recommend adding the users name to the drives table on top of their user ID to make it easier to search for drives based on a user name if one does not know a users ID. This would optimize the query performance as you would not need to use a join.


