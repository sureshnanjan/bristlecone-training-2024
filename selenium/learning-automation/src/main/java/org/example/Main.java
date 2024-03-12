package org.example;

import java.util.Arrays;
import java.util.List;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class Main {
    public static void main(String[] args) {
        //TIP Press <shortcut actionId="ShowIntentionActions"/> with your caret at the highlighted text
        // to see how IntelliJ IDEA suggests fixing it.
       // Oldcode();

        MyBrowserAutomator tool = new MyBrowserAutomator();
        tool.goToPetStore();
        List<String> nameOfPets = tool.getPetNamesFromLefttMenu();
        for(String array: nameOfPets){
            System.out.println(array);
        }
        System.out.println("Launched Browser");
        // Make the call and print the items similar as above
        // List<String> nameOfPetsTop =


        tool.Close();

    }

    private static void Oldcode() {
        //System.out.printf("Hello and welcome!");

        for (int i = 1; i <= 5; i++) {
            //TIP Press <shortcut actionId="Debug"/> to start debugging your code. We have set one <icon src="AllIcons.Debugger.Db_set_breakpoint"/> breakpoint
            // for you, but you can always add more by pressing <shortcut actionId="ToggleLineBreakpoint"/>.
            System.out.println("i = " + i);
        }

        BinarySearcher[] listofItems = new BinarySearcher[]{
                new BinarySearcher(),
                new BinarySearcher(),
                new BinarySearcher()
        };
        Arrays.sort(listofItems);
    }
}