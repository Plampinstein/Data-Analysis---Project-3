-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/yxwmDJ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Cases_by_age_2020" (
    "Age" varchar   NOT NULL,
    "March_2020" integer   NOT NULL,
    "April_2020" integer   NOT NULL,
    "May_2020" integer   NOT NULL,
    "June_2020" integer   NOT NULL,
    "July_2020" integer   NOT NULL,
    "August_2020" integer   NOT NULL,
    "September_2020" integer   NOT NULL,
    "October_2020" integer   NOT NULL,
    "November_2020" integer   NOT NULL,
    "December_2020" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_age_2020" PRIMARY KEY (
        "Age"
     )
);

CREATE TABLE "Cases_by_age_2021" (
    "Age" varchar   NOT NULL,
    "January_2021" integer   NOT NULL,
    "February_2021" integer   NOT NULL,
    "March_2021" integer   NOT NULL,
    "April_2021" integer   NOT NULL,
    "May_2021" integer   NOT NULL,
    "June_2021" integer   NOT NULL,
    "July_2021" integer   NOT NULL,
    "August_2021" integer   NOT NULL,
    "September_2021" integer   NOT NULL,
    "October_2021" integer   NOT NULL,
    "November_2021" integer   NOT NULL,
    "December_2021" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_age_2021" PRIMARY KEY (
        "Age"
     )
);

CREATE TABLE "Cases_by_age_2022" (
    "Age" varchar   NOT NULL,
    "January_2022" integer   NOT NULL,
    "February_2022" integer   NOT NULL,
    "March_2022" integer   NOT NULL,
    "April_2022" integer   NOT NULL,
    "May_2022" integer   NOT NULL,
    "June_2022" integer   NOT NULL,
    "July_2022" integer   NOT NULL,
    "August_2022" integer   NOT NULL,
    "September_2022" integer   NOT NULL,
    "October_2022" integer   NOT NULL,
    "November_2022" integer   NOT NULL,
    "December_2022" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_age_2022" PRIMARY KEY (
        "Age"
     )
);

CREATE TABLE "Cases_by_age_2023" (
    "Age" varchar   NOT NULL,
    "January_2023" integer   NOT NULL,
    "February_2023" integer   NOT NULL,
    "March_2023" integer   NOT NULL,
    "April_2023" integer   NOT NULL,
    CONSTRAINT "pk_Cases_by_age_2023" PRIMARY KEY (
        "Age"
     )
);

