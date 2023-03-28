CREATE TABLE IF NOT EXISTS MEMBER (
    MEMBER_ID bigint NOT NULL AUTO_INCREMENT,
    EMAIL varchar(100) NOT NULL UNIQUE,
    NAME varchar(100) NOT NULL,
    PHONE varchar(100) NOT NULL,
    MEMBER_STATUS varchar(20) NOT NULL,
    CREATED_AT datetime NOT NULL,
    LAST_MODIFIED_AT datetime NOT NULL,
    PRIMARY KEY (MEMBER_ID)
);

CREATE TABLE IF NOT EXISTS STAMP (
    STAMP_ID bigint NOT NULL AUTO_INCREMENT,
    STAMP_COUNT bigint NOT NULL,
    MEMBER_ID bigint NOT NULL,
    CREATED_AT datetime NOT NULL,
    LAST_MODIFIED_AT datetime NOT NULL,
    PRIMARY KEY (STAMP_ID),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID)
);

CREATE TABLE IF NOT EXISTS COFFEE (
    COFFEE_ID bigint NOT NULL AUTO_INCREMENT,
    KOR_NAME varchar(100) NOT NULL,
    ENG_NAME varchar(100) NOT NULL,
    PRICE number NOT NULL,
    COFFEE_CODE char(3) NOT NULL,
    COFFEE_STATUS varchar(100) not null,
    PRIMARY KEY (COFFEE_ID)
);

CREATE TABLE IF NOT EXISTS ORDERS (
    ORDER_ID bigint NOT NULL AUTO_INCREMENT,
    MEMBER_ID bigint NOT NULL,
    ORDER_STATUS varchar(20) NOT NULL,
    CREATED_AT datetime NOT NULL,
    LAST_MODIFIED_AT datetime NOT NULL,
    PRIMARY KEY (ORDER_ID),
    FOREIGN KEY (MEMBER_ID) REFERENCES MEMBER(MEMBER_ID)
);

CREATE TABLE IF NOT EXISTS ORDER_COFFEE (
    ORDER_COFFEE_ID bigint NOT NULL AUTO_INCREMENT,
    ORDER_ID bigint NOT NULL,
    COFFEE_ID bigint NOT NULL,
    QUANTITY int NOT NULL,
    CREATED_AT datetime NOT NULL,
    LAST_MODIFIED_AT datetime NOT NULL,
    PRIMARY KEY (ORDER_COFFEE_ID),
    FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
    FOREIGN KEY (COFFEE_ID) REFERENCES COFFEE(COFFEE_ID)
);

