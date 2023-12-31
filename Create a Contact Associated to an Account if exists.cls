/*Create a Contact Associated to an Account if exists
Create a new Contact with the following details
First Name: Thomas
Last Name: Miller
Email: thomas56@gmail.com
Associate this contact to an Account with the name Tom Wood Toyota if there is such Account.
If Tom Wood Toyota Account does not exist, then create one and associate it to to contact you created above
And then insert your contact   */


Contact con = new Contact();
con.FirstName='Thomas';
con.LastName='Miller';
con.email='thomas56@gmail.com';

List<Account> acList =[SELECT Id, Name 
                      FROM Account 
                      WHERE Name='Tom Wood Toyota' 
                      LIMIT 1];

if(acList.isEmpty()){
    Account ac = new Account(Name='Tom Wood Toyota');
    insert ac;
    con.AccountId=ac.Id;
}
else{
    con.AccountId=acList[0].Id;
}
insert con;
