CREATE table role  (
	id bigint NOT null primary key	auto_increment,
    name varchar(255) not null,
    code varchar(255) not null,
    createddate timestamp null,
    modifieddate timestamp null,
    createby varchar(255) null,
    modifiedby varchar(255) null
);

CREATE table user  (
	id bigint NOT null primary key	auto_increment,
    username varchar(150) not null,
    password varchar(150) not null,
    fullname varchar(150)  null,
    status int not null,
    roleid bigint not null,
    createddate timestamp null,
    modifieddate timestamp null,
    createby varchar(255) null,
    modifiedby varchar(255) null
);
ALTER TABLE user ADD CONSTRAINT fk_user_role foreign key (roleid) references role(id);

CREATE table news (
	id bigint NOT null primary key	auto_increment,
    title varchar(255)  null,
    thumbnail varchar(255) null,
    shortdescription text not  null,
    content text null,
    categoryid bigint not null,
    createddate timestamp null,
    modifieddate timestamp null,
    createby varchar(255) null,
    modifiedby varchar(255) null
);

CREATE table category (
	id bigint NOT null primary key	auto_increment,
    name varchar(255) not null,
    code varchar(255) not null,
    createddate timestamp null,
    modifieddate timestamp null,
    createby varchar(255) null,
    modifiedby varchar(255) null
);

ALTER TABLE news ADD CONSTRAINT fk_news_category foreign key (categoryid) references category(id);


CREATE table comment (
	id bigint NOT null primary key	auto_increment,
    content text not null,
    user_id bigint not null,
    new_id bigint not null,
    createddate timestamp null,
    modifieddate timestamp null,
    createby varchar(255) null,
    modifiedby varchar(255) null
);
ALTER TABLE comment ADD CONSTRAINT fk_comment_user foreign key (user_id) references user(id);

ALTER TABLE comment ADD CONSTRAINT fk_comment_news foreign key (new_id) references news(id);