package org.example;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import java.util.*;
public class MyPetStoreTester {
    @Test
    public void homePageShouldHave5Pets(){
        MyBrowserAutomator aut = null;
        try {
            aut = new MyBrowserAutomator();
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        aut.goToPetStore();
        int expected = 5;
        List<String> actual = aut.getPetNamesFromLefttMenu();
        assertEquals(actual.size(), 5);


    }

    @Test
    public void homePageShouldHaveSearchFeature(){}

    @Test
    public void homePageLogoShouldbeOnRight(){
        assertEquals(1,0);
    }
    @Test
    public void HomePageItemsareALLWorkingOK(){
        // Test for Logo
          // - placemen
        // font
        // QR Code
        // Test for Search
        // Test for Left Menu
        // Test for Top Menu
        // Shoppping Cart


    }

    public void TestKoiFish(){
        //*[@id="Catalog"]/table/tbody/tr[3]/td
        getIdofrPet("Koi");
    }

    public void TestAngelFish(){
        //
        getIdofrPet("angel");
    }

    private String getIdofrPet(String name){
        switch (name){
            case "Koi":
                return "//*[@id=\"Catalog\"]/table/tbody/tr[3]/td[2]";
                case "Angel":
                return "//*[@id=\"Catalog\"]/table/tbody/tr[3]/td[2]";
                default:
                return  "";
        }
    }
}
