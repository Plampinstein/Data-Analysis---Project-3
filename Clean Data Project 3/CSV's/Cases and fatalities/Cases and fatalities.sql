-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/yxwmDJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Cases_and_fatalities_2020" (
    "county_name" varchar   NOT NULL,
    "confirmed_cases" integer   NOT NULL,
    "fatalities" integer   NOT NULL,
    CONSTRAINT "pk_Cases_and_fatalities_2020" PRIMARY KEY (
        "county_name"
     )
);

CREATE TABLE "Cases_and_fatalities_2021" (
    "county_name" varchar   NOT NULL,
    "confirmed_cases" integer   NOT NULL,
    "fatalities" integer   NOT NULL,
    CONSTRAINT "pk_Cases_and_fatalities_2021" PRIMARY KEY (
        "county_name"
     )
);

CREATE TABLE "Cases_and_fatalities_2022" (
    "county_name" varchar   NOT NULL,
    "confirmed_cases" integer   NOT NULL,
    "fatalities" integer   NOT NULL,
    CONSTRAINT "pk_Cases_and_fatalities_2022" PRIMARY KEY (
        "county_name"
     )
);

CREATE TABLE "Cases_and_fatalities_2023" (
    "county_name" varchar   NOT NULL,
    "confirmed_cases" integer   NOT NULL,
    "fatalities" integer   NOT NULL,
    CONSTRAINT "pk_Cases_and_fatalities_2023" PRIMARY KEY (
        "county_name"
     )
);

