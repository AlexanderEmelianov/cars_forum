create sequence hibernate_sequence start l increment l;

create table message (
  id bigint not null,
  filename varchar(255),
  tag varchar(255),
  text varchar(2048),
  user_id bigint,
  primary key (id)
);

create table user_role (
  user_id bigint not null,
  roles varchar(255)
);

create table users (
  id bigint not null,
  activation_code varchar(255),
  active bit not null,
  email varchar(255),
  password varchar(255),
  username varchar(255),
  primary key (id)
);

alter table message
  add constraint message_user_fk
  foreign key (user_id) references users (id);

alter table user_role
  add constraint user_role_fk
  foreign key (user_id) references users (id);
