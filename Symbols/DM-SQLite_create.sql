begin transaction;
drop index if exists "capacitor_manufacturer_1";
drop index if exists "capacitor_vender_1";
drop table if exists "capacitor";
create table "capacitor" (
    "id" text primary key not null,
	"datasheet" text not null,
	"datasheet_local" text,
	"desc" text not null,
	"description" text not null default "Crap",
	"exclude_from_board" integer not null default 0,
	"exclude_from_bom" integer not null default 0,
	"footprint" text not null,
	"height" text not null,
	"keywords" text not null default 'C capacitor non-polarized',
	"manufacturer_name" text not null,
	"manufacturer_pn" text not null,
	"package" text not null,
	"sub_requirements" text not null default 'No sub',
	"symbol" text not null,
	"type" text not null default 'SMD',
	"value" text not null,
	"vendor_name" text not null,
	"vendor_pn" text not null,
	"vendor_pn_url" text not null,
    "qualification" text not null default '',
    "voltage" text not null default ''
	) strict;
create unique index "capacitor_manufacturer_1" on "capacitor" ("manufacturer_name", "manufacturer_pn");
create unique index "capacitor_vender_1" on "capacitor" ("vendor_name", "vendor_pn");

drop index if exists "connector_manufacturer_1";
drop index if exists "connector_vender_1";
drop table if exists "connector";
create table "connector" (
    "id" text primary key not null,
	"datasheet" text not null,
	"datasheet_local" text,
	"desc" text not null,
	"description" text not null default "Crap",
	"exclude_from_board" integer not null default 0,
	"exclude_from_bom" integer not null default 0,
	"footprint" text not null,
	"height" text not null,
	"keywords" text not null default 'J connector FFC FPC',
	"manufacturer_name" text not null,
	"manufacturer_pn" text not null,
	"package" text not null,
	"sub_requirements" text not null default 'No sub',
	"symbol" text not null,
	"type" text not null default 'SMD',
	"value" text not null,
	"vendor_name" text not null,
	"vendor_pn" text not null,
	"vendor_pn_url" text not null,
    "current" text not null default '',
    "voltage" text not null default ''
	) strict;
create unique index "connector_manufacturer_1" on "connector" ("manufacturer_name", "manufacturer_pn");
create unique index "connector_vender_1" on "connector" ("vendor_name", "vendor_pn");

drop index if exists "diode_manufacturer_1";
drop index if exists "diode_vender_1";
drop table if exists "diode";
create table "diode" (
    "id" text primary key not null,
	"datasheet" text not null,
	"datasheet_local" text,
	"desc" text not null,
	"description" text not null default "Crap",
	"exclude_from_board" integer not null default 0,
	"exclude_from_bom" integer not null default 0,
	"footprint" text not null,
	"height" text not null,
	"keywords" text not null default 'D diode',
	"manufacturer_name" text not null,
	"manufacturer_pn" text not null,
	"package" text not null,
	"sub_requirements" text not null default 'No sub',
	"symbol" text not null,
	"type" text not null default 'SMD',
	"value" text not null,
	"vendor_name" text not null,
	"vendor_pn" text not null,
	"vendor_pn_url" text not null,
    "current" text not null default '',
    "power" text not null default '',
    "qualification" text not null default '',
    "voltage" text not null default ''
	) strict;
create unique index "diode_manufacturer_1" on "diode" ("manufacturer_name", "manufacturer_pn");
create unique index "diode_vender_1" on "diode" ("vendor_name", "vendor_pn");

drop index if exists "led_manufacturer_1";
drop index if exists "led_vender_1";
drop table if exists "led";
create table "led" (
    "id" text primary key not null,
    "color" text not null,
	"datasheet" text not null,
	"datasheet_local" text,
	"desc" text not null,
	"description" text not null default "Crap",
	"exclude_from_board" integer not null default 0,
	"exclude_from_bom" integer not null default 0,
	"footprint" text not null,
	"height" text not null,
	"keywords" text not null default 'LED led',
	"manufacturer_name" text not null,
	"manufacturer_pn" text not null,
	"package" text not null,
	"sub_requirements" text not null default 'No sub',
	"symbol" text not null,
	"type" text not null default 'SMD',
	"value" text not null,
	"vendor_name" text not null,
	"vendor_pn" text not null,
	"vendor_pn_url" text not null,
	"current" text not null default '',
	"power" text not null default '',
	"qualification" text not null default '',
	"voltage" text not null default ''
	) strict;
create unique index "led_manufacturer_1" on "led" ("manufacturer_name", "manufacturer_pn");
create unique index "led_vender_1" on "led" ("vendor_name", "vendor_pn");

drop index if exists "resistor_manufacturer_1";
drop index if exists "resistor_vender_1";
drop table if exists "resistor";
create table "resistor" (
    "id" text primary key not null,
	"datasheet" text not null,
	"datasheet_local" text,
	"desc" text not null,
	"description" text not null default "Crap",
	"exclude_from_board" integer not null default 0,
	"exclude_from_bom" integer not null default 0,
	"footprint" text not null,
	"height" text not null,
	"keywords" text not null default 'R res resistor',
	"manufacturer_name" text not null,
	"manufacturer_pn" text not null,
	"package" text not null,
	"sub_requirements" text not null default 'No sub',
	"symbol" text not null,
	"type" text not null default 'SMD',
	"value" text not null,
	"vendor_name" text not null,
	"vendor_pn" text not null,
	"vendor_pn_url" text not null,
    "current" text not null default '',
    "power" text not null default '',
    "qualification" text not null default '',
    "voltage" text not null default ''
	) strict;
create unique index "resistor_manufacturer_1" on "resistor" ("manufacturer_name", "manufacturer_pn");
create unique index "resistor_vender_1" on "resistor" ("vendor_name", "vendor_pn");

drop index if exists "switch_manufacturer_1";
drop index if exists "switch_vender_1";
drop table if exists "switch";
create table "switch" (
    "id" text primary key not null,
	"datasheet" text not null,
	"datasheet_local" text,
	"desc" text not null,
	"description" text not null default "Crap",
	"exclude_from_board" integer not null default 0,
	"exclude_from_bom" integer not null default 0,
	"footprint" text not null,
	"height" text not null,
	"keywords" text not null default 'SW switch dip',
	"manufacturer_name" text not null,
	"manufacturer_pn" text not null,
	"package" text not null,
	"sub_requirements" text not null default 'No sub',
	"symbol" text not null,
	"type" text not null default 'SMD',
	"value" text not null,
	"vendor_name" text not null,
	"vendor_pn" text not null,
	"vendor_pn_url" text not null,
    "current" text not null default '',
    "voltage" text not null default ''
	) strict;
create unique index "switch_manufacturer_1" on "resistor" ("manufacturer_name", "manufacturer_pn");
create unique index "switch_vender_1" on "resistor" ("vendor_name", "vendor_pn");

drop index if exists "transistor_fet_manufacturer_1";
drop index if exists "transistor_fet_vender_1";
drop table if exists "transistor_fet";
create table "transistor_fet" (
    "id" text primary key not null,
	"datasheet" text not null,
	"datasheet_local" text,
	"desc" text not null,
	"description" text not null default "Crap",
	"exclude_from_board" integer not null default 0,
	"exclude_from_bom" integer not null default 0,
	"footprint" text not null,
	"height" text not null,
	"keywords" text not null default 'Transistor MOSFET FET',
	"manufacturer_name" text not null,
	"manufacturer_pn" text not null,
	"package" text not null,
	"sub_requirements" text not null default 'No sub',
	"symbol" text not null,
	"type" text not null default 'SMD',
	"value" text not null,
	"vendor_name" text not null,
	"vendor_pn" text not null,
	"vendor_pn_url" text not null,
    "current" text not null default '',
    "power" text not null default '',
    "qualification" text not null default '',
    "voltage" text not null default ''
	) strict;
create unique index "transistor_fet_manufacturer_1" on "transistor_fet" ("manufacturer_name", "manufacturer_pn");
create unique index "transistor_fet_vender_1" on "transistor_fet" ("vendor_name", "vendor_pn");

drop index if exists "tvs_manufacturer_1";
drop index if exists "tvs_vender_1";
drop table if exists "tvs";
create table "tvs" (
    "id" text primary key not null,
	"datasheet" text not null,
	"datasheet_local" text,
	"desc" text not null,
	"description" text not null default "Crap",
	"exclude_from_board" integer not null default 0,
	"exclude_from_bom" integer not null default 0,
	"footprint" text not null,
	"height" text not null,
	"keywords" text not null default 'Bidirectional ESD Suppressor TVS',
	"manufacturer_name" text not null,
	"manufacturer_pn" text not null,
	"package" text not null,
	"sub_requirements" text not null default 'No sub',
	"symbol" text not null,
	"type" text not null default 'SMD',
	"value" text not null,
	"vendor_name" text not null,
	"vendor_pn" text not null,
	"vendor_pn_url" text not null,
    "current" text not null default '',
    "power" text not null default '',
    "qualification" text not null default '',
    "voltage" text not null default ''
	) strict;
create unique index "tvs_manufacturer_1" on "tvs" ("manufacturer_name", "manufacturer_pn");
create unique index "tvs_vender_1" on "tvs" ("vendor_name", "vendor_pn");

commit;
