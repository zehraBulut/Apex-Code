//Create Multiple Contacts


public class CreateContactList {
    Public static List<Contact> generateContacts (Integer numberofcontacts){
      List<Contact> contacts = new List<contact>();      
        for(Integer i=0; i<numberofcontacts; i++){
            Contact cnt = new Contact(FirstName ='First Name'+i, LastName ='LastName' +i);         
            contacts.add(cnt);
        }              
        insert contacts;
        return contacts;
    }  
}



/* NOT: Create a program which creates a certain number of Contacts according to parameter provided.
Program should return all the contacts.  */