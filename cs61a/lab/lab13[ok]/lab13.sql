.read data.sql


CREATE TABLE bluedog AS
  SELECT color,pet FROM students WHERE color="blue" AND pet="dog";
  --行名用逗号分隔，要求用and or这类逻辑词

CREATE TABLE bluedog_songs AS
  SELECT color,pet,song FROM students WHERE color="blue" AND pet="dog";


CREATE TABLE matchmaker AS
  SELECT a.pet , a.song , a.color , b.color
  FROM students AS a, students AS b--先FROM
  WHERE a.pet=b.pet AND a.song=b.song AND a.time<b.time;


CREATE TABLE sevens AS
  SELECT a.seven--为啥不是number（
  FROM students AS a, numbers AS b
  WHERE a.number=7 AND b.'7' ='True' AND a.time=b.time;

CREATE TABLE favpets AS
  SELECT pet,COUNT(pet)
  FROM students
  GROUP BY pet
  ORDER BY COUNT(pet)
  desc LIMIT 10;


CREATE TABLE dog AS
  SELECT pet,COUNT(pet)
  FROM students
  WHERE pet='dog';


CREATE TABLE bluedog_agg AS
  SELECT song,COUNT(song)
  FROM bluedog_songs
  GROUP BY song
  ORDER BY COUNT(song) desc;


CREATE TABLE instructor_obedience AS
  SELECT seven,instructor,COUNT(*)
  FROM students
  WHERE seven='7'
  GROUP BY instructor;
--注意group by和limit的用法
