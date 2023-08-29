namespace com.gioser;

entity Student {
    key email        : String(65);
        first_name   : String(20);
        last_name    : String(20);
        date_sign_up : Date;
};

annotate Student with @(
    UI: {
    //SelectionFields : [],     
    
    LineItem: [
        {
           Label:'E-mail',
           Value:email,     
        },
        {
           Label:'Name',
           Value:first_name,
        },
        {
           Label:'Last Name',
           Value:last_name,     
        },
        {
           Label:'Date',
           Value:date_sign_up,     
        }
    ],
   HeaderInfo  : {
       $Type : 'UI.HeaderInfoType',
       TypeName : 'Nada',
       TypeNamePlural : 'Nadas',
       Description:{
        Value:email
       }
   },
    }
);
