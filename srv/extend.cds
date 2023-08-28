using {com.sergio as sergio} from '../db/schema';


 extend sergio.Books with{
        author: Association to  sergio.Authors
    };