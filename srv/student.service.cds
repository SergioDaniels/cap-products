using {com.gioser as gioser} from '../db/student';


service mysrdemo{

function myfoobar(msg:String) returns String;
//How to call the function from URL
//https://port4004-workspaces-ws-szbjk.us10.trial.applicationstudio.cloud.sap/odata/v4/mysrdemo/myfoobar(msg='%20Here%20we%20are')

@readonly entity StudentSRV as projection on gioser.Student;

};