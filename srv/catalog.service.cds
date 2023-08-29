using {com.sergio as sergio} from '../db/schema';

service CatalogService {

    entity Products as projection on sergio.Products;
    entity Suppliers as projection on sergio.Supplier;
    entity Suppliers_01 as projection on sergio.Supplier_01;
    entity Suppliers_02 as projection on sergio.Supplier_02;
    entity Car as projection on sergio.Car;
    

};


service Z {
    
    entity Books as projection on sergio.Books;
   
    entity Authors as projection on sergio.Authors;

};


//MANY TO MANY TEST

//https://port4004-workspaces-ws-szbjk.us10.trial.applicationstudio.cloud.sap/odata/v4/z/Books?$expand=authors($expand=author)

//https://port4004-workspaces-ws-szbjk.us10.trial.applicationstudio.cloud.sap/odata/v4/z/Authors?$expand=books($expand=book)