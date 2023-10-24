-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/yxwmDJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Cases_by_sex_2020" (
    "Date" varchar   NOT NULL,
    "Male" integer   NOT NULL,
    "Female" integer   NOT NULL,
    "Unknown" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_sex_2020" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Cases_by_sex_2021" (
    "Date" varchar   NOT NULL,
    "Male" integer   NOT NULL,
    "Female" integer   NOT NULL,
    "Unknown" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_sex_2021" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Cases_by_sex_2022" (
    "Date" varchar   NOT NULL,
    "Male" integer   NOT NULL,
    "Female" integer   NOT NULL,
    "Unknown" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_sex_2022" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Cases_by_sex_2023" (
    "Date" varchar   NOT NULL,
    "Male" integer   NOT NULL,
    "Female" integer   NOT NULL,
    "Unknown" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_sex_2023" PRIMARY KEY (
        "Date"
     )
);

