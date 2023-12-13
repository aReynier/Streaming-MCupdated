-- Generated by the database client.
CREATE TABLE "user"(
    user_id SERIAL NOT NULL,
    email varchar(255),
    password varchar(255),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(user_id)
);
COMMENT ON TABLE ""user"" IS 'This is a table for users';
COMMENT ON COLUMN "user".email IS 'This is a column for user emails';
COMMENT ON COLUMN "user".password IS 'This is a column for user passwords';
COMMENT ON COLUMN "user".created_at IS 'This is a column for user created at';
COMMENT ON COLUMN "user".updated_at IS 'This is a column for user updated at';
-- Path: tables/director.sql