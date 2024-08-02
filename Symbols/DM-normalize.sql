drop index if exists "manufacturer_name_1";
drop table if exists "manufacturer";
CREATE TABLE "manufacturer" (
    "id" integer primary key not null,
    "name" text not null,
    "url" text,
    "createdOn" integer not null default CURRENT_TIMESTAMP,
    "updatedOn" integer
);
create unique index "manufacturer_name_1" on "manufacturer" ("name");
create trigger if not exists manufacturer_updated_on_1
    after update on manufacturer for each row
    when NEW.updatedOn = OLD.updatedOn or OLD.updatedOn is null
    begin
        update manufacturer set updatedOn = CURRENT_TIMESTAMP where id=NEW.id;
    end;

drop index if exists "vendor_name_1";
drop table if exists "vendor";
CREATE TABLE "vendor" (
    "id" integer primary key not null,
    "name" text not null,
    "url" text,
    "createdOn" integer not null default CURRENT_TIMESTAMP,
    "updatedOn" integer
);
create unique index "vendor_name_1" on "vendor" ("name");
create trigger if not exists vendor_updated_on_1
    after update on vendor for each row
    when NEW.updatedOn = OLD.updatedOn or OLD.updatedOn is null
    begin
        update vendor set updatedOn = CURRENT_TIMESTAMP where id=NEW.id;
    end;
