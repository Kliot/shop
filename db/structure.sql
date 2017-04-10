CREATE TABLE "messages" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "products" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "title" varchar, "description" text, "image_url" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "price" decimal(8,2));
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nick" varchar, "email" varchar, "password_digest" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "role" varchar);
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
INSERT INTO "schema_migrations" (version) VALUES
('20170401182000'),
('20170402180927'),
('20170403143829'),
('20170407141502'),
('20170407150918');


