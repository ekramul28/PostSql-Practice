CREATE TABLE "user"(
     id SERIAL PRIMARY KEY,
     username VARCHAR(25) NOT NULL
)

CREATE TABLE post(
     id SERIAL PRIMARY KEY,
     title TEXT NOT NULL,
     user_id INTEGER REFERENCES "user"(id)
)

INSERT INTO "user" (username) VALUES
      ('Ekramul'),
      ('Yasin'),
      ('mukta'),
      ('shown');

INSERT INTO post (title,user_id)VALUES
('hi my name is Md Ekramul hassan',1)      
('hi my name is Md yasin',2)      
('hi ke onsta sobr',3)      
('hello how can i help this for think had to  ',4)      