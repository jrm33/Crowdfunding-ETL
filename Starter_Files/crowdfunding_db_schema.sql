-- Creating the table category 
CREATE TABLE "category" (
    "category_id" varchar   NOT NULL,
    "category" varchar   NOT NULL,
	
    PRIMARY KEY ("category_id")
	
);

-- Creating the table contacts 
CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "email" varchar   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
	
);

-- Creating the table subcategory 
CREATE TABLE "subcategory" (
    "subcategory_id" varchar   NOT NULL,
    "subcategory" varchar   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
	
);

-- Creating the table campaign 
CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar   NOT NULL,
    "desciption" varchar   NOT NULL,
    "goal" float8   NOT NULL,
    "pledged" float8   NOT NULL,
    "outcome" varchar   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar   NOT NULL,
    "currency" varchar   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "category_id" varchar   NOT NULL,
    "subcategory_id" varchar   NOT NULL,
	Foreign KEY ("category_id") References "category" (category_id),
	Foreign KEY ("contact_id") References "contacts" (contact_id),
	Foreign KEY ("subcategory_id") References "subcategory" (subcategory_id),
	CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

select * from campaign;
select * from contacts;
select * from category;
select * from subcategory;