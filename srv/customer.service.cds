using {com.sergio as sergio} from '../db/schema';

service CustomerService {

    entity CustomerSRV as projection on sergio.Customer;


}
