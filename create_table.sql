DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS class;
DROP TABLE IF EXISTS class_member_list;

create table member
    (
    member_id  varchar(30),
    member_name varchar(20) not null,
    member_password   binary(60) not null,
    member_phone varchar(13),
    member_gender char(1) not null default 'M',
    member_birth  date not null,
    inbody_info varchar(100),
    locker_info varchar(100),
    cloth_rental boolean not null,
    member_credit    numeric(4, 0) default 0,

    primary key(member_id)
    );

create table manager
    (
    manager_id varchar(30),
    manager_name varchar(20),
    manager_password  binary(60) not null,
    manager_phone varchar(13),

    primary key (manager_id)
    );

    CREATE TABLE class (
  class_id varchar(10),
  class_name VARCHAR(30),
  manager_id varchar(30),
  capacity numeric(3),
  start_date DATE,
  end_date DATE,
  start_time TIME,
  end_time TIME,
  active_days VARCHAR(50)
  
      primary key (class_id),
    foreign key (manager_id) references manager (manager_id)
        on delete set null
);


create table class_member_list
    (
    class_id varchar(10),
    member_id varchar(30),

    primary key(class_id, member_id),
    foreign key (class_id) references class (class_id)
        on delete cascade,
    foreign key (member_id) references member (member_id)
        on delete cascade
    );