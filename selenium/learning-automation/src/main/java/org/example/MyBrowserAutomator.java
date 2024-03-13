package org.example;
import org.openqa.selenium.By;
import  org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.util.*;

public class MyBrowserAutomator {
    // I should be able to launch Chrome Browser
    // I should be ble to navigate to my Petstore
    // I should be able to view all the available pets on Home Page
    // I should be able to make sure all 5 Pet categories are available

    private WebDriver myBrowser;
    private String myPetstoreAddress;
    public MyBrowserAutomator(){
        this.myPetstoreAddress = "https://petstore.octoperf.com/actions/Catalog.action";
        this.myBrowser = new ChromeDriver();
    }

    public void goToPetStore(){
        this.myBrowser.get(this.myPetstoreAddress);

    }

    public List<String> getPetNamesFromLefttMenu(){
        By myref = new By.ByXPath("//*[@id=\"SidebarContent\"]/a");
        List<WebElement> items = this.myBrowser.findElements(myref);
        List<String> names = new ArrayList<String>();
        for (WebElement elem: items) {
            String src = elem.getAttribute("href");
            String petName = src.substring(src.indexOf("Id=")+3, src.length());
            names.add(petName);
        }
        return names;
    }

    public List<String> getPetNamesFromTopMenu(){
        // Implement the missing code to get Items from Top Menu
        return new ArrayList<String>();
    }




    public void Close() {
        this.myBrowser.quit();
    }
}
