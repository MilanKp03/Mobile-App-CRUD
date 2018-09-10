/* Created on:     9/1/2018 2:34:07 PM                          */
/*==============================================================*/


/*-----------------------------------*/

create DATABASE mobile_info;


drop table if exists MOBILE;

drop table if exists USER;

/*==============================================================*/
/* Table: MOBILE                                                */
/*==============================================================*/
create table MOBILE
(
   MOBILE_ID            int AUTO_INCREMENT not null,
   MOBILE_MODEL         varchar(20),
   MOBILE_PRODUCER      varchar(20),
   MOBILE_PROCESSOR     varchar(20),
   MOBILE_SCREEN        varchar(20),
   MOBILE_CAMERA        varchar(20),
   MOBILE_SOUND         varchar(20),
   MOBILE_MEMORY        varchar(20),
   MOBILE_OS            varchar(20),
   MOBILE_PHOTO         longblob,
   MOBILE_DESCRIPTION   varchar(256),
   primary key (MOBILE_ID)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   USER_ID              int AUTO_INCREMENT not null,
   EMAIL                varchar(20) not null,
   USERNAME             varchar(20) not null,
   PASSWORD             varchar(20) not null,
   primary key (USER_ID)
);
