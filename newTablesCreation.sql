CREATE TABLE STUDENT_CLUBS
(
    club_name VARCHAR(255),
    primary_contact VARCHAR(255),
    mission_statement VARCHAR(5000)
    PRIMARY KEY (club_name)
);

CREATE TABLE MEMBERSHIP
(
    club_name VARCHAR(255),
    member_id INTEGER,
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (club_name),
    PRIMARY KEY (member_id),
    FOREIGN KEY (:)
membership
(*club_name, *member_id, start_id, end_date)
club_name -> student_clubs
member_id -> student

message_board
(*message_date, *author_id, club_name, message, num_of_likes)
club_name, author_id -> membership(club_name, member_id)

likes
(*liked_timestamp, *liker_id, club_name, author_id)
club_name, author_id, date -> message_board
liker_id -> membership(member_id)

friends
(*person_id, *person_id, friend_status, invite_status)
person_id -> student
person_id -> student


