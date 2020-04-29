create database brief_DATABASE;
use brief_DATABASE;



/*==============================================================*/
/* Table : Customer                                             */
/*==============================================================*/
create table Customer (
   idcuctomer           int                  not null,
   id_usre              int                  null,
   customerName         varchar(254)         null,
   customerEmail        varchar(254)         null,
   creditCardinfo       varchar(254)         null,
   shippinginfo         varchar(254)         null,
   accountBalance       float                null,
   PRIMARY KEY (idcuctomer)
)
;


/*affichage table*/
select * from Customer;
/*insert*/
insert into Customer values(1,10,'ABC','USRE@gmail.com','251dh','1ereshipping',15);
insert into Customer values(2,20,'ABN','USFE@gmail.com','351dh','2ereshipping',12);
insert into Customer values(3,30,'AFG','USEE@gmail.com','2521dh','3ereshipping',13);
insert into Customer values(4,40,'ASF','RTGE@gmail.com','2451dh','4ereshipping',14);

/*update*/
update Customer set  customerName   ='othmane'
where id_usre  =20;
update Customer set  customerEmail   ='othmane@gmail.com'
where id_usre  =20;


/*delete*/
delete from Customer 
where  customerName   ='ABC';




/*==============================================================*/
/* Table : Order_Details                                        */
/*==============================================================*/
create table Order_Details (
   ord_id_order         int                  not null,
   id_orderDetails      int                  not null,
   id_order             int                  null,
   id_product           int                  null,
   productName          varchar(254)         null,
   quantity             int                  null,
   unitCost             float                null,
   subtotal             float                null,
   constraint PK_ORDER_DETAILS primary key nonclustered (ord_id_order, id_orderDetails)
)
;

/*affichage table*/
select * from Order_Details;
/*insert*/
insert into Order_Details values(1,12,14,10,'camera',30,24,15);
insert into Order_Details values(2,11,16,40,'tele',56,28,16);
insert into Order_Details values(3,13,12,70,'cable',10,22,14);

/*update*/
update Order_Details set  productName    ='computer'
where id_product   =40;
/*delete*/
delete from Order_Details  
where  id_product    =40;


/*==============================================================*/
/* Table : "User"                                               */
/*==============================================================*/
create table Usere (
   id_usre              int                  not null,
   idcuctomer           int                  null,
   id_admin             int                  null,
   possword             varchar(254)         null,
   loginStatus          varchar(254)         null,
   constraint PK_USER primary key nonclustered (id_usre)
)
;


/*affichage table*/
select * from Usere;
/*insert*/
insert into Usere values(1,12,14,'erdER34123','othmanothman');
insert into Usere values(2,13,15,'erder14523','othmanothman2');
insert into Usere values(3,14,16,'erFd12453','othmanothman3');

/*update*/
update Usere set  possword     ='HGKHGK777'
where id_usre    =3;
/*delete*/
delete from Usere 
where  id_usre   =1;





/*==============================================================*/
/* Table : administrator                                        */
/*==============================================================*/
create table administrator (
   id_admin             int                  not null,
   id_usre              int                  null,
   adminName            varchar(254)         null,
   aminEmail            varchar(254)         null,
   PRIMARY KEY (id_admin)
)
;


/*affichage table*/
select * from administrator;
/*insert*/
insert into administrator values(11,1 ,'othman','othmanothman@gmail.com');
insert into administrator values(12,2 ,'mehdi','mehdi@gmail.com');
insert into administrator values(13,3 ,'ayoub','ayoub@gmail.com');

/*update*/
update administrator set  adminName    ='HGKHGK777'
where id_usre    =3;
/*delete*/
delete from administrator
where  id_usre   =1;

/*==============================================================*/
/* Table : "order"                                              */
/*==============================================================*/
create table ordere (
   id_order             int                  not null,
   idcuctomer           int                  not null,
   ord_id_order         int                  not null,
   id_shipping          int                  not null,
   dateCreated          varchar(254)         null,
   dateShipped          varchar(254)         null,
   id_customer          varchar(254)         null,
   status               varchar(254)         null,
   id_shippining        int                  null,
   PRIMARY KEY (id_order)
)
;


/*affichage table*/
select * from ordere;
/*insert*/
insert into ordere values(1,12,5,10,'2020','2020','24','vente',15);
insert into ordere values(2,13,6,11,'2020','2020','26','achat',16);
insert into ordere values(3,14,7,12,'2020','2020','25','vente',17);

/*update*/
update ordere set  id_shippining     = 18
where id_order    =2;
/*delete*/
delete from ordere 
where  id_shippining    =15;


/*==============================================================*/
/* Table : shipping_info                                        */
/*==============================================================*/
create table shipping_info (
   ord_id_order         int                  not null,
   id_shipping          int                  not null,
   id_order             int                  null,
   shippingType         varchar(254)         null,
   shippingCost         int                  null,
   shippingRegionId     int                  null,
   constraint PK_SHIPPING_INFO primary key(ord_id_order, id_shipping)
);



/*affichage table*/
select * from shipping_info;
/*insert*/
insert into shipping_info values(1,12,14,'achat',144,306);
insert into shipping_info values(2,13,15,'achat',120,356);
insert into shipping_info values(3,14,16,'achat',111,456);

/*update*/
update shipping_info set  shippingType    ='vente'
where ord_id_order   =1;
/*delete*/
delete from shipping_info 
where  ord_id_order    =1;




/*==============================================================*/
/* Login and PassWord                                             */
/*==============================================================*/

/*logim Admin with password*/

/*==============================================================*/
/* Login and PassWord                                             */
/*==============================================================*/

/*logim Admin with password*/
create login othmane
with PassWord='Admin123';
;
/*user*/
create user othmane for login othmane;
;

grant all to othmane;
;

/*logim utilisateur with password*/
create login hannoune
with PassWord='hannoune123';

/*user*/
create user othmaaane for login hannoune;


grant select,insert,delete to hannoune;
