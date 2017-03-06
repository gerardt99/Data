DROP TABLE IF EXISTS application;
DROP TABLE IF EXISTS assignee;
DROP TABLE IF EXISTS claim;
DROP TABLE IF EXISTS cpc_current;
DROP TABLE IF EXISTS cpc_group;
DROP TABLE IF EXISTS cpc_subgroup;
DROP TABLE IF EXISTS cpc_subsection;
DROP TABLE IF EXISTS foreigncitation;
DROP TABLE IF EXISTS government_interest;
DROP TABLE IF EXISTS government_organization;
DROP TABLE IF EXISTS inventor;
DROP TABLE IF EXISTS ipcr;
DROP TABLE IF EXISTS lawyer;
DROP TABLE IF EXISTS location;
DROP TABLE IF EXISTS location_assignee;
DROP TABLE IF EXISTS location_inventor;
DROP TABLE IF EXISTS mainclass;
DROP TABLE IF EXISTS mainclass_current;
DROP TABLE IF EXISTS nber;
DROP TABLE IF EXISTS nber_category;
DROP TABLE IF EXISTS nber_subcategory;
DROP TABLE IF EXISTS otherreference;
DROP TABLE IF EXISTS patent;
DROP TABLE IF EXISTS patent_assignee;
DROP TABLE IF EXISTS patent_contractawardnumber;
DROP TABLE IF EXISTS patent_govintorg;
DROP TABLE IF EXISTS patent_inventor;
DROP TABLE IF EXISTS patent_lawyer;
DROP TABLE IF EXISTS rawassignee;
DROP TABLE IF EXISTS rawinventor;
DROP TABLE IF EXISTS rawlawyer;
DROP TABLE IF EXISTS rawlocation;
DROP TABLE IF EXISTS subclass;
DROP TABLE IF EXISTS subclass_current;
DROP TABLE IF EXISTS usapplicationcitation;
DROP TABLE IF EXISTS uspatentcitation;
DROP TABLE IF EXISTS uspc;
DROP TABLE IF EXISTS uspc_current;
DROP TABLE IF EXISTS usreldoc;
DROP TABLE IF EXISTS wipo;
DROP TABLE IF EXISTS wipo_field;

-------------------------------------------------

CREATE TABLE IF NOT EXISTS application (
	id		VARCHAR(36),
	patent_id	VARCHAR(20),
	series_code	VARCHAR(20),
	number		VARCHAR(64),
	country		VARCHAR(20),
	date		DATE
);

CREATE INDEX application_index ON application(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS assignee (
	id		VARCHAR(36) PRIMARY KEY,
	type		VARCHAR(10),
	name_first	VARCHAR(64),
	name_last	VARCHAR(64),
	organization	VARCHAR(256)
);

CREATE INDEX assignee_index ON assignee(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS claim (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	text		TEXT,
	dependent	INT,
	sequence	INT
);

CREATE INDEX claim_index ON claim(uuid);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS cpc_current (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	section_id	VARCHAR(10),
	subsection_id	VARCHAR(20),
	group_id	VARCHAR(20),
	subgroup_id	VARCHAR(20),
	category	VARCHAR(20),
	sequence	INT
);

CREATE INDEX cpc_current_index ON cpc_current(uuid);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS cpc_group (
	id		VARCHAR(20),
	title		VARCHAR(256)
);

CREATE INDEX cpc_group_index ON cpc_group(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS cpc_subgroup (
	id		VARCHAR(20),
	title		VARCHAR(256)
);

CREATE INDEX cpc_subgroup_index ON cpc_subgroup(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS cpc_subsection (
	id		VARCHAR(20),
	title		VARCHAR(256)
);

CREATE INDEX cpc_subsection_index ON cpc_subsection(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS foreigncitation (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	date		DATE,
	number		VARCHAR(64),
	country		VARCHAR(10),
	category	VARCHAR(20),
	sequence	INT
);

CREATE INDEX foreigncitation_index ON foreigncitation(uuid);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS inventor (
	id		VARCHAR(36) PRIMARY KEY,
	name_first	VARCHAR(64),
	name_last	VARCHAR(64)
);

CREATE INDEX inventor_index ON inventor(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS ipcr (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	classification_level	VARCHAR(20),
	section		VARCHAR(20),
	ipc_class	VARCHAR(20),
	subclass	VARCHAR(20),
	main_group	VARCHAR(20),
	subgroup	VARCHAR(20),
	symbol_position	VARCHAR(20),
	classification_value	VARCHAR(20),
	classification_status	VARCHAR(20),
	classification_data_source VARCHAR(20),
	action_date	DATE,
	ipc_version_indicator	DATE,
	sequence	INT
);

CREATE INDEX ipcr_index ON ipcr(uuid);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS lawyer (
	id		VARCHAR(36) PRIMARY KEY,
	name_first	VARCHAR(64),
	name_last	VARCHAR(64),
	organization	VARCHAR(64),
	country		VARCHAR(10)
);

CREATE INDEX lawyer_index ON lawyer(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS location (
	id		VARCHAR(128) PRIMARY KEY,
	city		VARCHAR(128),
	state		VARCHAR(20),
	country		VARCHAR(10),
	latitude	FLOAT,
	longitude	FLOAT
);

CREATE INDEX location_index ON location(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS location_assignee (
	location_id	VARCHAR(128),
	assignee_id	VARCHAR(36)
);

CREATE INDEX location_assignee_index ON location_assignee(location_id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS location_inventor (
	location_id	VARCHAR(128),
	inventor_id	VARCHAR(36)
);

CREATE INDEX location_inventor_index ON location_inventor(location_id);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS mainclass (
	id	VARCHAR(20)
);

CREATE INDEX mainclass_index ON mainclass(id);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS mainclass_current (
	id	VARCHAR(20),
	title	VARCHAR(256)
);

CREATE INDEX mainclass_current_index ON mainclass_current(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS nber (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	category_id	VARCHAR(20),
	subcategory_id	VARCHAR(20)
);

CREATE INDEX nber_index ON nber(uuid);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS nber_category (
	id	VARCHAR(20),
	title	VARCHAR(512)
);

CREATE INDEX nber_category_index ON nber_category(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS nber_subcategory (
	id	VARCHAR(20),
	title	VARCHAR(512)
);

CREATE INDEX nber_subcategory_index ON nber_subcategory(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS otherreference (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	text		TEXT,
	sequence	INT
);

CREATE INDEX otherreference_index ON otherreference(uuid);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS patent (
	id		VARCHAR(20),
	type		VARCHAR(20),
	number		VARCHAR(64),
	country		VARCHAR(20),	
	date		DATE,
	abstract	TEXT,
	title		TEXT,
	kind		VARCHAR(10),
	num_claims	INT,
	filename	VARCHAR(120)
);

CREATE INDEX patent_index ON patent(id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS patent_assignee (
	patent_id	VARCHAR(20),
	assignee_id	VARCHAR(36)
);

CREATE INDEX patent_assignee_index ON patent_assignee(patent_id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS patent_inventor (
	patent_id	VARCHAR(20),
	inventor_id	VARCHAR(36)
);

CREATE INDEX patent_inventor_index ON patent_inventor(patent_id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS patent_lawyer (
	patent_id	VARCHAR(20),
	lawyer_id	VARCHAR(36)
);

CREATE INDEX patent_lawyer_index ON patent_lawyer(patent_id);


-------------------------------------------------

CREATE TABLE IF NOT EXISTS rawassignee (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	assignee_id	VARCHAR(36),
	rawlocation_id	VARCHAR(256),
	type		VARCHAR(10),
	name_first	VARCHAR(64),
	name_last	VARCHAR(64),
	organization	VARCHAR(256),
	sequence	INT
);

CREATE INDEX rawassignee_index ON rawassignee(uuid);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS rawinventor (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	inventor_id	VARCHAR(36),
	rawlocation_id	VARCHAR(256),
	name_first	VARCHAR(64),
	name_last	VARCHAR(64),
	sequence	INT
);

CREATE INDEX rawinventor_index ON rawinventor(uuid);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS rawlawyer (
	uuid		VARCHAR(36) PRIMARY KEY,
	lawyer_id	VARCHAR(36),
	patent_id	VARCHAR(20),
	name_first	VARCHAR(64),
	name_last	VARCHAR(64),
	organization	VARCHAR(64),
	country		VARCHAR(10),
	sequence	INT
);

CREATE INDEX rawlawyer_index ON rawlawyer(uuid);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS rawlocation (
	id		VARCHAR(128) PRIMARY KEY,
	location_id	VARCHAR(128),
	city		VARCHAR(128),
	state		VARCHAR(10),
	country		VARCHAR(10),
	latlong		TEXT
);

CREATE INDEX rawlocation_index ON rawlocation(id);




-------------------------------------------------

CREATE TABLE IF NOT EXISTS subclass (
	id		VARCHAR(20)
);

CREATE INDEX subclass_index ON subclass(id);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS subclass_current (
	id		VARCHAR(20),
	title		VARCHAR(512)
);

CREATE INDEX subclass_current_index ON subclass_current(id);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS usapplicationcitation (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	application_id	VARCHAR(20),
	date		DATE,
	name		VARCHAR(5),
	kind		VARCHAR(10),
	number		VARCHAR(64),
	country		VARCHAR(10),
	category	VARCHAR(20),
	sequence	INT
);

CREATE INDEX usapplicationcitation_index ON usapplicationcitation(uuid);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS uspatentcitation (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	citation_id	VARCHAR(20),
	date		DATE,
	name		VARCHAR(64),
	kind		VARCHAR(10),
	country		VARCHAR(10),
	category	VARCHAR(20),
	sequence	INT
);

CREATE INDEX uspatentcitation_index ON uspatentcitation(uuid);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS uspc (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	mainclass_id	VARCHAR(10),
	subclass_id	VARCHAR(10),
	sequence	INT
);

CREATE INDEX uspc_index ON uspc(uuid);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS uspc_current (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	mainclass_id	VARCHAR(10),
	subclass_id	VARCHAR(10),
	sequence	INT
);

CREATE INDEX uspc_current_index ON uspc_current(uuid);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS usreldoc (
	uuid		VARCHAR(36) PRIMARY KEY,
	patent_id	VARCHAR(20),
	rel_id		VARCHAR(20),
	doctype		VARCHAR(64),
	status		VARCHAR(20),
	date		DATE,
	number		VARCHAR(64),
	kind		VARCHAR(10),
	country		VARCHAR(20),
	relationship	VARCHAR(64),
	sequence	INT
);

CREATE INDEX usreldoc_index ON usreldoc(uuid);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS patent_contractawardnumber (
	patent_id			VARCHAR(255),
	contract_award_number		VARCHAR(255)
);

CREATE INDEX patent_contractawardnumber_index ON patent_contractawardnumber(patent_id);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS government_interest (
	patent_id	VARCHAR(255),
	gi_statement	TEXT
);

CREATE INDEX government_interest_index ON government_interest(patent_id);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS patent_govintorg (
	patent_id	VARCHAR(255),
	organization_id	INT
);

CREATE INDEX patent_govintorg_index ON patent_govintorg(patent_id);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS government_organization (
	organization_id	INT PRIMARY KEY,
	name		VARCHAR(255),
	level_one	VARCHAR(255),
	level_two	VARCHAR(255),
	level_three	VARCHAR(255)
);

CREATE INDEX government_organization_index ON government_organization(organization_id);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS wipo (
	patent_id	VARCHAR(20),
	field_id	INT,
	sequence	INT
);

CREATE INDEX wipo_index ON wipo(patent_id);



-------------------------------------------------

CREATE TABLE IF NOT EXISTS wipo_field (
	id		INT,
	sector_title	VARCHAR(60),
	field_title	VARCHAR(60)
);

CREATE INDEX wipo_field_index ON wipo_field(id);

------------------------------------------------

.mode csv
.separator "\t"
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\application.tsv application
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\assignee.tsv assignee
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\claim.tsv claim
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\cpc_current.tsv cpc_current
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\cpc_group.tsv cpc_group
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\cpc_subgroup.tsv cpc_subgroup
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\cpc_subsection.tsv cpc_subsection
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\foreigncitation.tsv foriegncitation
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\government_interest.tsv government_interest
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\government_organization.tsv government_organization
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\inventor.tsv inventor
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\ipcr.tsv ipcr
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\lawyer.tsv lawyer
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\location.tsv location
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\location_assignee.tsv location_assignee
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\location_inventor.tsv location_inventor
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\mainclass.tsv mainclass
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\mainclass_current.tsv mainclass_current
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\nber.tsv nber
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\nber_category.tsv nber_category
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\nber_subcategory.tsv nber_subcategory
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\otherreference.tsv otherreference
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\patent.tsv patent
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\patent_assignee.tsv patent_assignee
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\patent_contractawardnumber.tsv patent_contractawardnumber
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\patent_govintorg.tsv patent_govintorg
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\patent_inventor.tsv patent_inventor
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\patent_lawyer.tsv patent_lawyer
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\rawassignee.tsv rawassignee
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\rawinventor.tsv rawinventor
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\rawlawyer.tsv rawlawyer
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\rawlocation.tsv rawlocation
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\subclass.tsv subclass
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\subclass_current.tsv subclass_current
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\usapplicationcitation.tsv usapplicationcitation
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\uspatentcitation.tsv uspatentcitation
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\uspc.tsv uspc
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\uspc_current.tsv uspc_current
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\usreldoc.tsv usreldoc
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\wipo.tsv wipo
.import C:\\Users\\gtorres\\Downloads\\PatentsView\\data\\wipo_field.tsv wipo_field
