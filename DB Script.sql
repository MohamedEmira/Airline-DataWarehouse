CREATE TABLE AGENCY
(
  AGENCY_KEY      NUMBER                        NOT NULL,
  AGENCY_ID       NUMBER                        NOT NULL,
  AGENCY_NAME     VARCHAR2(255 BYTE),
  AGENCY_COUNTRY  VARCHAR2(255 BYTE),
  PAYMENTMETHOD   VARCHAR2(255 BYTE),
  FEES_PERCNTAGE  NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE AIRPLANE
(
  AIRPLANE_KEY   NUMBER                         NOT NULL,
  AIRPLANE_ID    NUMBER                         NOT NULL,
  AIRPLANE_TYPE  VARCHAR2(255 BYTE),
  CLASS_TYPE     VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE CREW
(
  CREW_KEY      NUMBER                          NOT NULL,
  CREW_ID       NUMBER                          NOT NULL,
  CREW_NAME     VARCHAR2(255 BYTE),
  DOB           DATE,
  CREW_LEVEL    VARCHAR2(255 BYTE),
  CREW_COUNTRY  VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE DATE_DIM
(
  DATE_KEY     NUMBER                           NOT NULL,
  DATE_D       DATE,
  YEAR         NUMBER,
  MONTH        VARCHAR2(255 BYTE),
  DAY          NUMBER,
  DAY_OF_WEEK  VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE FLIGHT
(
  FLIGHT_KEY        NUMBER                      NOT NULL,
  FLIGHT_NUMBER     NUMBER                      NOT NULL,
  STATUS            VARCHAR2(255 BYTE),
  CLASS_OF_SERVICE  VARCHAR2(255 BYTE),
  AIRCRAFT_TYPE     VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE FREQUENT_FLYER
(
  FQ_KEY      NUMBER                            NOT NULL,
  FQ_ID       NUMBER                            NOT NULL,
  FARE_BASIS  VARCHAR2(255 BYTE)                NOT NULL
)
TABLESPACE USERS
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE HOTEL
(
  HOTEL_KEY     NUMBER                          NOT NULL,
  HOTEL_ID      NUMBER                          NOT NULL,
  HOTEL_NAME    VARCHAR2(255 BYTE)              NOT NULL,
  HOTEL_RATING  NUMBER                          NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE HOTEL_STAYING
(
  HOTEL_STAYING_KEY  NUMBER                     NOT NULL,
  RESERVATION_ID     NUMBER                     NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE INQUIRIES
(
  INQUIRY_KEY     NUMBER                        NOT NULL,
  INQUIRY_ID      NUMBER                        NOT NULL,
  INTQUIRY_TIME   VARCHAR2(255 BYTE)            NOT NULL,
  INQUIRY_STATUS  VARCHAR2(255 BYTE)            NOT NULL,
  DESCRIPTION     VARCHAR2(255 BYTE)            NOT NULL,
  SEVERITY        NUMBER                        NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE PASSANGER
(
  PASSENGER_KEY      NUMBER                     NOT NULL,
  PASSENGER_ID       NUMBER                     NOT NULL,
  FIRST_NAME         VARCHAR2(255 BYTE),
  LAST_NAME          VARCHAR2(255 BYTE),
  GENDER             VARCHAR2(1 BYTE),
  PASSPORT_NUMBER    NUMBER                     NOT NULL,
  DOB                DATE,
  MEMBERSHIP_STATUS  VARCHAR2(255 BYTE),
  MILEAGE_BOUNS      NUMBER,
  COUNTRY            VARCHAR2(255 BYTE),
  STATE              VARCHAR2(255 BYTE),
  CITY               VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE PILOT
(
  PILOT_KEY      NUMBER                         NOT NULL,
  PILOT_ID       NUMBER                         NOT NULL,
  PILOT_NAME     VARCHAR2(255 BYTE),
  DOB            DATE,
  PILOT_LEVEL    VARCHAR2(255 BYTE),
  PILOT_COUNTRY  VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE POINTS_REDEEMING
(
  POINTS_RED_KEY  NUMBER                        NOT NULL,
  REDEEMING_ID    NUMBER                        NOT NULL,
  REDEEMING_TYPE  VARCHAR2(255 BYTE)            NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE PROMOTION
(
  PROMOTION_KEY    NUMBER                       NOT NULL,
  PROMOTION_ID     NUMBER                       NOT NULL,
  TYPE             VARCHAR2(255 BYTE),
  MEMBERSHIP_TYPE  VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE ROUTE
(
  ROUTE_KEY        NUMBER                       NOT NULL,
  ROUTE_ID         NUMBER                       NOT NULL,
  TAKEOFF_COUNTRY  VARCHAR2(255 BYTE),
  LANDOFF_COUNTRY  VARCHAR2(255 BYTE),
  TAKEOFF_AIRPORT  VARCHAR2(255 BYTE),
  LANDOFF_AIRPORT  VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE STAFF
(
  STAFF_KEY   NUMBER                            NOT NULL,
  STAFF_ID    NUMBER                            NOT NULL,
  STAFF_NAME  VARCHAR2(255 BYTE)                NOT NULL,
  GENDER      VARCHAR2(255 BYTE)                NOT NULL,
  ROLE        VARCHAR2(255 BYTE)                NOT NULL,
  DOB         DATE                              NOT NULL
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE STAYING_FACT
(
  FQ_KEY             NUMBER                     NOT NULL,
  HOTEL_KEY          NUMBER                     NOT NULL,
  HOTEL_STAYING_KEY  NUMBER                     NOT NULL,
  DATE_KEY           NUMBER,
  PASSENGER_KEY      NUMBER,
  DURATION           NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE TICKET
(
  TICKET_KEY     NUMBER                         NOT NULL,
  TICKET_NUMBER  NUMBER                         NOT NULL,
  TICKET_STATUS  VARCHAR2(255 BYTE),
  SEAT_NUMBER    NUMBER,
  LUGGAGE_SIZE   NUMBER,
  TICKET_CLASS   VARCHAR2(255 BYTE)
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE TOTAL_FLIGHT_FACT
(
  DATE_KEY               NUMBER,
  FLIGHT_KEY             NUMBER,
  FLIGHT_REVENUE         NUMBER,
  FLIGHT_COST            NUMBER,
  TOTAL_DISCOUNT         NUMBER,
  TOTAL_FEES             NUMBER,
  TOTAL_TICKETS          NUMBER,
  EXTENDED_TOTAL_PROFIT  NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE WEBSITE
(
  WEBSITE_KEY      NUMBER                       NOT NULL,
  WEBSITE_NAME     VARCHAR2(255 BYTE)           NOT NULL,
  PAYMENT_METHOD   VARCHAR2(255 BYTE),
  FEES_PERCENTAGE  NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE UNIQUE INDEX AGENCY_PK ON AGENCY
(AGENCY_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX CREW_PK ON CREW
(CREW_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX DATE_PK ON DATE_DIM
(DATE_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX FLIGHT_PK ON FLIGHT
(FLIGHT_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX FREQUENT_FLYER_PK ON FREQUENT_FLYER
(FQ_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX HOTEL_PK ON HOTEL
(HOTEL_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX HOTEL_STAYING_PK ON HOTEL_STAYING
(HOTEL_STAYING_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX INQUIRIES_PK ON INQUIRIES
(INQUIRY_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX PASSANGER_PK ON PASSANGER
(PASSENGER_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX PILOT_PK ON PILOT
(PILOT_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX POINTS_REDEEMING_PK ON POINTS_REDEEMING
(POINTS_RED_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX PROMOTION_PK ON PROMOTION
(PROMOTION_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX ROUTE_PK ON ROUTE
(ROUTE_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX STAFF_PK ON STAFF
(STAFF_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX TICKET_PK ON TICKET
(TICKET_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE UNIQUE INDEX WEBSITE_PK ON WEBSITE
(WEBSITE_KEY)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE TABLE BOOKING_FACT
(
  DATE_KEY              NUMBER,
  PASSENGER_KEY         NUMBER,
  FLIGHT_KEY            NUMBER,
  AGENCY_KEY            NUMBER,
  WEBSITE_KEY           NUMBER,
  PROMOTION_KEY         NUMBER,
  TICKET_KEY            NUMBER,
  TICKET_PRICE          NUMBER,
  PROMOTIONAL_DISCOUNT  NUMBER,
  FEES                  NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE FLIGHT_FACT
(
  DATE_KEY          NUMBER,
  PASSENGER_KEY     NUMBER,
  AIRPLANE_KEY      NUMBER,
  PILOT_KEY         NUMBER,
  CREW_KEY          NUMBER,
  FLIGHT_KEY        NUMBER,
  ROUTE_KEY         NUMBER,
  SEATS_NUMBER      NUMBER,
  DISTANCE_COVERED  NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE LOYALTY_FACT
(
  FQ_KEY           NUMBER                       NOT NULL,
  POINTS_RED_KEY   NUMBER                       NOT NULL,
  DATE_KEY         NUMBER,
  PASSENGER_KEY    NUMBER,
  FLIGHT_KEY       NUMBER,
  POINTS_CONSUMED  NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


CREATE TABLE REPORT_INQUIRY_FACT
(
  INQUIRY_KEY    NUMBER                         NOT NULL,
  STAFF_KEY      NUMBER                         NOT NULL,
  DATE_KEY       NUMBER,
  PASSENGER_KEY  NUMBER,
  FLIGHT_KEY     NUMBER
)
TABLESPACE SYSTEM
PCTUSED    40
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;


ALTER TABLE AGENCY ADD (
  CONSTRAINT AGENCY_PK
 PRIMARY KEY
 (AGENCY_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE AIRPLANE ADD (
  PRIMARY KEY
 (AIRPLANE_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE CREW ADD (
  CONSTRAINT CREW_PK
 PRIMARY KEY
 (CREW_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE DATE_DIM ADD (
  CONSTRAINT DATE_PK
 PRIMARY KEY
 (DATE_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE FLIGHT ADD (
  CONSTRAINT FLIGHT_PK
 PRIMARY KEY
 (FLIGHT_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE FREQUENT_FLYER ADD (
  CONSTRAINT FREQUENT_FLYER_PK
 PRIMARY KEY
 (FQ_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ),
  UNIQUE (FQ_ID)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE HOTEL ADD (
  CONSTRAINT HOTEL_PK
 PRIMARY KEY
 (HOTEL_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ),
  UNIQUE (HOTEL_ID)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE HOTEL_STAYING ADD (
  CONSTRAINT HOTEL_STAYING_PK
 PRIMARY KEY
 (HOTEL_STAYING_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ),
  UNIQUE (RESERVATION_ID)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE INQUIRIES ADD (
  CONSTRAINT INQUIRIES_PK
 PRIMARY KEY
 (INQUIRY_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ),
  UNIQUE (INQUIRY_ID)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE PASSANGER ADD (
  CONSTRAINT PASSANGER_PK
 PRIMARY KEY
 (PASSENGER_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE PILOT ADD (
  CONSTRAINT PILOT_PK
 PRIMARY KEY
 (PILOT_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE POINTS_REDEEMING ADD (
  CONSTRAINT POINTS_REDEEMING_PK
 PRIMARY KEY
 (POINTS_RED_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ),
  UNIQUE (REDEEMING_ID)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE PROMOTION ADD (
  CONSTRAINT PROMOTION_PK
 PRIMARY KEY
 (PROMOTION_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE ROUTE ADD (
  CONSTRAINT ROUTE_PK
 PRIMARY KEY
 (ROUTE_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE STAFF ADD (
  CONSTRAINT STAFF_PK
 PRIMARY KEY
 (STAFF_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ),
  UNIQUE (STAFF_ID)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE TICKET ADD (
  CONSTRAINT TICKET_PK
 PRIMARY KEY
 (TICKET_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE WEBSITE ADD (
  CONSTRAINT WEBSITE_PK
 PRIMARY KEY
 (WEBSITE_KEY)
    USING INDEX 
    TABLESPACE SYSTEM
    PCTFREE    10
    INITRANS   2
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                PCTINCREASE      0
                FREELISTS        1
                FREELIST GROUPS  1
               ));

ALTER TABLE STAYING_FACT ADD (
  CONSTRAINT DATE_KEYS_REG_FK 
 FOREIGN KEY (DATE_KEY) 
 REFERENCES DATE_DIM (DATE_KEY),
  CONSTRAINT PASSENGER_KEYS_REG_FK 
 FOREIGN KEY (PASSENGER_KEY) 
 REFERENCES PASSANGER (PASSENGER_KEY),
  FOREIGN KEY (FQ_KEY) 
 REFERENCES FREQUENT_FLYER (FQ_KEY),
  FOREIGN KEY (HOTEL_KEY) 
 REFERENCES HOTEL (HOTEL_KEY),
  FOREIGN KEY (HOTEL_STAYING_KEY) 
 REFERENCES HOTEL_STAYING (HOTEL_STAYING_KEY));

ALTER TABLE TOTAL_FLIGHT_FACT ADD (
  CONSTRAINT DATE_KEYT_REG_FK 
 FOREIGN KEY (DATE_KEY) 
 REFERENCES DATE_DIM (DATE_KEY),
  CONSTRAINT FLIGHT_KEYT_REG_FK 
 FOREIGN KEY (FLIGHT_KEY) 
 REFERENCES FLIGHT (FLIGHT_KEY));

ALTER TABLE BOOKING_FACT ADD (
  CONSTRAINT AGENCY_KEY_REG_FK 
 FOREIGN KEY (AGENCY_KEY) 
 REFERENCES AGENCY (AGENCY_KEY),
  CONSTRAINT DATE_KEYB_REG_FK 
 FOREIGN KEY (DATE_KEY) 
 REFERENCES DATE_DIM (DATE_KEY),
  CONSTRAINT FLIGHT_KEYB_REG_FK 
 FOREIGN KEY (FLIGHT_KEY) 
 REFERENCES FLIGHT (FLIGHT_KEY),
  CONSTRAINT PASSENGER_KEYB_REG_FK 
 FOREIGN KEY (PASSENGER_KEY) 
 REFERENCES PASSANGER (PASSENGER_KEY),
  CONSTRAINT PROMOTION_KEY_REG_FK 
 FOREIGN KEY (PROMOTION_KEY) 
 REFERENCES PROMOTION (PROMOTION_KEY),
  CONSTRAINT TICKET_KEY_REG_FK 
 FOREIGN KEY (TICKET_KEY) 
 REFERENCES TICKET (TICKET_KEY),
  CONSTRAINT WEBSITE_KEY_REG_FK 
 FOREIGN KEY (WEBSITE_KEY) 
 REFERENCES WEBSITE (WEBSITE_KEY));

ALTER TABLE FLIGHT_FACT ADD (
  CONSTRAINT AIRPLANE_KEY_REG_FK 
 FOREIGN KEY (AIRPLANE_KEY) 
 REFERENCES AIRPLANE (AIRPLANE_KEY),
  CONSTRAINT CREW_KEY_REG_FK 
 FOREIGN KEY (CREW_KEY) 
 REFERENCES CREW (CREW_KEY),
  CONSTRAINT DATE_KEY_REG_FK 
 FOREIGN KEY (DATE_KEY) 
 REFERENCES DATE_DIM (DATE_KEY),
  CONSTRAINT FLIGHT_KEY_REG_FK 
 FOREIGN KEY (FLIGHT_KEY) 
 REFERENCES FLIGHT (FLIGHT_KEY),
  CONSTRAINT PASSENGER_KEY_REG_FK 
 FOREIGN KEY (PASSENGER_KEY) 
 REFERENCES PASSANGER (PASSENGER_KEY),
  CONSTRAINT PILOT_KEY_REG_FK 
 FOREIGN KEY (PILOT_KEY) 
 REFERENCES PILOT (PILOT_KEY),
  CONSTRAINT ROUTE_KEY_REG_FK 
 FOREIGN KEY (ROUTE_KEY) 
 REFERENCES ROUTE (ROUTE_KEY));

ALTER TABLE LOYALTY_FACT ADD (
  CONSTRAINT DATE_KEYL_REG_FK 
 FOREIGN KEY (DATE_KEY) 
 REFERENCES DATE_DIM (DATE_KEY),
  CONSTRAINT FLIGHT_KEYL_REG_FK 
 FOREIGN KEY (FLIGHT_KEY) 
 REFERENCES FLIGHT (FLIGHT_KEY),
  CONSTRAINT PASSENGER_KEYL_REG_FK 
 FOREIGN KEY (PASSENGER_KEY) 
 REFERENCES PASSANGER (PASSENGER_KEY),
  FOREIGN KEY (FQ_KEY) 
 REFERENCES FREQUENT_FLYER (FQ_KEY),
  FOREIGN KEY (POINTS_RED_KEY) 
 REFERENCES POINTS_REDEEMING (POINTS_RED_KEY));

ALTER TABLE REPORT_INQUIRY_FACT ADD (
  CONSTRAINT DATE_KEYR_REG_FK 
 FOREIGN KEY (DATE_KEY) 
 REFERENCES DATE_DIM (DATE_KEY),
  CONSTRAINT FLIGHT_KEYR_REG_FK 
 FOREIGN KEY (FLIGHT_KEY) 
 REFERENCES FLIGHT (FLIGHT_KEY),
  CONSTRAINT PASSENGER_KEYR_REG_FK 
 FOREIGN KEY (PASSENGER_KEY) 
 REFERENCES PASSANGER (PASSENGER_KEY),
  FOREIGN KEY (INQUIRY_KEY) 
 REFERENCES INQUIRIES (INQUIRY_KEY),
  FOREIGN KEY (STAFF_KEY) 
 REFERENCES STAFF (STAFF_KEY));
SET DEFINE OFF;
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (1, 200, 'Concord', 'Croatia', 'Credit Card', 
    3);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (2, 24, 'Pierre', 'Ghana', 'Direct Debit', 
    3);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (3, 180, 'Jefferson City', 'Guyana', 'WebMoney', 
    7);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (4, 84, 'Frankfort', 'Sri Lanka', 'PayPal', 
    7);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (5, 140, 'Boston', 'Sri Lanka', 'Check', 
    2);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (6, 198, 'Albany', 'Swaziland', 'WebMoney', 
    8);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (7, 181, 'Trenton', 'Iraq', 'Direct Debit', 
    6);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (8, 4, 'Springfield', 'Nicaragua', 'Check', 
    6);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (9, 53, 'Saint Paul', 'Malawi', 'WebMoney', 
    4);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (10, 25, 'Austin', 'Uruguay', 'Check', 
    1);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (11, 161, 'Tallahassee', 'Australia', 'Check', 
    5);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (12, 5, 'Salem', 'Finland', 'WebMoney', 
    5);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (13, 199, 'Augusta', 'Luxembourg', 'Credit Card', 
    4);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (14, 105, 'Annapolis', 'Suriname', 'Bank Transfer', 
    3);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (15, 74, 'Madison', 'Slovakia', 'PayPal', 
    5);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (16, 54, 'Carson City', 'Zambia', 'Direct Debit', 
    3);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (17, 182, 'Lincoln', 'France', 'Bank Transfer', 
    4);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (18, 141, 'Raleigh', 'Austria', 'PayPal', 
    5);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (19, 162, 'Indianapolis', 'Canada', 'Bank Transfer', 
    10);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (20, 75, 'Santa Fe', 'Ukraine', 'WebMoney', 
    6);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (21, 142, 'Montgomery', 'Guatemala', 'Direct Debit', 
    9);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (22, 55, 'Hartford', 'Guyana', 'Check', 
    8);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (23, 165, 'Phoenix', 'Swaziland', 'PayPal', 
    7);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (24, 85, 'Juneau', 'Denmark', 'Direct Debit', 
    8);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (25, 163, 'Harrisburg', 'Bangladesh', 'Credit Card', 
    1);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (26, 143, 'Sacramento', 'Denmark', 'Credit Card', 
    4);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (27, 76, 'Olympia', 'Mongolia', 'Check', 
    5);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (28, 26, 'Des Moines', 'Italy', 'Credit Card', 
    10);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (29, 56, 'Columbus', 'Albania', 'WebMoney', 
    3);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (30, 77, 'Denver', 'Sierra Leone', 'Bank Transfer', 
    9);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (31, 57, 'Topeka', 'Saudi Arabia', 'PayPal', 
    3);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (32, 106, 'Montpelier', 'Bangladesh', 'PayPal', 
    1);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (33, 86, 'Dover', 'Moldova', 'PayPal', 
    9);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (34, 6, 'Nashville', 'Botswana', 'Bank Transfer', 
    6);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (35, 107, 'Charleston', 'Nigeria', 'PayPal', 
    9);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (36, 164, 'Salt Lake City', 'New Zealand', 'Credit Card', 
    5);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (37, 144, 'Bismarck', 'Tunisia', 'Credit Card', 
    3);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (38, 78, 'Little Rock', 'Bahrain', 'Bank Transfer', 
    7);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (39, 27, 'Columbia', 'Brazil', 'Direct Debit', 
    6);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (40, 183, 'Richmond', 'Italy', 'Credit Card', 
    4);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (41, 58, 'Baton Rouge', 'Panama', 'WebMoney', 
    4);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (42, 79, 'Providence', 'Uruguay', 'Direct Debit', 
    1);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (43, 87, 'Oklahoma City', 'Israel', 'Credit Card', 
    4);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (44, 59, 'Jackson', 'Afghanistan', 'PayPal', 
    8);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (45, 7, 'Cheyenne', 'Argentina', 'Bank Transfer', 
    1);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (46, 108, 'Boise', 'Netherlands', 'PayPal', 
    10);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (47, 166, 'Helena', 'Cuba', 'PayPal', 
    5);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (48, 88, 'Lansing', 'Fiji', 'Direct Debit', 
    7);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (49, 124, 'Honolulu', 'Malawi', 'Check', 
    2);
Insert into AGENCY
   (AGENCY_KEY, AGENCY_ID, AGENCY_NAME, AGENCY_COUNTRY, PAYMENTMETHOD, 
    FEES_PERCNTAGE)
 Values
   (50, 109, 'Atlanta', 'Malaysia', 'WebMoney', 
    8);
COMMIT;

SET DEFINE OFF;
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (1, 568, 'Airbus350', 'Economy,Business,FirstClass');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (2, 1000, 'Airbus380', 'Economy,Business,FirstClass');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (3, 152, 'Airbus330', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (4, 52, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (5, 153, 'Airbus380', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (6, 958, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (7, 730, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (8, 53, 'Airbus330', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (9, 861, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (10, 468, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (11, 630, 'Airbus380', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (12, 221, 'Airbus330', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (13, 569, 'Airbus380', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (14, 322, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (15, 469, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (16, 154, 'Airbus330', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (17, 570, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (18, 54, 'Airbus330', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (19, 470, 'Airbus380', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (20, 731, 'Airbus350', 'Economy,Business,FirstClass');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (21, 959, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (22, 571, 'Airbus380', 'Economy,Business,FirstClass');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (23, 862, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (24, 155, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (25, 55, 'Airbus330', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (26, 156, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (27, 631, 'Airbus380', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (28, 56, 'Airbus380', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (29, 732, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (30, 960, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (31, 863, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (32, 471, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (33, 632, 'Airbus380', 'Economy,Business,FirstClass');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (34, 157, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (35, 733, 'Airbus380', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (36, 222, 'Airbus330', 'Economy,Business,FirstClass');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (37, 57, 'Airbus380', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (38, 572, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (39, 633, 'Airbus330', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (40, 158, 'Airbus380', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (41, 961, 'Airbus330', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (42, 323, 'Airbus380', 'Economy,Business,FirstClass');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (43, 472, 'Airbus330', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (44, 223, 'Airbus380', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (45, 324, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (46, 58, 'Airbus350', 'Economy');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (47, 159, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (48, 224, 'Airbus380', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (49, 734, 'Airbus350', 'Economy,Business');
Insert into AIRPLANE
   (AIRPLANE_KEY, AIRPLANE_ID, AIRPLANE_TYPE, CLASS_TYPE)
 Values
   (50, 325, 'Airbus380', 'Economy,Business');
COMMIT;

SET DEFINE OFF;
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210107, 22, 46, 13, 33, 
    NULL, 50, 1346, 28, 0);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210128, 1, 44, 29, 37, 
    10, 46, 447, 6, 1);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210127, 27, 26, 32, NULL, 
    11, 32, 1524, 8, 2);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210145, 22, 33, NULL, 39, 
    48, 39, 440, 100, 3);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210101, 39, 28, 12, 38, 
    35, 49, 1047, 11, 4);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210128, 30, 5, 33, 33, 
    35, 27, 1796, 7, 5);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210121, 46, 23, 4, 4, 
    7, 3, 784, 56, 6);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210123, 38, 35, 4, 15, 
    5, 34, 568, 54, 7);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210142, 17, 46, 19, 42, 
    29, 22, 325, 72, 8);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210111, 46, 32, 1, 41, 
    14, 47, 730, 14, 9);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210104, 48, 39, 48, 31, 
    31, 45, 892, 9, 10);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210137, 16, 13, 46, 23, 
    36, 48, 625, 2, 11);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210108, 3, 8, NULL, 6, 
    13, 40, 1965, 52, 12);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210121, 10, 28, 26, 29, 
    21, 17, 1496, 63, 13);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210142, 43, 7, 10, 22, 
    21, 9, 1148, 33, 14);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210103, 47, 23, 39, 17, 
    1, 33, 1226, 94, 15);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210105, 23, 47, 19, 49, 
    31, 4, 648, 2, 16);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210124, 8, 26, 24, NULL, 
    32, 28, 1856, 77, 17);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210133, 32, 32, NULL, NULL, 
    20, 35, 1487, 61, 18);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210133, 45, 38, 42, NULL, 
    42, 12, 1259, 5, 19);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210104, 1, 49, 1, 1, 
    18, 18, 1670, 4, 20);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210132, 36, 28, 23, 7, 
    1, 13, 1900, 1, 21);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210122, 8, 37, 25, 32, 
    48, 10, 1628, 32, 22);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210123, 12, 13, 24, 21, 
    44, 5, 547, 85, 23);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210147, 24, 32, 32, NULL, 
    37, 19, 887, 53, 24);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210113, 27, 25, 7, 30, 
    NULL, 41, 853, 5, 25);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210141, 34, 49, 34, 49, 
    34, 23, 308, 51, 26);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210140, 15, 6, 24, 31, 
    26, 14, 610, 48, 27);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210137, 12, 4, 25, 32, 
    39, 36, 1507, 3, 28);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210147, 21, 6, 2, 37, 
    37, 29, 1523, 2, 29);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210113, 2, 20, 16, 32, 
    NULL, 24, 451, 68, 30);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210146, 44, 1, 25, 19, 
    1, 42, 873, 48, 31);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210119, 17, 44, 25, 38, 
    1, 30, 1663, 15, 32);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210128, 9, 12, 24, 31, 
    34, 25, 732, 85, 33);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210119, 7, 4, 28, 25, 
    7, 11, 305, 71, 34);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210119, 34, 37, 24, 42, 
    7, 20, 1707, 6, 35);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210104, 44, 45, 11, 4, 
    46, 6, 652, 44, 36);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210120, 40, 4, NULL, 37, 
    18, 15, 1899, 97, 37);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210143, 6, 31, 39, 24, 
    9, 31, 956, 31, 38);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210101, 34, 20, 27, 43, 
    15, 37, 558, 36, 39);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210120, 25, 44, 43, 44, 
    19, 21, 1153, 9, 40);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210117, 14, 1, 49, 44, 
    21, 43, 538, 70, 41);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210112, 9, 27, 14, 25, 
    3, 16, 1276, 9, 42);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210115, 50, 40, 7, 50, 
    36, 26, 944, 93, 43);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210104, 3, 37, 10, 50, 
    31, 38, 806, 23, 44);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210147, 35, 31, 13, 30, 
    22, 44, 1279, 71, 45);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210108, 47, 25, 20, 8, 
    31, 1, 389, 95, 46);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210148, 47, 14, 26, 37, 
    44, 7, 1722, 59, 47);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210102, 8, 36, 37, 29, 
    NULL, 2, 968, 9, 48);
Insert into BOOKING_FACT
   (DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, AGENCY_KEY, WEBSITE_KEY, 
    PROMOTION_KEY, TICKET_KEY, TICKET_PRICE, PROMOTIONAL_DISCOUNT, FEES)
 Values
   (20210117, 25, 12, NULL, 24, 
    NULL, 8, 866, 31, 49);
COMMIT;

SET DEFINE OFF;
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (1, 866, 'Tran', TO_DATE('10/29/1986 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'France');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (2, 255, 'Abel', TO_DATE('11/06/1971 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Suriname');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (3, 52, 'Elbert', TO_DATE('05/25/1999 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Philippines');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (4, 793, 'Hubert', TO_DATE('01/03/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Albania');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (5, 356, 'Aldo', TO_DATE('04/11/1981 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Austria');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (6, 153, 'Yoshiko', TO_DATE('03/22/1996 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Cuba');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (7, 53, 'Agripina', TO_DATE('07/03/1974 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Philippines');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (8, 559, 'Audrie', TO_DATE('08/31/1972 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Hungary');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (9, 1000, 'Julie', TO_DATE('10/23/1977 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Portugal');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (10, 693, 'Randa', TO_DATE('04/24/1972 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Nigeria');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (11, 256, 'Juan', TO_DATE('02/08/1958 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Zambia');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (12, 154, 'Fletcher', TO_DATE('11/14/1983 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Finland');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (13, 964, 'Shellie', TO_DATE('02/10/1975 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'United Kingdom');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (14, 794, 'Darrel', TO_DATE('04/24/1974 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Romania');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (15, 357, 'Man', TO_DATE('05/12/1979 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Malawi');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (16, 54, 'Arron', TO_DATE('09/10/1999 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Iceland');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (17, 155, 'Lucius', TO_DATE('04/30/1987 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Denmark');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (18, 694, 'Francisco', TO_DATE('01/12/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Gambia');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (19, 55, 'Macy', TO_DATE('11/23/1994 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Jordan');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (20, 459, 'Emil', TO_DATE('12/22/1967 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Japan');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (21, 795, 'Alisia', TO_DATE('03/31/1956 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Ireland');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (22, 867, 'Maurice', TO_DATE('01/13/1988 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Uruguay');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (23, 156, 'Barb', TO_DATE('02/26/1958 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Romania');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (24, 965, 'Stephen', TO_DATE('01/04/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Turkey');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (25, 560, 'Avery', TO_DATE('12/13/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Nicaragua');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (26, 460, 'Gail', TO_DATE('02/05/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Latvia');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (27, 257, 'Crystle', TO_DATE('03/23/1975 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Mongolia');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (28, 358, 'Hazel', TO_DATE('03/12/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Pakistan');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (29, 695, 'Jewel', TO_DATE('01/16/1989 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Kenya');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (30, 258, 'Manual', TO_DATE('09/07/1988 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Kuwait');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (31, 56, 'Adan', TO_DATE('01/11/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'India');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (32, 157, 'Adah', TO_DATE('07/03/1995 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Mauritania');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (33, 561, 'Lannie', TO_DATE('05/09/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Philippines');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (34, 796, 'Pierre', TO_DATE('12/09/1981 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Iraq');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (35, 57, 'Winfred', TO_DATE('10/09/1953 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'South Africa');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (36, 868, 'Salina', TO_DATE('01/05/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Korea');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (37, 158, 'Jeanette', TO_DATE('07/06/1964 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Viet Nam');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (38, 696, 'Freeda', TO_DATE('07/29/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Lebanon');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (39, 359, 'Doreatha', TO_DATE('02/28/1975 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'United Kingdom');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (40, 797, 'Allan', TO_DATE('01/26/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Nepal');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (41, 461, 'Jean', TO_DATE('04/30/1955 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Finland');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (42, 966, 'Anisha', TO_DATE('01/21/1956 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Australia');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (43, 562, 'Lakeshia', TO_DATE('02/20/1965 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Bulgaria');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (44, 462, 'Raeann', TO_DATE('03/28/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Iceland');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (45, 259, 'Marlin', TO_DATE('03/17/1958 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Afghanistan');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (46, 58, 'Aleen', TO_DATE('05/03/1963 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Qatar');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (47, 360, 'Venessa', TO_DATE('06/10/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Korea');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (48, 260, 'Andres', TO_DATE('08/13/1983 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Croatia');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (49, 159, 'Waltraud', TO_DATE('07/30/1991 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Malta');
Insert into CREW
   (CREW_KEY, CREW_ID, CREW_NAME, DOB, CREW_LEVEL, 
    CREW_COUNTRY)
 Values
   (50, 361, 'Retta', TO_DATE('01/08/1989 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Bangladesh');
COMMIT;

SET DEFINE OFF;
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210101, TO_DATE('01/01/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 1, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210102, TO_DATE('01/02/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 2, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210103, TO_DATE('01/03/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 3, 
    'mon');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210104, TO_DATE('01/04/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 4, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210105, TO_DATE('01/05/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 5, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210106, TO_DATE('01/06/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 6, 
    'mon');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210107, TO_DATE('01/07/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 7, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210108, TO_DATE('01/08/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 8, 
    'mon');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210109, TO_DATE('01/09/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 9, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210110, TO_DATE('01/10/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 10, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210111, TO_DATE('01/11/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 11, 
    'mon');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210112, TO_DATE('01/12/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 12, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210113, TO_DATE('01/13/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 13, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210114, TO_DATE('01/14/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 14, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210115, TO_DATE('01/15/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 15, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210116, TO_DATE('01/16/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 16, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210117, TO_DATE('01/17/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 17, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210118, TO_DATE('01/18/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 18, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210119, TO_DATE('01/19/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 19, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210120, TO_DATE('01/20/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 20, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210121, TO_DATE('01/21/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 21, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210122, TO_DATE('01/22/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 22, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210123, TO_DATE('01/23/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 23, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210124, TO_DATE('01/24/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 24, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210125, TO_DATE('01/25/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 25, 
    'mon');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210126, TO_DATE('01/26/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 26, 
    'mon');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210127, TO_DATE('01/27/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 27, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210128, TO_DATE('01/28/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 28, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210129, TO_DATE('01/29/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 29, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210130, TO_DATE('01/30/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 30, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210131, TO_DATE('01/31/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 1, 
    'mon');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210132, TO_DATE('02/01/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 2, 
    'mon');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210133, TO_DATE('02/02/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 3, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210134, TO_DATE('02/03/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 4, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210135, TO_DATE('02/04/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 5, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210136, TO_DATE('02/05/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 6, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210137, TO_DATE('02/06/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 7, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210138, TO_DATE('02/07/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 8, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210139, TO_DATE('02/08/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 9, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210140, TO_DATE('02/09/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 10, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210141, TO_DATE('02/10/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 11, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210142, TO_DATE('02/11/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 12, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210143, TO_DATE('02/12/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 13, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210144, TO_DATE('02/13/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 14, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210145, TO_DATE('02/14/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 15, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210146, TO_DATE('02/15/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 16, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210147, TO_DATE('02/16/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 17, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210148, TO_DATE('02/17/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 18, 
    'sun');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210149, TO_DATE('02/18/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '2', 19, 
    'Sat');
Insert into DATE_DIM
   (DATE_KEY, DATE_D, YEAR, MONTH, DAY, 
    DAY_OF_WEEK)
 Values
   (20210150, TO_DATE('02/19/2021 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 2021, '1', 20, 
    'mon');
COMMIT;

SET DEFINE OFF;
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (1, 94503, 'Pending', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (2, 59167, 'Done', 'E,B', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (3, 46988, 'Done', 'E,B,F', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (4, 23202, 'Pending', 'E,B,F', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (5, 29816, 'Canceled', 'E', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (6, 116895, 'Pending', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (7, 116879, 'Pending', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (8, 122610, 'Canceled', 'E', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (9, 47276, 'Canceled', 'E,B,F', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (10, 108870, 'Canceled', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (11, 58616, 'Done', 'E', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (12, 46186, 'Done', 'E,B,F', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (13, 96732, 'Canceled', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (14, 35122, 'Done', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (15, 93822, 'Done', 'E', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (16, 25199, 'Done', 'E', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (17, 70703, 'Done', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (18, 80041, 'Done', 'E,B,F', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (19, 122617, 'Done', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (20, 11655, 'Done', 'E,B', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (21, 48483, 'Canceled', 'E,B,F', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (22, 50452, 'Pending', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (23, 94730, 'Pending', 'E,B', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (24, 58929, 'Done', 'E,B', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (25, 50350, 'Done', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (26, 68739, 'Done', 'E,B,F', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (27, 96501, 'Canceled', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (28, 65018, 'Canceled', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (29, 76723, 'Pending', 'E,B,F', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (30, 17844, 'Done', 'E,B,F', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (31, 35320, 'Pending', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (32, 52817, 'Done', 'E,B', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (33, 47818, 'Done', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (34, 71276, 'Done', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (35, 106726, 'Canceled', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (36, 125886, 'Done', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (37, 55669, 'Done', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (38, 9040, 'Pending', 'E', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (39, 30490, 'Canceled', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (40, 62337, 'Done', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (41, 86855, 'Done', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (42, 10127, 'Canceled', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (43, 20949, 'Pending', 'E', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (44, 67818, 'Canceled', 'E', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (45, 55640, 'Canceled', 'E', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (46, 2839, 'Done', 'E,B,F', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (47, 129491, 'Done', 'E,B', 'Airbus');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (48, 130260, 'Pending', 'E,B', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (49, 28513, 'Pending', 'E,B', 'Private');
Insert into FLIGHT
   (FLIGHT_KEY, FLIGHT_NUMBER, STATUS, CLASS_OF_SERVICE, AIRCRAFT_TYPE)
 Values
   (50, 56864, 'Done', 'E', 'Airbus');
COMMIT;

SET DEFINE OFF;
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210116, 2, 50, 40, 27, 
    11, 50, 120, 70437);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210147, 50, 19, 35, 45, 
    6, 31, 125, 28162);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210132, 32, 41, 11, 48, 
    13, 46, 147, 40844);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210122, 45, 36, 41, 46, 
    50, 26, 126, 29530);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210127, 27, 33, 50, 44, 
    1, 49, 138, 61400);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210142, 48, 28, 18, 21, 
    7, 32, 147, 83398);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210133, 36, 6, 26, 49, 
    2, 47, 119, 19512);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210145, 8, 47, 45, 47, 
    45, 27, 139, 10246);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210150, 42, 1, 13, 16, 
    25, 18, 148, 37326);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210137, 37, 42, 48, 7, 
    19, 5, 124, 97391);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210143, 13, 37, 6, 50, 
    8, 33, 131, 80891);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210148, 33, 7, 46, 39, 
    3, 11, 131, 51803);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210146, 19, 23, 36, 34, 
    31, 13, 112, 36009);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210108, 46, 2, 19, 33, 
    14, 6, 116, 69118);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210149, 3, 29, 42, 28, 
    48, 28, 143, 67841);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210103, 9, 14, 32, 22, 
    20, 45, 135, 33608);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210109, 14, 43, 1, 17, 
    46, 1, 101, 89451);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210104, 4, 8, 14, 12, 
    49, 41, 110, 54438);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210138, 10, 45, 37, 40, 
    39, 7, 137, 96739);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210110, 49, 48, 49, 18, 
    15, 48, 113, 80920);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210144, 47, 38, 43, 35, 
    21, 2, 144, 19913);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210128, 5, 24, 38, 41, 
    9, 19, 142, 47502);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210105, 11, 20, 27, 2, 
    16, 23, 113, 75103);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210117, 43, 3, 7, 13, 
    4, 8, 131, 55270);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210139, 20, 15, 44, 19, 
    34, 3, 112, 15688);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210123, 6, 44, 2, 8, 
    47, 14, 121, 56981);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210134, 1, 46, 33, 23, 
    40, 29, 143, 61489);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210111, 28, 21, 28, 29, 
    22, 36, 118, 44074);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210112, 7, 16, 8, 24, 
    17, 9, 117, 33964);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210140, 23, 49, 39, 30, 
    12, 4, 120, 86934);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210129, 29, 22, 47, 25, 
    35, 20, 147, 16636);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210135, 24, 39, 3, 36, 
    18, 24, 105, 32045);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210141, 30, 9, 20, 14, 
    10, 30, 129, 94149);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210118, 25, 4, 9, 42, 
    41, 25, 108, 28858);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210136, 38, 10, 34, 31, 
    5, 42, 149, 16541);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210124, 44, 34, 15, 37, 
    36, 10, 111, 76679);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210130, 15, 30, 21, 3, 
    26, 37, 128, 24628);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210113, 39, 17, 16, 26, 
    42, 43, 141, 18108);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210125, 31, 5, 4, 43, 
    37, 15, 136, 93091);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210131, 26, 12, 22, 9, 
    43, 38, 135, 58574);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210126, 21, 40, 17, 4, 
    38, 21, 116, 85461);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210106, 34, 11, 10, 20, 
    44, 44, 142, 58174);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210101, 40, 18, 23, 38, 
    32, 39, 110, 95294);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210119, 16, 35, 5, 32, 
    27, 34, 101, 39615);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210114, 22, 25, 29, 10, 
    33, 40, 113, 10879);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210120, 17, 13, 12, 5, 
    28, 16, 121, 84307);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210107, 12, 31, 24, 11, 
    23, 35, 136, 20387);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210115, 18, 26, 30, 15, 
    29, 22, 113, 40826);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210121, 35, 32, 25, 6, 
    24, 17, 103, 91465);
Insert into FLIGHT_FACT
   (DATE_KEY, PASSENGER_KEY, AIRPLANE_KEY, PILOT_KEY, CREW_KEY, 
    FLIGHT_KEY, ROUTE_KEY, SEATS_NUMBER, DISTANCE_COVERED)
 Values
   (20210102, 41, 27, 31, 1, 
    30, 12, 144, 90215);
COMMIT;

SET DEFINE OFF;
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (1, 74880, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (2, 108074, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (3, 87193, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (4, 46036, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (5, 19417, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (6, 33724, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (7, 120386, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (8, 74881, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (9, 87194, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (10, 52341, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (11, 64654, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (12, 74882, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (13, 87195, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (14, 46037, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (15, 52342, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (16, 108075, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (17, 74883, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (18, 7105, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (19, 120387, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (20, 108076, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (21, 87196, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (22, 33725, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (23, 64655, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (24, 74884, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (25, 52343, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (26, 46038, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (27, 87197, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (28, 120388, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (29, 108077, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (30, 64656, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (31, 19418, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (32, 74885, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (33, 33726, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (34, 120389, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (35, 46039, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (36, 7106, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (37, 108078, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (38, 33727, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (39, 87198, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (40, 52344, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (41, 120390, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (42, 19419, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (43, 7107, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (44, 46040, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (45, 33728, '3point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (46, 108079, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (47, 74886, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (48, 120391, '5point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (49, 46041, '4point per dollar');
Insert into FREQUENT_FLYER
   (FQ_KEY, FQ_ID, FARE_BASIS)
 Values
   (50, 87199, '4point per dollar');
COMMIT;

SET DEFINE OFF;
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (1, 1044, 'Westmoreland', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (2, 412, 'Dover', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (3, 58, 'Cates', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (4, 182, 'Beauchamp', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (5, 59, 'Cathey', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (6, 1166, 'Spears', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (7, 183, 'Beaudoin', 1);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (8, 567, 'Irving', 5);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (9, 289, 'Goetz', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (10, 1045, 'Weston', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (11, 691, 'Lynch', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (12, 413, 'Dow', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (13, 60, 'Cato', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (14, 290, 'Goff', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (15, 184, 'Beaulieu', 5);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (16, 1167, 'Speed', 5);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (17, 568, 'Irwin', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (18, 776, 'Mcgill', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (19, 692, 'Lynn', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (20, 1046, 'Wetzel', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (21, 61, 'Catron', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (22, 569, 'Isaac', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (23, 900, 'Payne', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (24, 414, 'Dowd', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (25, 777, 'Mcginnis', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (26, 185, 'Beauregard', 5);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (27, 1168, 'Speer', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (28, 1047, 'Whalen', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (29, 62, 'Caudill', 1);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (30, 186, 'Beaver', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (31, 901, 'Payton', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (32, 693, 'Lyon', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (33, 1169, 'Spellman', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (34, 778, 'Mcgovern', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (35, 902, 'Peachey', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (36, 779, 'Mcgowan', 5);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (37, 291, 'Goforth', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (38, 63, 'Caudle', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (39, 415, 'Dowdy', 5);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (40, 570, 'Isaacs', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (41, 694, 'Lyons', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (42, 292, 'Goins', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (43, 903, 'Peacock', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (44, 571, 'Isaacson', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (45, 187, 'Beavers', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (46, 780, 'Mcgrath', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (47, 904, 'Peak', 3);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (48, 695, 'Lytle', 5);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (49, 416, 'Dowell', 4);
Insert into HOTEL
   (HOTEL_KEY, HOTEL_ID, HOTEL_NAME, HOTEL_RATING)
 Values
   (50, 293, 'Gold', 4);
COMMIT;

SET DEFINE OFF;
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (17, 3950210);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (21, 3950211);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (26, 3950212);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (32, 3950213);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (48, 3950214);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (9, 16262522);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (19, 16262523);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (24, 16262524);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (28, 16262525);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (43, 16262526);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (7, 28150913);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (18, 28150914);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (22, 28150915);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (39, 28150916);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (50, 28150917);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (5, 40463225);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (12, 40463226);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (20, 40463227);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (27, 40463228);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (44, 40463229);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (1, 53076037);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (8, 53076038);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (13, 53076039);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (23, 53076040);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (33, 53076041);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (35, 53076042);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (47, 53076043);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (6, 65388350);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (10, 65388351);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (16, 65388352);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (29, 65388353);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (34, 65388354);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (45, 65388355);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (14, 79876629);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (25, 79876630);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (46, 79876631);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (4, 92188941);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (15, 92188942);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (38, 92188943);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (3, 106870133);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (30, 106870134);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (36, 106870135);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (40, 106870136);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (42, 106870137);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (2, 119182444);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (11, 119182445);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (31, 119182446);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (37, 119182447);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (41, 119182448);
Insert into HOTEL_STAYING
   (HOTEL_STAYING_KEY, RESERVATION_ID)
 Values
   (49, 119182449);
COMMIT;

SET DEFINE OFF;
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (101, 120845442, 'After', '7P179H023A8', 'Cupiditate voluptatem vel. Consectetur et ut. Vel dicta veniam. Sed iste quo. Impedit inventore fuga. Culpa et mollitia! Ea veniam natus. Et esse sed...', 
    -9999999999);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (102, 97722319, 'Before', 'KH', 'Delectus perferendis fuga. Vero eum assumenda! Unde voluptates voluptatem. Voluptatem aliquam dolore. Non facilis velit! Veritatis rerum nisi. Eos ut...', 
    -9999999998);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (103, 227189005, 'Before', '9JK498Q96X1736416RKB5MY35LN9', 'Maiores natus distinctio. Quia fugiat est. Deleniti quibusdam omnis! Et aut veritatis. Cupiditate unde sed! A et eos. Autem excepturi ipsam. In similique?', 
    -9999999997);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (104, 45192937, 'After', 'FX8796', 'Dolore quibusdam dolores. Molestiae molestias veniam? Vel enim corporis. Recusandae provident optio. Et corporis libero. Soluta vel aut. Deleniti ut.', 
    -9999999996);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (105, 173774694, 'Before', '04984H9LN3G9', 'Pariatur quidem quia; enim unde officia et ipsa tenetur et. Et iste nisi dolores et quisquam qui. Quo voluptatem aut excepturi laborum rem explicabo.', 
    -9999999995);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (106, 55721465, 'After', 'FQ56G2', 'Consectetur necessitatibus iusto. Sed quam cupiditate! Sed perferendis aperiam. Labore quae eveniet! Non adipisci necessitatibus. Accusantium quasi?', 
    -9999999994);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (107, 22069814, 'After', 'AP843SX85CUFW', 'Architecto nostrum officiis. Similique commodi aperiam? Natus dolores laboriosam. Beatae explicabo perspiciatis; impedit unde assumenda; aperiam aut est?', 
    -9999999993);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (108, 78844589, 'After', 'HAH150P3U03160DMYFTT2280WUDF9HG3RF47UUK7525XU7608L84GO22YOE45LA4E48F4T2U0PC7D2XV679Q0S', 'Quod quia voluptatem quia. Accusamus totam voluptas cum. Nulla et accusantium sed aliquid consequuntur ut. Quo ut est. Praesentium repellat praesentium?', 
    -9999999992);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (109, 120845443, 'Within', '8U5981U1DH3W6CDDUO0QTP5Z2PI6829ZXR012PJW1RDI4LI19V5Q0', 'Sunt in natus repudiandae. Sed molestias soluta voluptatum error voluptas eligendi. Molestiae cum tenetur enim est porro enim!', 
    -9999999991);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (110, 150651571, 'After', '0H9PIHN9X3U96A3F5N9T0W96N7UHC8R89V2328R0', 'Nulla porro autem. Et voluptatibus et? Beatae rerum autem. Omnis perspiciatis fugit. Commodi distinctio doloribus! Aliquam quae omnis? Quae numquam expedita.', 
    -9999999990);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (111, 173774695, 'After', 'PSI4J56924', 'Obcaecati unde inventore. Totam optio tempora. Libero nihil dolorum. Cum neque veniam. In ratione molestiae. Vero eius ut; incidunt quos saepe. Vitae facilis.', 
    -9999999989);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (112, 45192938, 'Before', 'RVMN2WJ6E0FU6I4N3784N61WR42225B61S771PYJB3', 'Eligendi omnis natus enim unde. Minima omnis ut? Doloremque quae et soluta omnis; at eos voluptas. Aut autem est! Quisquam magnam ut.', 
    -9999999988);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (113, 97722320, 'Within', 'QF98', 'Facilis et dolores. Recusandae dolore quae! Totam aliquam quia. At voluptatem omnis! Incidunt voluptatem dolorem. Magni voluptatem enim. Beatae neque labore;', 
    -9999999987);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (114, 204065884, 'Within', 'M5Q4', 'Ab in tempore placeat magni. Sint iste rerum sit. Omnis nemo non nesciunt qui nesciunt labore.', 
    -9999999986);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (115, 150651572, 'Before', 'A2R500I53170KH4T77S19KUOFTWNQ44X11X73', 'Sed odit corporis. Culpa sed velit sint sunt quo quaerat. Qui aliquam sit voluptatum sit ea placeat...', 
    -9999999985);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (116, 120845444, 'Before', 'J71Q868D92644T72RE', 'Quia voluptas quia minus molestiae beatae dolor. Impedit consectetur modi voluptas amet sed. Repellat in dolor totam magni consequatur!', 
    -9999999984);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (117, 22069815, 'Before', '2', 'Nam iste ratione. In saepe commodi? Commodi quibusdam sed. Et eligendi sunt. Repudiandae autem illo. Error nostrum labore! Voluptas consectetur explicabo.', 
    -9999999983);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (118, 227189006, 'After', 'N50D9F9088K5104I9B4B4BJ14HWSSJO6H643I', 'Omnis nesciunt animi eius sed quo eius.', 
    -9999999982);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (119, 173774696, 'Within', 'KJ43FYJZ5V4J24L74805Q', 'Laborum et provident. Sed sequi sint. Accusantium ea voluptate. Dolore quis dolorem; perspiciatis nostrum voluptas. Obcaecati enim ut. Est amet doloribus.', 
    -9999999981);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (120, 45192939, 'Within', 'J50J77355', 'Aut dicta odio sapiente corporis ex. Quidem odit dignissimos laudantium. Error voluptas aut explicabo excepturi quis culpa.', 
    -9999999980);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (121, 97722321, 'After', 'X63754YL0IL6', 'Qui laboriosam nesciunt. Ut molestias error. Et consequatur numquam. Iste aut eaque. Sit totam non? Voluptatem consequatur error! A ut error; natus odit sed.', 
    -9999999979);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (122, 22069816, 'After', 'BRW3NBLA', 'Quaerat mollitia nemo. Ullam architecto qui non aliquam; eum quis iste dolor. Voluptatem vitae natus sit est. Maiores consequatur et est error.', 
    -9999999978);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (123, 120845445, 'After', '04LE8DI12PL7MWR6XY', 'Deleniti qui aliquam; praesentium dolores aperiam quis non quia error. Facere nemo nostrum. Fugiat ex et quod! Dolor debitis optio autem fugit.', 
    -9999999977);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (124, 55721466, 'Before', '6MQU1B980WOK', 'Pariatur in et qui sunt deserunt. Quaerat sed impedit; autem cupiditate rerum; in voluptate omnis; et odio pariatur. Aut enim ipsam!', 
    -9999999976);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (125, 97722322, 'Within', 'KQ899A6BO12QL6Y13KYT', 'Unde exercitationem perspiciatis possimus quidem. Facere reiciendis quia unde qui distinctio dolorem. Voluptatum tenetur natus deserunt quibusdam doloribus!', 
    -9999999975);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (126, 150651573, 'Before', 'X74WSQ', 'Excepturi voluptas nostrum et vitae eligendi nemo. Suscipit molestias hic consequuntur corporis omnis unde!', 
    -9999999974);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (127, 204065885, 'After', 'JD35E8757UMRS63FTBU07YV1CA9RNJ5I8U74S52A2Q856192FO6FNF4H62Y6PW9PW', 'Alias veritatis voluptatibus reprehenderit beatae id quia.', 
    -9999999973);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (128, 227189007, 'After', 'MN3K646', 'Fugiat animi voluptates; recusandae aut animi. Ipsa tempora qui. Ex repellat sed. Neque nostrum et. Deleniti consectetur quia. Atque eos rerum...', 
    -9999999972);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (129, 45192940, 'Within', '76J663NG5J56P7', 'Dolore nam voluptas nisi deleniti cum vel. Aut similique omnis et possimus alias vel.', 
    -9999999971);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (130, 204065886, 'Before', 'KJBH35GNE49XB30JIRMX28OUWI31', 'Omnis modi possimus. Odio asperiores maiores? Tempora dolores quia. Doloremque ut quidem; placeat voluptas ex. At doloremque ea. Vel voluptas vitae. Velit...', 
    -9999999970);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (131, 120845446, 'After', 'NPU784962BUTI29OF4WFAOV9B2', 'Ut quo aut rerum ut voluptatem. Necessitatibus unde quaerat eum quod; et esse consequuntur unde ut reprehenderit iusto...', 
    -9999999969);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (132, 97722323, 'Before', 'M9GW11SC', 'Aut minus quia. Unde quos est. Iste molestias aut! Quae magnam maxime. Magnam perspiciatis vero! Aut eum vitae. Omnis perspiciatis sed...', 
    -9999999968);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (133, 120845447, 'After', '5X659VV92PF91Y33QS', 'Rem delectus sapiente. Et maiores alias. Omnis culpa dolorem. Provident voluptatibus quo! Doloremque est minus. Fuga minus voluptatem. Dignissimos nulla qui.', 
    -9999999967);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (134, 22069817, 'After', 'I7K85X7S062596F83', 'Sed repudiandae ut perferendis amet explicabo consectetur.', 
    -9999999966);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (135, 45192941, 'After', '7IH4ZOB4FKOB94T937N3VAX3V3OENS2YF5KR24GXMH7XHHK', 'Excepturi explicabo quaerat dolore ex. Qui est vero aut maxime a. Ratione eius porro? Vitae enim error. Rerum repudiandae ex.', 
    -9999999965);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (136, 97722324, 'Before', 'VUS', 'Optio aut alias. Sed facilis est! Tenetur officia illum. Non doloremque quidem. Quia laboriosam eum? Natus sit quis! Magni voluptas tenetur; adipisci dolorem.', 
    -9999999964);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (137, 78844590, 'Before', '78B7YV3', 'Necessitatibus quia quae dolores molestiae qui perspiciatis.', 
    -9999999963);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (138, 173774697, 'Before', 'L7PA4WFR', 'Est ut sed. Tempore vel recusandae. Maiores voluptatem est. Est ut dicta. Ut magnam optio. Et omnis quis! Ea molestias magni. Ipsa iste natus! Inventore non.', 
    -9999999962);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (139, 55721467, 'Before', 'H58U82TXH920TVHMU24D01XII73HU712L323C25R841QG50ATXF14EF8GJWF31144LKY5JRMN', 'Totam accusantium enim; et debitis dicta cupiditate et repudiandae consectetur. Amet repellendus magnam odit ab officia laudantium. Excepturi unde autem.', 
    -9999999961);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (140, 22069818, 'Before', 'SQP58BOM6', 'Id quia dolores debitis aut cum perspiciatis. Veritatis esse sapiente nulla; non sed quia nostrum; aut voluptatem eaque. Et aspernatur ipsum.', 
    -9999999960);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (141, 45192942, 'After', 'O3YFIUFI8H809P65225PK85KP59DL99', 'Aperiam aut harum numquam molestiae. Odio sit cumque fugit quasi? Porro quibusdam magnam! Asperiores iste et. Quis sed sint. Doloremque dolores sit.', 
    -9999999959);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (142, 227189008, 'After', '80P84R168Z1CIUZLR5', 'Est adipisci et laudantium culpa quia dolorum. Unde perspiciatis placeat quo molestiae odio qui! Eaque sed asperiores. Veniam distinctio perferendis.', 
    -9999999958);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (143, 22069819, 'After', '6WW77C2N5R6CRE89N82506TW9', 'Ipsa et dolorem est id similique iste.', 
    -9999999957);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (144, 120845448, 'Within', 'Z65881E74898483LE8EW8430XS7CT3V87E7338JEA53', 'Blanditiis deleniti eligendi voluptatibus voluptatem eum. Eos enim quaerat. Quis laudantium accusamus qui quidem sunt non.', 
    -9999999956);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (145, 97722325, 'Before', '944D4R3CL57Y53U10TQ3155TZA8F34V2URVP21DVNIT0X33T4L10EX', 'Sit sed molestiae. Debitis voluptatem impedit; ipsa doloribus tenetur. Quod ex voluptatum. Iure praesentium nobis; possimus est molestias. Illum consectetur.', 
    -9999999955);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (146, 204065887, 'Before', 'EXB8CPVNX52PS', 'Minima laudantium quia; architecto corrupti voluptas minus culpa beatae; adipisci dolorem blanditiis est natus. Qui et rerum voluptatem veritatis voluptatem.', 
    -9999999954);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (147, 120845449, 'Before', 'URF685A', 'Hic ut distinctio architecto impedit; inventore et repellendus vel. Quasi aut minus! Repellendus soluta neque; sed sit unde. Voluptatum provident odit.', 
    -9999999953);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (148, 45192943, 'After', '6U85N4M784FR56XQNJZE7JB609IJNQH8400PSJ117U5950AC0488X', 'Sed nemo sequi; nisi error nulla. Temporibus aspernatur neque! Vero laudantium aut; voluptatem ullam perferendis? Qui quidem nemo. Laborum natus quos. Qui.', 
    -9999999952);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (149, 97722326, 'After', '1FM7JH5N81YZ3920Q5DZ61FFG40Z3M451RA9OE1ND2WD', 'Natus exercitationem voluptatem consectetur atque numquam et. Aut error sed natus voluptatem impedit voluptas...', 
    -9999999951);
Insert into INQUIRIES
   (INQUIRY_KEY, INQUIRY_ID, INTQUIRY_TIME, INQUIRY_STATUS, DESCRIPTION, 
    SEVERITY)
 Values
   (150, 78844591, 'Before', 'N5N8702F53JGYXVDNCL33967', 'Dolores et voluptatem. Commodi officia nihil. Sed eum asperiores! Omnis fugiat impedit. Est suscipit voluptatem! Enim voluptatum sit; quos omnis suscipit.', 
    -9999999950);
COMMIT;

SET DEFINE OFF;
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (16, 5, 20210150, 38, 23, 
    86861);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (22, 41, 20210146, 9, 29, 
    35376);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (50, 29, 20210102, 44, 1, 
    72436);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (45, 50, 20210115, 4, 12, 
    71544);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (17, 48, 20210149, 45, 24, 
    81718);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (3, 16, 20210126, 48, 36, 
    19225);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (48, 46, 20210147, 50, 18, 
    36702);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (9, 22, 20210121, 27, 7, 
    59294);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (12, 24, 20210132, 39, 42, 
    95624);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (4, 11, 20210116, 22, 50, 
    3085);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (37, 6, 20210127, 10, 30, 
    91321);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (10, 49, 20210140, 17, 25, 
    65950);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (46, 1, 20210122, 33, 2, 
    92921);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (26, 36, 20210145, 5, 37, 
    77942);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (32, 42, 20210108, 12, 13, 
    40090);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (43, 47, 20210148, 11, 43, 
    1403);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (27, 45, 20210117, 34, 19, 
    45857);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (33, 30, 20210135, 40, 48, 
    65989);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (38, 25, 20210112, 6, 46, 
    15624);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (5, 7, 20210103, 1, 8, 
    79168);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (49, 37, 20210133, 18, 14, 
    34644);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (47, 2, 20210118, 28, 38, 
    52246);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (44, 8, 20210128, 35, 3, 
    21255);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (11, 3, 20210109, 7, 9, 
    74775);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (28, 17, 20210123, 46, 31, 
    10355);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (6, 43, 20210141, 2, 26, 
    62339);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (1, 12, 20210129, 8, 49, 
    71503);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (23, 9, 20210124, 41, 47, 
    57092);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (29, 18, 20210113, 23, 20, 
    96550);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (18, 4, 20210136, 3, 45, 
    24834);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (24, 10, 20210119, 36, 15, 
    15342);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (39, 13, 20210142, 49, 21, 
    55538);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (7, 31, 20210114, 13, 44, 
    65961);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (30, 19, 20210120, 47, 32, 
    27834);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (25, 14, 20210137, 42, 4, 
    89138);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (13, 26, 20210130, 37, 16, 
    51461);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (31, 20, 20210104, 19, 39, 
    46870);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (19, 38, 20210110, 29, 27, 
    87025);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (14, 44, 20210105, 24, 34, 
    17887);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (34, 15, 20210143, 14, 10, 
    83053);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (40, 39, 20210111, 30, 40, 
    22010);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (2, 34, 20210125, 20, 22, 
    65299);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (35, 40, 20210138, 15, 35, 
    28053);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (20, 21, 20210131, 43, 33, 
    61182);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (41, 32, 20210106, 21, 28, 
    50846);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (15, 27, 20210101, 16, 41, 
    80354);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (36, 33, 20210107, 25, 5, 
    85042);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (21, 35, 20210144, 31, 11, 
    16666);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (8, 28, 20210139, 26, 6, 
    16016);
Insert into LOYALTY_FACT
   (FQ_KEY, POINTS_RED_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY, 
    POINTS_CONSUMED)
 Values
   (42, 23, 20210134, 32, 17, 
    60945);
COMMIT;

SET DEFINE OFF;
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (1, 10838, 'Joetta', 'Silvia', 'F', 
    511677627, TO_DATE('01/30/1984 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Platinum', 271, 'Turkey', 
    'Kansas', 'Chula');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (2, 10027, 'Owen', 'Villanueva', 'M', 
    205233917, TO_DATE('12/25/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 1, 'Namibia', 
    'Michigan', 'Zuni');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (3, 10128, 'Keven', 'Key', 'M', 
    459770589, TO_DATE('07/28/1998 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Gold', 6934, 'Mauritania', 
    'New York', 'Pottstown');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (4, 10937, 'Whitney', 'Palumbo', 'M', 
    585058523, TO_DATE('05/20/1960 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 321, 'Botswana', 
    'Connecticut', 'Newport News');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (5, 10203, 'Curtis', 'Mayo', 'F', 
    544413646, TO_DATE('11/04/1964 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 73, 'Afghanistan', 
    'Alabama', 'Yakima');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (6, 10839, 'Alison', 'Keyes', 'M', 
    377826336, TO_DATE('01/10/1971 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 9095, 'India', 
    'Maine', 'Beloit');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (7, 10938, 'Antone', 'Simmons', 'F', 
    820735595, TO_DATE('06/03/1966 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 14513, 'Yemen', 
    'South Dakota', 'Fairfax Station');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (8, 10028, 'Alva', 'Dees', 'F', 
    317412903, TO_DATE('08/22/1998 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Platinum', NULL, 'Austria', 
    'Idaho', 'Tiptonville');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (9, 10612, 'Abbie', 'Caldwell', 'M', 
    987746033, TO_DATE('09/01/1956 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 18723, 'Bulgaria', 
    'Minnesota', 'Pottsville');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (10, 10560, 'Ehtel', 'Villareal', 'M', 
    455101121, TO_DATE('01/19/1994 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 5224, 'Malta', 
    'Hawaii', 'Yakutat');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (11, 10129, 'Mary', 'Mcclure', 'F', 
    807473573, TO_DATE('03/28/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 16967, 'Nepal', 
    'Illinois', 'Hebron');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (12, 10304, 'Tillie', 'Simms', 'M', 
    599497873, TO_DATE('08/13/1960 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 9645, 'Kenya', 
    'Wisconsin', 'Fairfield');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (13, 10029, 'Letha', 'Bales', 'M', 
    623792049, TO_DATE('03/07/1966 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 18561, 'Sri Lanka', 
    'Colorado', 'Newton');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (14, 10460, 'Kurt', 'Calhoun', 'F', 
    868975823, TO_DATE('12/26/1992 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 7001, 'France', 
    'Maine', 'Poughkeepsie');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (15, 10561, 'Broderick', 'Pannell', 'F', 
    787295614, TO_DATE('04/06/1957 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 10788, 'Canada', 
    'Hawaii', 'Lordsburg');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (16, 10204, 'Gricelda', 'Mccollum', 'M', 
    271009948, TO_DATE('01/04/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', NULL, 'Lithuania', 
    'North Dakota', 'Tiro');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (17, 10305, 'Russell', 'Mays', 'M', 
    767889691, TO_DATE('04/03/1986 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 9, 'Zambia', 
    'New Jersey', 'Newton Center');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (18, 10840, 'Dayna', 'Villarreal', 'M', 
    394552793, TO_DATE('04/01/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 757, 'Paraguay', 
    'Michigan', 'Howard County');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (19, 10130, 'Ricky', 'Pantoja', 'M', 
    833225677, TO_DATE('03/14/1979 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 438, 'Gambia', 
    'West Virginia', 'Poulsbo');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (20, 10205, 'Eddy', 'Keys', 'F', 
    260483534, TO_DATE('05/19/1997 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 3, 'Bahrain', 
    'Missouri', 'Newton Falls');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (21, 10939, 'Andreas', 'Mccombs', 'M', 
    144884098, TO_DATE('01/07/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 16379, 'Nigeria', 
    'Montana', 'Poultney');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (22, 10306, 'Adelle', 'Pape', 'M', 
    345741201, TO_DATE('06/12/1995 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Platinum', 18003, 'Namibia', 
    'Maryland', 'Loretto');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (23, 10206, 'Cruz', 'Mcconnell', 'M', 
    39694416, TO_DATE('07/08/1957 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 3622, 'Bangladesh', 
    'Vermont', 'Newton Grove');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (24, 10307, 'Cordia', 'Mcadams', 'M', 
    524354633, TO_DATE('01/08/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 17367, 'Belgium', 
    'South Carolina', 'Hecla');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (25, 10841, 'Chassidy', 'Pappas', 'M', 
    840625969, TO_DATE('01/14/1954 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Platinum', 703, 'Zimbabwe', 
    'New Mexico', 'Howard Lake');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (26, 10207, 'Brigida', 'Ball', 'M', 
    286788331, TO_DATE('05/02/1953 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Gold', 10335, 'Japan', 
    'Tennessee', 'Pound Ridge');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (27, 10461, 'Jermaine', 'Khan', 'M', 
    482381858, TO_DATE('03/16/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 2582, 'Hungary', 
    'Tennessee', 'Yale');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (28, 10940, 'Arlen', 'Mccool', 'F', 
    777275330, TO_DATE('04/29/1966 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 994, 'Moldova', 
    'Montana', 'Tisch Mills');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (29, 10308, 'Despina', 'Simon', 'M', 
    869481871, TO_DATE('03/19/1999 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 4747, 'Uganda', 
    'Ohio', 'Yamhill');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (30, 10030, 'Addie', 'Villasenor', 'F', 
    442093729, TO_DATE('10/06/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 10957, 'Switzerland', 
    'Washington', 'Chula Vista');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (31, 10131, 'Alia', 'Simone', 'F', 
    933139921, TO_DATE('10/11/1984 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 3, 'Gambia', 
    'Indiana', 'Loris');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (32, 10031, 'Merna', 'Galbraith', 'F', 
    455136926, TO_DATE('06/28/1954 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 1466, 'Iceland', 
    'Nebraska', 'Belt');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (33, 10713, 'Morgan', 'Mcafee', 'M', 
    502865305, TO_DATE('01/06/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 395, 'Yemen', 
    'Indiana', 'Tishomingo');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (34, 10842, 'Vincenzo', 'Dehart', 'F', 
    879792803, TO_DATE('01/07/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Gold', 5186, 'Indonesia', 
    'Mississippi', 'Church Hill');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (35, 10613, 'Hilton', 'Villegas', 'F', 
    413372302, TO_DATE('01/19/2001 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 371, 'Paraguay', 
    'Mississippi', 'Howe');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (36, 10132, 'Felisha', 'Gale', 'F', 
    806712493, TO_DATE('10/08/1967 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 97, 'Nicaragua', 
    'North Dakota', 'Fairfield Bay');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (37, 10714, 'Antonio', 'Kidd', 'M', 
    981767484, TO_DATE('04/15/1985 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 14078, 'Bahrain', 
    'Pennsylvania', 'Hector');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (38, 10941, 'Carl', 'Calkins', 'M', 
    934132453, TO_DATE('03/02/1985 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Gold', 11755, 'Albania', 
    'California', 'Lorton');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (39, 10562, 'Alejandro', 'Ballard', 'F', 
    34880706, TO_DATE('11/20/1988 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Platinum', NULL, 'Panama', 
    'California', 'Fairforest');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (40, 10462, 'Leontine', 'Mcalister', 'M', 
    104363495, TO_DATE('05/31/1961 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 19823, 'Nigeria', 
    'Missouri', 'Belton');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (41, 10843, 'Florencio', 'Call', 'F', 
    651483165, TO_DATE('10/21/1978 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Gold', 7584, 'Latvia', 
    'Missouri', 'Howell');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (42, 10563, 'Christena', 'Dejesus', 'F', 
    900066811, TO_DATE('11/04/1978 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Gold', 2352, 'Tunisia', 
    'Michigan', 'Los Alamitos');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (43, 10614, 'Adriene', 'Kidwell', 'F', 
    531990008, TO_DATE('11/29/1962 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Platinum', NULL, 'Thailand', 
    'North Dakota', 'Church Rock');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (44, 10942, 'Dallas', 'Mcallister', 'M', 
    815231283, TO_DATE('11/15/1968 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 4484, 'Samoa', 
    'Oregon', 'Howells');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (45, 10844, 'Alesha', 'Galindo', 'F', 
    675273129, TO_DATE('09/30/1953 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 52, 'Swaziland', 
    'Vermont', 'Hedgesville');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (46, 10715, 'Jude', 'Kiefer', 'M', 
    517134690, TO_DATE('08/18/1963 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Gold', 7200, 'Australia', 
    'Oregon', 'Newton Highlands');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (47, 10943, 'Darryl', 'Banda', 'M', 
    56259503, TO_DATE('01/17/1962 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 10221, 'Albania', 
    'Mississippi', 'Fairhaven');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (48, 10463, 'Jesus', 'Paquette', 'M', 
    560704843, TO_DATE('10/08/1955 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Platinum', NULL, 'Mexico', 
    'West Virginia', 'Los Alamos');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (49, 10208, 'Sue', 'Callahan', 'M', 
    887011514, TO_DATE('12/17/1953 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Blue', 5, 'United Kingdom', 
    'Delaware', 'Poway');
Insert into PASSANGER
   (PASSENGER_KEY, PASSENGER_ID, FIRST_NAME, LAST_NAME, GENDER, 
    PASSPORT_NUMBER, DOB, MEMBERSHIP_STATUS, MILEAGE_BOUNS, COUNTRY, 
    STATE, CITY)
 Values
   (50, 10564, 'Kieth', 'Mcarthur', 'M', 
    927416854, TO_DATE('06/12/1990 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Silver', 17664, 'Zimbabwe', 
    'Wisconsin', 'Newton Lower Falls');
COMMIT;

SET DEFINE OFF;
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (1, 3892208, 'Elene', TO_DATE('07/03/1965 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Estonia');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (2, 2660977, 'Lasonya', TO_DATE('01/29/1976 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Estonia');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (3, 1658924, 'Shantae', TO_DATE('11/01/2001 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Guatemala');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (4, 3892209, 'Adrienne', TO_DATE('09/09/1968 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Bangladesh');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (5, 6630789, 'Chelsie', TO_DATE('01/15/1955 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Malawi');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (6, 427693, 'Veronique', TO_DATE('03/25/1992 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Guyana');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (7, 5399558, 'Gerard', TO_DATE('02/09/1972 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Switzerland');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (8, 8063425, 'Deidre', TO_DATE('08/12/1958 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Israel');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (9, 10994069, 'Antoine', TO_DATE('01/03/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Albania');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (10, 12312312, 'Marion', TO_DATE('07/11/1998 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'United Kingdom');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (11, 1658925, 'Cheree', TO_DATE('06/07/1990 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Afghanistan');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (12, 427694, 'Delphine', TO_DATE('06/16/1976 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Ireland');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (13, 12225299, 'Juan', TO_DATE('04/03/1977 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Canada');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (14, 10994070, 'Garrett', TO_DATE('06/24/1989 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Finland');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (15, 12225300, 'Rubie', TO_DATE('07/24/1996 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Malawi');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (16, 2660978, 'Addie', TO_DATE('03/18/1981 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Spain');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (17, 1658926, 'Lamont', TO_DATE('12/09/1991 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Korea');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (18, 9294657, 'Migdalia', TO_DATE('04/01/1969 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Argentina');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (19, 427695, 'Humberto', TO_DATE('03/15/1992 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Portugal');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (20, 1658927, 'Bobbie', TO_DATE('09/12/1972 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Jordan');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (21, 10994071, 'Loise', TO_DATE('03/03/1958 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'South Africa');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (22, 6630790, 'Bell', TO_DATE('04/27/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Israel');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (23, 5399559, 'Andrea', TO_DATE('04/11/1988 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Portugal');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (24, 8063426, 'Bobbi', TO_DATE('09/26/1954 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Croatia');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (25, 427696, 'Adam', TO_DATE('04/06/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Bangladesh');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (26, 3892210, 'Caitlin', TO_DATE('06/29/1982 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Japan');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (27, 6630791, 'Andy', TO_DATE('02/27/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Suriname');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (28, 12225301, 'Estefana', TO_DATE('05/06/1955 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Cuba');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (29, 5399560, 'Lili', TO_DATE('11/27/1967 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Bangladesh');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (30, 2660979, 'Randell', TO_DATE('08/03/1962 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Afghanistan');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (31, 1658928, 'Bella', TO_DATE('06/24/1978 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Guyana');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (32, 427697, 'Floyd', TO_DATE('07/21/1980 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Mauritania');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (33, 3892211, 'Allen', TO_DATE('01/06/1953 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Mauritius');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (34, 9294658, 'Tiffanie', TO_DATE('04/28/1959 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Australia');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (35, 10994072, 'Charles', TO_DATE('01/05/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Suriname');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (36, 12225302, 'Agnus', TO_DATE('08/10/1998 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Zimbabwe');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (37, 1658929, 'Lewis', TO_DATE('04/09/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Uruguay');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (38, 427698, 'Julian', TO_DATE('09/04/1996 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Morocco');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (39, 1658930, 'Isobel', TO_DATE('09/02/1984 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Tunisia');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (40, 10994073, 'Joey', TO_DATE('03/30/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Mongolia');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (41, 427699, 'Kymberly', TO_DATE('04/27/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Iraq');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (42, 2660980, 'Gonzalo', TO_DATE('02/04/1993 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Chile');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (43, 1658931, 'Madaline', TO_DATE('02/20/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Denmark');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (44, 427700, 'Adaline', TO_DATE('03/30/1967 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Ecuador');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (45, 6630792, 'Rosia', TO_DATE('11/21/1974 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Denmark');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (46, 5399561, 'Keenan', TO_DATE('01/04/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'India');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (47, 12225303, 'Lucinda', TO_DATE('03/06/1979 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Ecuador');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (48, 3892212, 'Booker', TO_DATE('12/24/1964 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Junior', 
    'Bangladesh');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (49, 1658932, 'Amiee', TO_DATE('01/11/1976 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Senior', 
    'Argentina');
Insert into PILOT
   (PILOT_KEY, PILOT_ID, PILOT_NAME, DOB, PILOT_LEVEL, 
    PILOT_COUNTRY)
 Values
   (50, 427701, 'Rigoberto', TO_DATE('01/06/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'), 'Lead', 
    'Ukraine');
COMMIT;

SET DEFINE OFF;
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (1, 56622, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (2, 104923, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (3, 13936, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (4, 117235, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (5, 68935, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (6, 104924, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (7, 117236, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (8, 1624, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (9, 56623, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (10, 13937, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (11, 104925, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (12, 74452, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (13, 1625, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (14, 13938, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (15, 27151, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (16, 1626, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (17, 13939, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (18, 117237, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (19, 39464, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (20, 86765, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (21, 27152, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (22, 74453, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (23, 39465, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (24, 27153, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (25, 86766, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (26, 1627, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (27, 74454, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (28, 104926, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (29, 68936, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (30, 86767, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (31, 74455, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (32, 86768, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (33, 117238, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (34, 13940, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (35, 104927, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (36, 1628, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (37, 117239, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (38, 39466, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (39, 13941, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (40, 56624, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (41, 68937, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (42, 104928, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (43, 74456, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (44, 56625, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (45, 86769, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (46, 74457, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (47, 86770, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (48, 117240, 'Miles');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (49, 104929, 'Upgrade');
Insert into POINTS_REDEEMING
   (POINTS_RED_KEY, REDEEMING_ID, REDEEMING_TYPE)
 Values
   (50, 74458, 'Upgrade');
COMMIT;

SET DEFINE OFF;
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (1, 41259, 'Discount', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (2, 105715, 'Extra_miles', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (3, 118027, 'Extra_miles', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (4, 105716, 'Discount', 'Gold');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (5, 55415, 'Points', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (6, 88997, 'Points', 'Gold');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (7, 118028, 'Discount', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (8, 12826, 'Discount', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (9, 105717, 'Extra_miles', 'Gold');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (10, 67728, 'Points', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (11, 118029, 'Extra_miles', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (12, 55416, 'Discount', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (13, 28947, 'Discount', 'Gold');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (14, 105718, 'Extra_miles', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (15, 514, 'Points', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (16, 41260, 'Discount', 'Gold');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (17, 67729, 'Discount', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (18, 76685, 'Points', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (19, 88998, 'Extra_miles', 'Gold');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (20, 118030, 'Extra_miles', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (21, 55417, 'Extra_miles', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (22, 105719, 'Points', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (23, 12827, 'Discount', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (24, 67730, 'Points', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (25, 515, 'Discount', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (26, 118031, 'Discount', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (27, 28948, 'Extra_miles', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (28, 76686, 'Extra_miles', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (29, 12828, 'Extra_miles', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (30, 55418, 'Points', 'Gold');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (31, 41261, 'Points', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (32, 88999, 'Discount', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (33, 67731, 'Discount', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (34, 516, 'Points', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (35, 12829, 'Extra_miles', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (36, 55419, 'Discount', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (37, 517, 'Extra_miles', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (38, 76687, 'Extra_miles', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (39, 105720, 'Extra_miles', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (40, 67732, 'Points', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (41, 89000, 'Points', 'Gold');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (42, 118032, 'Points', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (43, 28949, 'Discount', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (44, 41262, 'Discount', 'Silver');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (45, 76688, 'Discount', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (46, 12830, 'Discount', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (47, 89001, 'Points', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (48, 28950, 'Discount', 'All');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (49, 41263, 'Extra_miles', 'Platinum');
Insert into PROMOTION
   (PROMOTION_KEY, PROMOTION_ID, TYPE, MEMBERSHIP_TYPE)
 Values
   (50, 518, 'Discount', 'All');
COMMIT;

SET DEFINE OFF;
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (123, 12, 20210115, 1, 48);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (135, 45, 20210150, 14, 31);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (129, 6, 20210121, 50, 26);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (146, 48, 20210116, 23, 32);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (124, 50, 20210101, 44, 5);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (108, 1, 20210134, 29, 21);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (141, 7, 20210122, 39, 50);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (103, 2, 20210107, 7, 16);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (150, 25, 20210123, 34, 36);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (130, 8, 20210102, 20, 22);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (118, 36, 20210140, 40, 46);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (149, 42, 20210135, 2, 27);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (125, 37, 20210141, 15, 11);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (109, 18, 20210129, 35, 33);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (136, 46, 20210108, 21, 42);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (142, 49, 20210103, 24, 28);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (113, 43, 20210117, 30, 49);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (119, 31, 20210109, 25, 6);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (114, 3, 20210112, 8, 47);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (104, 9, 20210118, 3, 17);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (131, 13, 20210136, 16, 12);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (137, 47, 20210146, 31, 18);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (120, 38, 20210149, 9, 23);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (110, 4, 20210104, 22, 1);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (115, 44, 20210142, 4, 37);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (147, 19, 20210147, 10, 29);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (126, 10, 20210137, 17, 7);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (132, 39, 20210113, 26, 43);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (145, 26, 20210110, 41, 24);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (105, 5, 20210105, 47, 38);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (121, 32, 20210145, 45, 30);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (111, 11, 20210119, 48, 13);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (143, 27, 20210148, 12, 45);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (148, 14, 20210111, 36, 19);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (127, 33, 20210143, 32, 25);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (138, 34, 20210114, 5, 44);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (106, 28, 20210106, 18, 14);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (116, 20, 20210120, 11, 39);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (101, 15, 20210124, 42, 2);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (122, 23, 20210130, 46, 20);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (144, 21, 20210138, 27, 34);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (139, 16, 20210125, 6, 15);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (133, 22, 20210144, 49, 40);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (117, 17, 20210139, 37, 35);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (134, 40, 20210131, 43, 41);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (128, 35, 20210126, 33, 8);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (140, 29, 20210132, 38, 3);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (112, 41, 20210127, 13, 9);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (107, 24, 20210133, 28, 4);
Insert into REPORT_INQUIRY_FACT
   (INQUIRY_KEY, STAFF_KEY, DATE_KEY, PASSENGER_KEY, FLIGHT_KEY)
 Values
   (102, 30, 20210128, 19, 10);
COMMIT;

SET DEFINE OFF;
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (1, 96, 'Ecuador', 'Kuwait', 'Mount Hagen', 
    'Kos');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (2, 18, 'Australia', 'Romania', 'Princeton', 
    'Durango Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (3, 44, 'Indonesia', 'Finland', 'Niamtougou International', 
    'Sion');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (4, 100, 'Sri Lanka', 'Uruguay', 'Sudbury', 
    'Pudong');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (5, 89, 'Turkey', 'Georgia', 'Brenoux', 
    'Fort Worth Meacham Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (6, 55, 'Austria', 'Brazil', 'Chisholm Hibbing', 
    'Yushu Batang');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (7, 22, 'South Africa', 'United Kingdom', 'Jiayuguan Airport', 
    'Los Angeles Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (8, 97, 'Fiji', 'Israel', 'Berlin Hauptbahnhof', 
    'Habib Bourguiba Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (9, 90, 'Afghanistan', 'Iceland', 'Mc Allen Miller Intl', 
    'Yakutsk');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (10, 74, 'Jordan', 'Panama', 'Kalgoorlie Boulder', 
    'Catamarca');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (11, 45, 'Swaziland', 'Canada', 'Mannheim City', 
    'Dalaman');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (12, 8, 'Suriname', 'Philippines', 'Mikonos', 
    'Stafsberg Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (13, 56, 'Hungary', 'France', 'Andravida', 
    'Sungshan');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (14, 19, 'Iceland', 'India', 'Afutara Airport', 
    'Hood Aaf');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (15, 46, 'Denmark', 'Lebanon', 'Natashquan', 
    'Hawarden');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (16, 98, 'Chile', 'Korea', 'Swan River Airport', 
    'Anelghowhat Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (17, 57, 'Croatia', 'Belgium', 'Sebha', 
    'Olympia Regional Airpor');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (18, 33, 'Romania', 'Bahrain', 'Selaparang', 
    'Gode Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (19, 47, 'Guatemala', 'Kenya', 'West Houston', 
    'Charlotte Douglas Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (20, 58, 'Namibia', 'Czech Republic', 'Pohnpei Intl', 
    'Orcas Island Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (21, 91, 'Lebanon', 'Sweden', 'Akunnaaq Heliport', 
    'Petawawa');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (22, 99, 'United Kingdom', 'Viet Nam', 'Guernsey', 
    'Nikunau Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (23, 48, 'Qatar', 'Denmark', 'Bangalore', 
    'St Jean');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (24, 9, 'Portugal', 'Bangladesh', 'Moses Kilangin', 
    'Imperial Co');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (25, 59, 'Israel', 'Croatia', 'Key Largo', 
    'Minot Afb');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (26, 20, 'Iraq', 'Austria', 'Munich HBF', 
    'Wittman Regional Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (27, 49, 'Spain', 'Estonia', 'Ondangwa Airport', 
    'Long Bawan Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (28, 64, 'Pakistan', 'Cyprus', 'Kangra Airport', 
    'Sveg');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (29, 75, 'Latvia', 'Guyana', 'Kopitnari', 
    'Wangerooge Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (30, 60, 'New Zealand', 'Samoa', 'Sege Airport', 
    'Tancredo Neves Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (31, 65, 'Uganda', 'Albania', 'Aro', 
    'Mediterranee');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (32, 76, 'Malta', 'Bulgaria', 'Bologna', 
    'Kaikoura');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (33, 10, 'Czech Republic', 'Yemen', 'El Tor', 
    'Pohnpei Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (34, 66, 'Argentina', 'Botswana', 'Capurgana Airport', 
    'Rishiri');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (35, 77, 'Mexico', 'Zambia', 'Lovell Fld', 
    'Delta Municipal Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (36, 92, 'Kuwait', 'Belize', 'Annette Island', 
    'Chicago Ohare Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (37, 85, 'Tunisia', 'Swaziland', 'Kirkuk AB', 
    'Las Cruces Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (38, 21, 'Mauritania', 'Mauritania', 'Aurillac', 
    'Santa Genoveva');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (39, 67, 'Finland', 'Guatemala', 'Bradshaw Aaf', 
    'Valle De La Pascua');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (40, 23, 'France', 'Japan', 'Gurney Airport', 
    'Coober Pedy Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (41, 93, 'Bangladesh', 'New Zealand', 'Ashgabat', 
    'Mau Hau');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (42, 78, 'Moldova', 'Malawi', 'Worland Municipal Airport', 
    'Igor I Sikorsky Mem');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (43, 86, 'Yemen', 'Argentina', 'Mildura Airport', 
    'Miramichi');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (44, 94, 'Myanmar', 'Uganda', 'Wilmington Intl', 
    'Karuluk Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (45, 68, 'Lithuania', 'Pakistan', 'Minacu Airport', 
    'Cambridge');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (46, 79, 'Belgium', 'Singapore', 'Phuket Intl', 
    'Mc Chord Afb');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (47, 11, 'Brazil', 'Afghanistan', 'Mayumba Airport', 
    'Blagnac');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (48, 87, 'Bulgaria', 'South Africa', 'Futuna Airport', 
    'Penza Airport');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (49, 50, 'Sweden', 'Mongolia', 'Chandigarh', 
    'Sarasota Bradenton Intl');
Insert into ROUTE
   (ROUTE_KEY, ROUTE_ID, TAKEOFF_COUNTRY, LANDOFF_COUNTRY, TAKEOFF_AIRPORT, 
    LANDOFF_AIRPORT)
 Values
   (50, 69, 'Slovenia', 'Portugal', 'Lamap Airport', 
    'Robins Afb');
COMMIT;

SET DEFINE OFF;
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (1, 93805, 'Broderick', 'Male', 'Attendant', 
    TO_DATE('05/16/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (2, 115276, 'Reyes', 'Female', 'Attendant', 
    TO_DATE('11/16/1956 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (3, 55704, 'Abraham', 'Female', 'Co-Pilot', 
    TO_DATE('04/21/1954 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (4, 44167, 'Codi', 'Male', 'carrier', 
    TO_DATE('01/27/1956 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (5, 14296, 'Johnny', 'Male', 'carrier', 
    TO_DATE('01/08/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (6, 1984, 'Keesha', 'Male', 'Attendant', 
    TO_DATE('07/27/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (7, 14297, 'Clair', 'Male', 'Attendant', 
    TO_DATE('01/06/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (8, 31855, 'Abe', 'Female', 'Attendant', 
    TO_DATE('06/21/1992 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (9, 1985, 'Kirby', 'Female', 'Attendant', 
    TO_DATE('01/08/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (10, 44168, 'Eloy', 'Male', 'Attendant', 
    TO_DATE('08/08/1953 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (11, 81493, 'Adam', 'Male', 'Co-Pilot', 
    TO_DATE('08/13/1963 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (12, 102965, 'Adelaida', 'Male', 'Attendant', 
    TO_DATE('05/21/2000 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (13, 31856, 'Adela', 'Female', 'Attendant', 
    TO_DATE('03/21/1966 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (14, 68017, 'Dave', 'Male', 'Co-Pilot', 
    TO_DATE('07/03/1965 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (15, 14298, 'Cruz', 'Male', 'Attendant', 
    TO_DATE('09/27/1960 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (16, 115277, 'Graham', 'Male', 'Co-Pilot', 
    TO_DATE('06/15/1976 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (17, 1986, 'Moon', 'Female', 'Co-Pilot', 
    TO_DATE('03/09/1977 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (18, 44169, 'Elinor', 'Male', 'carrier', 
    TO_DATE('01/15/1997 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (19, 14299, 'Tyron', 'Male', 'Co-Pilot', 
    TO_DATE('05/15/2001 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (20, 55705, 'Jean', 'Male', 'Co-Pilot', 
    TO_DATE('03/13/1973 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (21, 1987, 'Ralph', 'Female', 'carrier', 
    TO_DATE('06/20/1989 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (22, 31857, 'Adelina', 'Female', 'Attendant', 
    TO_DATE('01/10/1997 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (23, 102966, 'Suzie', 'Female', 'Attendant', 
    TO_DATE('08/18/1953 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (24, 44170, 'Leroy', 'Male', 'Attendant', 
    TO_DATE('06/09/1954 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (25, 93806, 'Hayden', 'Female', 'Co-Pilot', 
    TO_DATE('01/14/1955 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (26, 81494, 'Nakisha', 'Female', 'Attendant', 
    TO_DATE('02/07/1954 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (27, 93807, 'Giovanni', 'Male', 'Co-Pilot', 
    TO_DATE('06/23/1953 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (28, 31858, 'Rob', 'Male', 'Attendant', 
    TO_DATE('09/15/1967 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (29, 44171, 'Asia', 'Female', 'Attendant', 
    TO_DATE('12/21/1962 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (30, 31859, 'Darnell', 'Male', 'carrier', 
    TO_DATE('09/16/1977 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (31, 44172, 'Vito', 'Female', 'Attendant', 
    TO_DATE('04/30/1993 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (32, 115278, 'Domingo', 'Male', 'carrier', 
    TO_DATE('06/07/1955 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (33, 102967, 'Clyde', 'Male', 'carrier', 
    TO_DATE('04/28/1983 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (34, 14300, 'Quintin', 'Male', 'Attendant', 
    TO_DATE('07/11/1992 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (35, 115279, 'Corinne', 'Male', 'carrier', 
    TO_DATE('01/06/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (36, 31860, 'Aubrey', 'Male', 'carrier', 
    TO_DATE('10/10/1980 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (37, 1988, 'Cherryl', 'Male', 'carrier', 
    TO_DATE('06/26/1960 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (38, 44173, 'Felice', 'Male', 'carrier', 
    TO_DATE('01/01/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (39, 81495, 'Particia', 'Male', 'carrier', 
    TO_DATE('08/02/1965 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (40, 68018, 'Elizabeth', 'Female', 'Attendant', 
    TO_DATE('09/14/1954 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (41, 55706, 'Denice', 'Female', 'carrier', 
    TO_DATE('04/27/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (42, 14301, 'Deidra', 'Male', 'carrier', 
    TO_DATE('07/18/1953 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (43, 93808, 'Ronnie', 'Male', 'carrier', 
    TO_DATE('02/15/1986 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (44, 81496, 'Orpha', 'Female', 'Attendant', 
    TO_DATE('07/16/1972 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (45, 93809, 'Laurice', 'Male', 'carrier', 
    TO_DATE('11/13/1970 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (46, 81497, 'Harley', 'Male', 'carrier', 
    TO_DATE('08/20/1998 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (47, 102968, 'Eldora', 'Male', 'Co-Pilot', 
    TO_DATE('07/27/1991 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (48, 68019, 'Jim', 'Female', 'Attendant', 
    TO_DATE('04/06/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (49, 55707, 'Abram', 'Male', 'Attendant', 
    TO_DATE('09/25/1966 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
Insert into STAFF
   (STAFF_KEY, STAFF_ID, STAFF_NAME, GENDER, ROLE, 
    DOB)
 Values
   (50, 115280, 'Chelsie', 'Male', 'Co-Pilot', 
    TO_DATE('04/06/1952 00:00:00', 'MM/DD/YYYY HH24:MI:SS'));
COMMIT;

SET DEFINE OFF;
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (15, 1, 48, 20210117, 50, 
    2);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (50, 14, 31, 20210133, 49, 
    21);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (21, 50, 26, 20210128, 4, 
    6);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (16, 23, 32, 20210112, 26, 
    8);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (1, 44, 5, 20210150, 32, 
    17);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (34, 29, 21, 20210123, 27, 
    9);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (22, 39, 50, 20210129, 47, 
    13);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (7, 7, 16, 20210118, 20, 
    3);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (23, 34, 36, 20210113, 33, 
    10);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (2, 20, 22, 20210119, 28, 
    11);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (40, 40, 46, 20210141, 45, 
    6);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (35, 2, 27, 20210136, 10, 
    10);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (41, 15, 11, 20210105, 23, 
    18);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (29, 35, 33, 20210114, 5, 
    23);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (8, 21, 42, 20210147, 48, 
    18);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (3, 24, 28, 20210142, 29, 
    18);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (17, 30, 49, 20210124, 44, 
    16);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (9, 25, 6, 20210120, 11, 
    3);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (12, 8, 47, 20210130, 15, 
    9);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (18, 3, 17, 20210115, 21, 
    5);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (36, 16, 12, 20210111, 46, 
    22);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (46, 31, 18, 20210145, 6, 
    16);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (49, 9, 23, 20210137, 1, 
    7);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (4, 22, 1, 20210106, 7, 
    22);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (42, 4, 37, 20210148, 16, 
    6);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (47, 10, 29, 20210121, 39, 
    1);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (37, 17, 7, 20210143, 24, 
    21);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (13, 26, 43, 20210146, 2, 
    12);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (10, 41, 24, 20210101, 34, 
    7);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (5, 47, 38, 20210107, 22, 
    11);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (45, 45, 30, 20210138, 40, 
    16);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (19, 48, 13, 20210125, 30, 
    23);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (48, 12, 45, 20210102, 17, 
    16);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (11, 36, 19, 20210144, 12, 
    18);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (43, 32, 25, 20210131, 8, 
    1);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (14, 5, 44, 20210126, 25, 
    21);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (6, 18, 14, 20210139, 31, 
    8);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (20, 11, 39, 20210134, 18, 
    17);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (24, 42, 2, 20210132, 3, 
    24);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (30, 46, 20, 20210116, 35, 
    3);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (38, 27, 34, 20210122, 9, 
    22);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (25, 6, 15, 20210149, 41, 
    2);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (44, 49, 40, 20210108, 36, 
    5);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (39, 37, 35, 20210103, 42, 
    10);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (31, 43, 41, 20210127, 13, 
    10);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (26, 33, 8, 20210140, 37, 
    2);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (32, 38, 3, 20210135, 43, 
    2);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (27, 13, 9, 20210109, 19, 
    4);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (33, 28, 4, 20210104, 14, 
    4);
Insert into STAYING_FACT
   (FQ_KEY, HOTEL_KEY, HOTEL_STAYING_KEY, DATE_KEY, PASSENGER_KEY, 
    DURATION)
 Values
   (28, 19, 10, 20210110, 38, 
    20);
COMMIT;

SET DEFINE OFF;
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (1, 162292739, 'Done', 43, 30, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (2, 886404441, 'Pending', 24, 21, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (3, 39181927, 'Pending', 7, 20, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (4, 1025944148, 'Pending', 44, 11, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (5, 1149054958, 'Done', 13, 45, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (6, 162292740, 'Pending', 33, 28, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (7, 364243298, 'Canceled', 77, 13, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (8, 763293629, 'Done', 29, 28, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (9, 607472556, 'Pending', 70, 41, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (10, 730583369, 'Pending', 45, 26, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (11, 607472557, 'Canceled', 60, 50, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (12, 730583370, 'Done', 7, 17, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (13, 607472558, 'Canceled', 44, 50, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (14, 730583371, 'Canceled', 15, 36, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (15, 487354111, 'Canceled', 38, 34, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (16, 39181928, 'Done', 49, 42, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (17, 364243299, 'Pending', 23, 48, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (18, 886404442, 'Done', 49, 18, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (19, 162292741, 'Canceled', 86, 46, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (20, 487354112, 'Pending', 30, 20, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (21, 39181929, 'Done', 83, 41, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (22, 364243300, 'Done', 58, 20, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (23, 1025944149, 'Canceled', 5, 25, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (24, 763293630, 'Done', 33, 16, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (25, 607472559, 'Done', 17, 45, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (26, 1149054959, 'Pending', 54, 27, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (27, 1025944150, 'Done', 27, 19, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (28, 730583372, 'Canceled', 47, 16, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (29, 487354113, 'Pending', 38, 46, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (30, 1149054960, 'Canceled', 13, 39, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (31, 364243301, 'Pending', 42, 18, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (32, 162292742, 'Canceled', 37, 29, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (33, 607472560, 'Done', 11, 13, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (34, 39181930, 'Done', 68, 37, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (35, 162292743, 'Done', 1, 26, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (36, 1025944151, 'Pending', 51, 36, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (37, 730583373, 'Canceled', 4, 32, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (38, 487354114, 'Done', 56, 40, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (39, 364243302, 'Done', 77, 33, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (40, 607472561, 'Pending', 39, 44, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (41, 886404443, 'Pending', 5, 14, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (42, 1149054961, 'Pending', 22, 27, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (43, 487354115, 'Done', 50, 33, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (44, 763293631, 'Pending', 25, 12, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (45, 39181931, 'Pending', 28, 35, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (46, 162292744, 'Done', 66, 28, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (47, 1025944152, 'Done', 7, 11, 
    'B');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (48, 364243303, 'Done', 75, 10, 
    'E');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (49, 730583374, 'Pending', 42, 16, 
    'F');
Insert into TICKET
   (TICKET_KEY, TICKET_NUMBER, TICKET_STATUS, SEAT_NUMBER, LUGGAGE_SIZE, 
    TICKET_CLASS)
 Values
   (50, 39181932, 'Done', 57, 19, 
    'B');
COMMIT;

SET DEFINE OFF;
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210137, 27, 3011, 282, 636, 
    792, 170, 1239);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210150, 8, 2893, 352, 403, 
    233, 176, 1587);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210117, 50, 3487, 1724, 812, 
    166, 176, 3059);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210105, 3, 3520, 1513, 412, 
    752, 124, 1617);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210145, 12, 2092, 1991, 626, 
    113, 172, 3330);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210148, 40, 4093, 688, 383, 
    154, 144, 2359);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210146, 9, 4599, 427, 327, 
    209, 148, 3522);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210112, 18, 2575, 1390, 653, 
    220, 157, 980);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210111, 13, 2616, 190, 577, 
    662, 111, 3682);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210118, 4, 4230, 201, 708, 
    668, 156, 3006);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210143, 33, 3633, 1463, 746, 
    390, 193, 390);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210138, 10, 2598, 279, 373, 
    353, 137, 2343);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210149, 28, 4320, 1120, 612, 
    281, 155, 180);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210131, 5, 4180, 1761, 926, 
    823, 111, 1305);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210106, 35, 4243, 797, 605, 
    131, 110, 3629);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210101, 19, 4116, 1114, 994, 
    131, 115, 1550);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210126, 14, 2264, 1393, 730, 
    832, 171, 3769);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210144, 47, 4215, 104, 686, 
    666, 193, 3685);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210147, 41, 2638, 1851, 660, 
    991, 112, 910);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210113, 20, 3451, 1098, 519, 
    789, 154, 2849);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210132, 15, 2575, 812, 640, 
    651, 108, 3156);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210119, 36, 3108, 1443, 329, 
    693, 107, 1727);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210107, 23, 4015, 408, 644, 
    110, 127, 3178);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210102, 11, 2716, 1334, 983, 
    744, 138, 961);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210114, 29, 2911, 183, 401, 
    932, 113, 332);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210120, 45, 3457, 863, 895, 
    531, 198, 889);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210127, 6, 3326, 753, 1000, 
    237, 157, 215);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210133, 42, 2967, 1058, 744, 
    290, 108, 2291);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210128, 21, 4829, 637, 918, 
    227, 166, 3089);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210108, 24, 4726, 935, 969, 
    181, 108, 2217);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210123, 48, 2462, 1020, 379, 
    277, 172, 786);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210103, 46, 3242, 272, 751, 
    385, 141, 2766);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210115, 37, 4793, 445, 633, 
    550, 101, 1764);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210129, 1, 2017, 277, 679, 
    253, 142, 892);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210109, 30, 2797, 818, 615, 
    754, 173, 460);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210124, 43, 2463, 584, 607, 
    332, 126, 1416);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210104, 38, 2933, 745, 975, 
    468, 131, 450);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210139, 49, 3854, 574, 686, 
    619, 186, 3640);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210130, 16, 4111, 1191, 670, 
    823, 192, 531);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210125, 22, 4283, 1194, 968, 
    128, 138, 746);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210110, 25, 4455, 1318, 976, 
    416, 108, 2849);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210134, 44, 3822, 902, 828, 
    379, 184, 503);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210121, 31, 3631, 714, 702, 
    226, 133, 486);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210140, 7, 4498, 957, 553, 
    544, 137, 1194);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210135, 26, 4019, 960, 324, 
    821, 199, 2876);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210116, 2, 4788, 1522, 334, 
    161, 127, 2675);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210141, 32, 3070, 1643, 799, 
    194, 185, 3990);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210136, 39, 2092, 1688, 653, 
    924, 124, 1852);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210122, 34, 3404, 652, 476, 
    155, 102, 407);
Insert into TOTAL_FLIGHT_FACT
   (DATE_KEY, FLIGHT_KEY, FLIGHT_REVENUE, FLIGHT_COST, TOTAL_DISCOUNT, 
    TOTAL_FEES, TOTAL_TICKETS, EXTENDED_TOTAL_PROFIT)
 Values
   (20210142, 17, 4383, 1881, 723, 
    175, 184, 1945);
COMMIT;

SET DEFINE OFF;
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (1, 'https://vendhisng.ar/tiobut/hinstand/ted/veonto.html#100', 'Credit Card', 10);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (2, 'http://www.ereth.br/eaher/eameera/hatea.asp', 'Credit Card', 8);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (3, 'http://www.este.nz/ithst/ed/ingal.asp?id=772', 'Bank Transfer', 9);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (4, 'http://hadeveshohin.fi/all/wanehaduld.asp', 'PayPal', 6);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (5, 'https://terseithed.ua/sthenal/analuldse.aspx', 'Direct Debit', 3);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (6, 'http://forwasnged.nz/meennot/neorat/uldstount.asp?id=983', 'WebMoney', 8);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (7, 'https://theat.de/hehin/oulthiing/hatansho/meedrent.asp?id=941', 'Credit Card', 3);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (8, 'http://youhenhinbut.uk/thiinghat/terthinar.php?t=43', 'Bank Transfer', 1);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (9, 'http://area.us/at/atith/ourasal/forithlebut.htm', 'Credit Card', 3);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (10, 'http://ntteentan.cz/had/ouingare/waingnot/hadreatti.htm', 'Check', 1);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (11, 'https://www.teralstent.lu/asntome/wasesuld/onare/erhenhison.php', 'Check', 1);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (12, 'http://ingereareter.ch/es/ourat/ndterthar.php?t=84&p=3011', 'PayPal', 8);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (13, 'http://hatisng.org/all/buttioattio.php', 'Direct Debit', 10);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (14, 'https://withinmeea.at/erhinng/anour.htm', 'Bank Transfer', 5);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (15, 'https://www.reareisse.za/omendher/eswitoute.htm', 'Credit Card', 3);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (16, 'http://ingtithever.at/tient/ingwiton/ere/realoulome.htm', 'PayPal', 2);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (17, 'https://www.entuldwasall.au/ed/itlewa/erere/altoesit.php', 'Bank Transfer', 8);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (18, 'http://www.nothenoring.es/all/had/neshoarent.asp?id=465', 'Credit Card', 2);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (19, 'http://alhi.ar/ntties/haouome/seion/aretededan.htm', 'Check', 5);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (20, 'https://edsendsho.gr/oulallle/omeiones/forhiwit/atoursho.php', 'Direct Debit', 10);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (21, 'https://terterertio.nl/oultedoul/andwahat/fornehis/thistarewa.aspx', 'PayPal', 9);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (22, 'https://www.heoutedan.biz/nteve/butal/youathis/shoyouedme.php', 'Check', 5);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (23, 'https://herve.lv/thewit/ittheed/ithfor/eveevehertio.htm#99035', 'Direct Debit', 3);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (24, 'http://tedsehad.cy/ententhat/tio/eveheng/ithererfor.asp?id=58', 'PayPal', 3);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (25, 'http://www.entonionthe.gr/itar/aredallti.htm', 'Direct Debit', 10);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (26, 'http://ouhinwahis.br/ar/atereha/hiallbut/aresho.asp?id=133', 'Bank Transfer', 8);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (27, 'http://www.hateenten.cn/st/atoroneve.htm#2', 'Direct Debit', 10);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (28, 'http://www.oulenthinand.de/eaallou/leallall/thahaveroul.php?t=36', 'WebMoney', 2);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (29, 'http://haenarera.cn/ouforal/atenterahe.html', 'PayPal', 1);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (30, 'http://oralisng.eg/aremein/shohinand/teoulat/ouat.asp', 'Bank Transfer', 2);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (31, 'https://www.haerandhad.gr/entarewa/eraathat/her/ingor.php?t=70', 'Credit Card', 2);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (32, 'http://www.hihatnotea.hk/heredith/asand/neerated/entmeereve.htm', 'Direct Debit', 10);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (33, 'https://www.entnd.br/re/theaher/foralles/hinhisterer.php', 'Bank Transfer', 4);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (34, 'https://ngwitntith.cn/but/hinoras/youenithbut.php?t=47&p=3338', 'Credit Card', 7);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (35, 'http://esarhadng.cn/thhento/haterterare.php', 'PayPal', 8);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (36, 'http://www.leareand.mx/but/is/er/forhiallhad.asp', 'PayPal', 6);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (37, 'http://www.atallareere.il/haverte/hishiare/tedereen/rele.htm', 'PayPal', 4);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (38, 'https://www.hattoandor.ge/hineaome/teeaatit.htm#6', 'Check', 8);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (39, 'https://ionte.us/is/ha/ion/allwitleto.php', 'Direct Debit', 5);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (40, 'https://www.eveandenthad.kr/witingas/verheour.asp?id=878', 'Credit Card', 4);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (41, 'https://tiome.com/teanhi/tertioeseve.php', 'PayPal', 5);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (42, 'http://www.ngeveeduld.nl/enaral/annt.html#46262', 'WebMoney', 1);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (43, 'http://onforasen.fr/stveand/in/ouhadngare.php?t=71&p=75', 'Check', 3);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (44, 'http://arndalth.at/ithithoul/era/notuld/andannesho.php?t=84', 'Direct Debit', 1);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (45, 'https://youheral.net/andtheve/oulhe.htm#909', 'Check', 9);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (46, 'https://www.orthforit.ch/metheve/entretioal.htm', 'Bank Transfer', 9);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (47, 'https://hervenever.dk/enttheent/tha/ver/hadwasonwa.php?t=55&p=3993', 'PayPal', 2);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (48, 'https://allfortheand.hk/erearear/arenged/hatbutand/ourit.php', 'Check', 4);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (49, 'http://www.araratnt.org/es/nghen/enisere.php', 'WebMoney', 6);
Insert into WEBSITE
   (WEBSITE_KEY, WEBSITE_NAME, PAYMENT_METHOD, FEES_PERCENTAGE)
 Values
   (50, 'http://hisomehint.ge/histior/alentin.asp', 'Check', 6);
COMMIT;
