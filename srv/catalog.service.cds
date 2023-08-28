using {com.sergio as sergio} from '../db/schema';

service CatalogService {

    entity Products as projection on sergio.Products;
    entity Suppliers as projection on sergio.Supplier;
    entity Suppliers_01 as projection on sergio.Supplier_01;
    entity Suppliers_02 as projection on sergio.Supplier_02;
    entity Car as projection on sergio.Car;

};



