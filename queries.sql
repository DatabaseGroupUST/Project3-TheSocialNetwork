-- Q1
select club_name from MEMBERSHIP where member_id =?;

-- Q2
select club_name, count(member_id)
from MEMBERSHIP
join student on (member_id = person_id)
where major = 'MATH'
group by club_name;

-- Q3
select club_name, count(member_id)
from MEMBERSHIP
where exists (select * from FRIENDS where person1a = ? and person2a = member_id and status = 'ACCEPTED')
group by club_name;

-- Q4
select count(like_id) as c, liker_id
from LIKES
where author_id = ?
group by liker_id
order by c DESC
limit 3;

-- Q3
SELECT 
    m.club_name, 
    count(m.member_id)
FROM
    membership AS m, 
    friends AS f
WHERE
    person1a = person2b AND
    person1a = [target student_id] AND
    status = 'ACCEPTED'
group by club_name;
