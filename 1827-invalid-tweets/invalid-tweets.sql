/* Write your T-SQL query statement below */
Select tweet_id
From Tweets
WHERE LEN(content) > 15  