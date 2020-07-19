package AddressBook;

import java.io.*;
import java.util.*;

public class addressBook implements InAddressBook {
    public static List<person> dataBase = new ArrayList<>();

    private static void storingData(person a) {
        dataBase.add(a);
        writingData();
    }
    public static void readingData(){
        String path = "E:\\Bridgelabz\\Assignments\\Day16\\data.csv";
        List<String> arrayList = new ArrayList<>();

        try (BufferedReader reader = new BufferedReader(new FileReader(path))) {
            while (reader.ready()) {
                arrayList.add(reader.readLine());
            }
        }
        catch ( ClassCastException | IOException e) {
            // Handle a potential exception
        }
        System.out.println(arrayList);
//     dataBase.addAll(Collections.singleton((person)arrayList));
/*
        Collections.copy((arrayList) , dataBase);
        Scanner sc = null ;
        List<person> dataBase = new ArrayList<person>();
        try {
           sc = new Scanner(new File("E:\\Bridgelabz\\Assignments\\Day16\\data.csv"));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        sc.useDelimiter(",");   //sets the delimiter pattern
        while (sc.hasNext())  //returns a boolean value
        {
            System.out.print(sc.next());
            person temp = new person();
            dataBase.add(temp);//find and returns the next complete token from this scanner
        }
        sc.close();  //closes the scanner
*/

    }
    public static void writingData() {
//        JSONArray jsonArray1 = new JSONArray(dataBase);
        String path = "E:\\Bridgelabz\\Assignments\\Day16\\data.csv";
//        File AddressBook = new File(path);
//        try {
//            FileWriter outputFile = new FileWriter(AddressBook);
//            CSVWriter writer = new CSVWriter(outputFile, ',',
//                    CSVWriter.NO_QUOTE_CHARACTER,
//                    CSVWriter.DEFAULT_ESCAPE_CHARACTER,
//                    CSVWriter.DEFAULT_LINE_END);
//                    writer.writeNext(dataBase);
//                    writer.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
        File file = null;
        FileOutputStream fileOutStream = null;
        try {
            file = new File(path);
            fileOutStream = new FileOutputStream(file);
            byte[] b;
            b = dataBase.toString().getBytes();
            fileOutStream.write(b);
            fileOutStream.flush();
            fileOutStream.close();
            System.out.println("File writing done.");

        }
        catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (fileOutStream != null) {
                    fileOutStream.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

}

    public void addPerson(person a) {
       storingData(a);
       System.out.println("\nEntry added Successfully...!\n");
        writingData();
    }

    public void editPerson() {

        Scanner sc = new Scanner(System.in);
        System.out.println("Phone Number of the person that you want to edit: ");
        long ph = sc.nextLong();

        //List<person> tempDataBase = List.copyOf(dataBase);
        List<person> tempDataBase = new ArrayList<>();

        person n3 = new person();
        person x = findPerson(ph);
        loop1: while (true) {
            System.out.println("Which field would you like to edit: \n1. First Name\n2. Last Name\n3. City\n4. State\n5. Zip\n6. Phone Number\n7. Exit Edit Mode");
            int opt = sc.nextInt();
            sc.nextLine();
            if (opt == 1) {
                System.out.println("Enter the new First Name: ");
                String newName = sc.nextLine();
                n3.setFirstName(newName);

                loop4 : while (true) {
                    System.out.println("Should \""+n3.getFirstName()+"\" be overwritten with \""+x.getFirstName()+"\" choose options below:");
                    menuSave();
                    System.out.println("Enter Option: ");
                    String ans = sc.nextLine();

                    switch (ans) {
                        case "1":
                            x.setFirstName(n3.getFirstName());
                            System.out.println("Updated Successfully!");
                            break loop4;
                        case "2":
                            System.out.println("Would you like to save this as a new entry?");
                            System.out.println("Please fill all the required details for the new entry: ");
                            main.userInput();
                            break loop4;
                        case "3":
                            System.out.println("Edit Mode Exited");
                            break loop4;
                        default:
                            System.out.println("Error: Invalid Option!\nTry Again!");
                            break;
                    }
                }
            } else if (opt == 2) {
                System.out.println("Enter the new Last Name: ");
                String newLastName = sc.nextLine();
                n3.setLastName(newLastName);
                loop4 : while (true) {
                    System.out.println("Should \""+n3.getLastName()+"\" be overwritten with \""+x.getLastName()+"\" choose options below:");
                    menuSave();
                    System.out.println("Enter Option: ");
                    String ans = sc.nextLine();

                    switch (ans) {
                        case "1":
                            x.setLastName(n3.getLastName());
                            System.out.println("Updated Successfully!");
                            break loop4;
                        case "2":
                            System.out.println("Would you like to save this as a new entry?");
                            System.out.println("Please fill all the required details for the new entry: ");
                            main.userInput();
                            break loop4;
                        case "3":
                            System.out.println("Edit Mode Exited");
                            break loop4;
                        default:
                            System.out.println("Error: Invalid Option!\nTry Again!");
                            break;
                    }
                }
            } else if (opt == 3) {
                System.out.println("Enter the new City Name: ");
                String newCity = sc.nextLine();
                n3.setCity(newCity);
                loop4 : while (true) {
                    System.out.println("Should \""+n3.getCity()+"\" be overwritten with \""+x.getCity()+"\" choose options below:");
                    menuSave();
                    System.out.println("Enter Option: ");
                    String ans = sc.nextLine();

                    switch (ans) {
                        case "1":
                            x.setCity(n3.getCity());
                            System.out.println("Updated Successfully!");
                            break loop4;
                        case "2":
                            System.out.println("Would you like to save this as a new entry?");
                            System.out.println("Please fill all the required details for the new entry: ");
                            main.userInput();
                            break loop4;
                        case "3":
                            System.out.println("Edit Mode Exited");
                            break loop4;
                        default:
                            System.out.println("Error: Invalid Option!\nTry Again!");
                            break;
                    }
                }

            } else if (opt == 4) {
                System.out.println("Enter the new State Name: ");
                String newState = sc.nextLine();
                n3.setState(newState);
                loop4 : while (true) {
                    System.out.println("Should \""+n3.getState()+"\" be overwritten with \""+x.getState()+"\" choose options below:");
                    menuSave();
                    System.out.println("Enter Option: ");
                    String ans = sc.nextLine();

                    switch (ans) {
                        case "1":
                            x.setState(n3.getState());
                            System.out.println("Updated Successfully!");
                            break loop4;
                        case "2":
                            System.out.println("Would you like to save this as a new entry?");
                            System.out.println("Please fill all the required details for the new entry: ");
                            main.userInput();
                            break loop4;
                        case "3":
                            System.out.println("Edit Mode Exited");
                            break loop4;
                        default:
                            System.out.println("Error: Invalid Option!\nTry Again!");
                            break;
                    }
                }
            } else if (opt == 5) {
                System.out.println("Enter the new Zip: ");
                int newZip = sc.nextInt();
                n3.setZip(newZip);
                loop4 : while (true) {
                    System.out.println("Should \""+n3.getZip()+"\" be overwritten with \""+x.getZip()+"\" choose options below:");
                    menuSave();
                    System.out.println("Enter Option: ");
                    String ans = sc.nextLine();

                    switch (ans) {
                        case "1":
                            x.setZip(n3.getZip());
                            System.out.println("Updated Successfully!");
                            break loop4;
                        case "2":
                            System.out.println("Would you like to save this as a new entry?");
                            System.out.println("Please fill all the required details for the new entry: ");
                            main.userInput();
                            break loop4;
                        case "3":
                            System.out.println("Edit Mode Exited");
                            break loop4;
                        default:
                            System.out.println("Error: Invalid Option!\nTry Again!");
                            break;
                    }
                }
            } else if (opt==6) {
                System.out.println("Enter the new Phone Number: ");
                Long newPh = sc.nextLong();
                n3.setPhoneNumber(newPh);
                loop4 : while (true) {
                    System.out.println("Should \""+n3.getPhoneNumber()+"\" be overwritten with \""+x.getPhoneNumber()+"\" choose options below:");
                    menuSave();
                    System.out.println("Enter Option: ");
                    String ans = sc.nextLine();

                    switch (ans) {
                        case "1":
                            x.setPhoneNumber(n3.getPhoneNumber());
                            System.out.println("Updated Successfully!");
                            break loop4;
                        case "2":
                            System.out.println("Would you like to save this as a new entry?");
                            System.out.println("Please fill all the required details for the new entry: ");
                            main.userInput();
                            break loop4;
                        case "3":
                            System.out.println("Edit Mode Exited");
                            break loop4;
                        default:
                            System.out.println("Error: Invalid Option!\nTry Again!");
                            break;
                    }
                }
            } else if (opt==7) {
                System.out.println("Edit Mode Closed");
                break loop1;
            } else {
                System.out.println("Error: Invalid Option\nTry Again!");
            }
        }
        writingData();
    }

    public void deletePerson(long phoneNumber) {
        for(person n2 : dataBase){
            if (n2.getPhoneNumber() == phoneNumber){
                dataBase.remove(n2);
                System.out.print("Person details with phone number \""+ phoneNumber + "\" is deleted");
            }
        }
        writingData();
    }

    public void searchPerson(long phoneNumber) {
        person n1 = new person();
        for(person n2 : dataBase){
            if (n2.getPhoneNumber() == phoneNumber){
                n1 = n2;
            }
        }
        System.out.println(n1);
    }

    public void sortByZip() {
    Comparator<person> personZipComparator = new Comparator<person>() {
        public int compare(person n1, person n2) {
            int zip1 = n1.getZip();
            int zip2 = n2.getZip();
            return zip1-zip2;
        }
    };
        System.out.println("Address Sorted by Zip Code:");
        Collections.sort(dataBase, personZipComparator);
        for(person sortZip: dataBase){
            System.out.println(sortZip);
        }
    }

    public void sortByFirstName() {
        Comparator<person> firstNameComparator = new Comparator<person>() {
            public int compare(person n1, person n2) {
                String firstName1 = n1.getFirstName().toUpperCase();
                String firstName2 = n2.getFirstName().toUpperCase();

                //ascending order
                return firstName1.compareTo(firstName2);

                //descending order
                //return firstName2.compareTo(firstName1);
            }};
        System.out.println("First Name Sorting:");
        Collections.sort(dataBase, firstNameComparator);
        for(person sortFirstName: dataBase){
            System.out.println(sortFirstName);
        }
    }

    public void display() {
    System.out.println(dataBase);
    }
    private person findPerson(long ph) {
        person n4 = new person();
        for (person tempPerson : dataBase) {
            if (tempPerson.getPhoneNumber() == ph) {
                n4 = tempPerson;
            }
        }
        return n4;
    }
    private void menuSave () {
        System.out.println("1. Overwrite the data\n2. Create as new user\n3. Close Edit Menu\n");
    }
}
