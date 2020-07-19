package AddressBook;

public class addressBookManager implements InAddressBookManager {

    public void createAddressBook() {
        main.userInput();
    }

    public void openAddressBook() {
        main.openUserIn();
    }

    public void deleteAllAddress() {
        addressBook.dataBase.clear();
    System.out.println("Address book data cleared...!");
    }

    public void quitAddressBook() {
        System.out.println("Quitting address book...!");
    }
}
