//Logali cap training playlist till class 20 it is free then the rest of the videos are only about 2 min and incomplete, you have to pay, I do not have the money, then completing this project from another sources
//Contuned with this tutorial from UDEMY: **Learn SAP® CAPM (Cloud Application Programming Model)**, very good too.

namespace com.sergio;


define type Address {

    Street     : String;
    City       : String;
    State      : String(2);
    PostalCode : String(5);
    Country    : String(3);

};

/*
type EmailAddresses_01 : many {
    kind  : String;
    email : String;
};

type EmailAddresses_02 : {
    kind  : String;
    email : String;
};

entity Emails {
    email_01 :      EmailAddresses_01;
    email_02 : many EmailAddresses_02;
    email_03 : many {
        kind  : String;
        email : String;
    }
}
*/

type Gender : String enum {
    male;
    female;
    nonbinary;
};

entity Order {
    clientGender : Gender;
    status       : Integer enum {
        submitted = 1;
        fulfilled = 2;
        shipped   = 3;
        cancel    = -1;
    };
    priority     : String @assert.range enum {
        high;
        medium;
        low;
    };
};


type Dec    : Decimal(16, 2);

entity Products {
    key ID               : UUID;
        Name             : String default 'NoName';
        Description      : String not null;
        ImageUrl         : String;
        ReleaseDate      : DateTime default $now;
        DiscontinuedDate : DateTime;
        Price            : Dec;
        Height           : type of Price;
        Width            : type of Price;
        Quantity         : type of Price;        
        Supplier: Association to one Supplier;
        UnitOfMeassure: Association to UnitOfMeasures;
        

};

entity Supplier {
    key ID      : UUID;
        Name    : Products:Name;
        Address : Address;
        Email   : String;
        Phone   : String;
        Fax     : String;
};

entity Categories {
    key ID   : String(1);
        Name : String;
};

entity StockAvailability {
    key ID          : Integer;
        Description : String;
};

entity Currencies {
    key ID          : String(3);
        Description : String;
};

entity UnitOfMeasures {
    key ID          : String(2);
        Description : String;
}

entity DimensionUnits {
    key ID          : String(2);
        Description : String;
};

entity Months {
    key ID               : String(2);
        Description      : String;
        ShortDescription : String(3);
};

entity ProductReview {
    key Name    : String;
        Rating  : Integer;
        Comment : String;
};

entity SalesData {
    key ID           : UUID;
        DeliveryDate : DateTime;
        Revenue      : Decimal(16, 2);

};

entity Supplier_01 {
    key ID      : UUID;
        Name    : String;
        Address : Address;
        Email   : String;
        Phone   : String;
        Fax     : String;
};

entity Supplier_02 {
    key ID      : UUID;
        Name    : String;
        Address : {
            Street     : String;
            City       : String;
            State      : String(2);
            PostalCode : String(5);
            Country    : String(3);
        };
        Email   : String;
        Phone   : String;
        Fax     : String;
};


entity Car {
    key ID                 : UUID;
        name               : String;
        virtual discount_1 : Decimal;

        @Core.Computed: false
        virtual discount_2 : Decimal;
};


entity SelProducts                   as
    select from Products;

/*
entity ParamProducts(pname : String) as
    select from Products {
        Name,
        Price,
        Quantity
    }

    where
        Name = :pname; //VISTA CON PARAMETROS
*/

        extend Products with {
            PriceCondition: String(2);
            PriceDetermination: String(3);
        };


entity Books {
  key ID : Integer;
  title  : String;
  //author : Association to Authors;
};
entity Authors {
  key ID : Integer;
  name   : String;
};

