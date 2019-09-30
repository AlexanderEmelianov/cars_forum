insert into users (id, username, password, active)
values (1, 'admin', '$2a$08$ABHqkG7o3hp8qZ0PeC6sAuF8Wnm8OMw8yG4TaIA6n17KHnY15uOue', true);

insert into user_role (user_id, roles)
values (1, 'USER'), (1, 'ADMIN');