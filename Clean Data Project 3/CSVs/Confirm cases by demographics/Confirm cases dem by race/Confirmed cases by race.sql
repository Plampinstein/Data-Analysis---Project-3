-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/yxwmDJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Cases_by_race_2020" (
    "Date" varchar   NOT NULL,
    "Asian" integer   NOT NULL,
    "Black" integer   NOT NULL,
    "Hispanic" integer   NOT NULL,
    "Other" integer   NOT NULL,
    "White" integer   NOT NULL,
    "Unknown" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_race_2020" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Cases_by_race_2021" (
    "Date" varchar   NOT NULL,
    "Asian" integer   NOT NULL,
    "Black" integer   NOT NULL,
    "Hispanic" integer   NOT NULL,
    "Other" integer   NOT NULL,
    "White" integer   NOT NULL,
    "Unknown" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_race_2021" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Cases_by_race_2022" (
    "Date" varchar   NOT NULL,
    "Asian" integer   NOT NULL,
    "Black" integer   NOT NULL,
    "Hispanic" integer   NOT NULL,
    "Other" integer   NOT NULL,
    "White" integer   NOT NULL,
    "Unknown" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_race_2022" PRIMARY KEY (
        "Date"
     )
);

CREATE TABLE "Cases_by_race_2023" (
    "Date" varchar   NOT NULL,
    "Asian" integer   NOT NULL,
    "Black" integer   NOT NULL,
    "Hispanic" integer   NOT NULL,
    "Other" integer   NOT NULL,
    "White" integer   NOT NULL,
    "Unknown" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_race_2023" PRIMARY KEY (
        "Date"
     )
);

