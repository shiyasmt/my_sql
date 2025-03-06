select now();select current_timestamp();
select curtime();
select curdate();
select dayname(`date of purchase`) as day_s,count(`transaction id`) as ct from railway group by day_s having ct>20 order by ct;
select dayname(`date of purchase`) as day_s,count(`transaction id`) as ct from railway group by day_s order by ct;
select monthname(`date of purchase`) as month_s,count(`transaction id`) as ct from railway group by month_s order by ct desc;