public class TestData {
    public static void createData(integer amount){
        List<Account> accts = new List<Account>();
        for (Integer a = 0; a < amount; a++) {
            accts.add(new Account(Name = 'Test ' + a));
        }
        
        insert accts;
        
        List<Contact> conts = new List<Contact>();
        for (Integer a = 0; a< amount; a++) {
            conts.add(new Contact(AccountId = accts[a].id, LastName = 'Test ' + a));
        }
        
        insert conts;
        
        List<Case> cases = new List<Case>();
        for (Integer c = 0; c < amount; c++){
            cases.add(new Case(subject = 'Test ' + c, Description='Test ' + c, accountid = accts[c].id, contactid = conts[c].id));
            
        } 
        insert cases;
    }
}