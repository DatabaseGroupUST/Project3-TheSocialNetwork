DROP TABLE FRIENDS;
DROP TABLE LIKES;
DROP TABLE MESSAGE_BOARD;
DROP TABLE MEMBERSHIP;
DROP TABLE STUDENT_CLUBS;


CREATE TABLE STUDENT_CLUBS
(
    club_name VARCHAR(255),
    primary_contact INTEGER NOT NULL,
    mission_statement VARCHAR(5000),
    PRIMARY KEY (club_name),
    FOREIGN KEY (primary_contact) REFERENCES student(person_id)
);

CREATE TABLE MEMBERSHIP
(
    club_name VARCHAR(255) NOT NULL,
    member_id INTEGER NOT NULL,
    start_id DATE NOT NULL,
    end_date DATE NULL,
    PRIMARY KEY (club_name, member_id),
    FOREIGN KEY (club_name) REFERENCES STUDENT_CLUBS(club_name),
    FOREIGN KEY (member_id) REFERENCES student(person_id)
);

CREATE TABLE MESSAGE_BOARD
(
    message_id INTEGER NOT NULL AUTO_INCREMENT,
    author_id INTEGER NOT NULL,
    club_name VARCHAR(255) NOT NULL,
    message TEXT NOT NULL,
    PRIMARY KEY (message_id),
    FOREIGN KEY (club_name, author_id) REFERENCES MEMBERSHIP(club_name, member_id)
);

CREATE TABLE LIKES
(
    like_id INTEGER NOT NULL AUTO_INCREMENT,
    liked_timestamp TIMESTAMP NOT NULL,
    liker_id INTEGER NOT NULL,
    club_name VARCHAR(255) NOT NULL,
    author_id INTEGER NOT NULL,
    message_id INTEGER NOT NULL,
    PRIMARY KEY(like_id),
    FOREIGN KEY (club_name, liker_id) REFERENCES MEMBERSHIP(club_name, member_id)
);

CREATE TABLE FRIENDS
(
    friend_id INTEGER NOT NULL AUTO_INCREMENT,
    person1a INTEGER NOT NULL,
    person2a INTEGER NOT NULL,
    person2b INTEGER NOT NULL,
    person1b INTEGER NOT NULL,
    status ENUM('INVITED', 'ACCEPTED' , 'REJECTED') NOT NULL,
    PRIMARY KEY (friend_id),
    FOREIGN KEY (person1a) REFERENCES student(person_id),
    FOREIGN KEY (person1b) REFERENCES student(person_id),
    FOREIGN KEY (person2a) REFERENCES student(person_id),
    FOREIGN KEY (person2b) REFERENCES student(person_id)
);
