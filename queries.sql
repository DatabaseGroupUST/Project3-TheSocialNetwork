-- Q1
select club_name from MEMBERSHIP where member_id =?;

-- Q2
select club_name, count(member_id)
from MEMBERSHIP
join student on (member_id = person_id)
where major = 'MATH'
group by club_name;

-- Q3
select club_name, count(person2a)
from MEMBERSHIP
join FRIENDS on (member_id = person1a or member_id = person2a)
where member_id = ? and status = 'ACCEPTED'
group by club_name;

-- Q4
select count(like_id) as c, liker_id
from LIKES
where author_id = ?
group by liker_id
order by c DESC
limit 3;

