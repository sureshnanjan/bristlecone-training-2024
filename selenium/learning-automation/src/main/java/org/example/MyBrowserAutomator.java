package org.example;
import org.openqa.selenium.By;
import  org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.remote.RemoteWebDriver;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.*;

public class MyBrowserAutomator {
    // I should be able to launch Chrome Browser
    // I should be ble to navigate to my Petstore
    // I should be able to view all the available pets on Home Page
    // I should be able to make sure all 5 Pet categories are available

    private WebDriver myBrowser;
    private String myPetstoreAddress;
    public MyBrowserAutomator() throws MalformedURLException {
        this.myPetstoreAddress = "https://petstore.octoperf.com/actions/Catalog.action";
        this.myBrowser = new RemoteWebDriver(new URL("http://localhost:8080"), new ChromeOptions());
        //this.myBrowser = new ChromeDriver();
    }

    public void goToPetStore(){
        this.myBrowser.get(this.myPetstoreAddress);

    }

    public List<String> getPetNamesFromLefttMenu(){
        By myref = new By.ByXPath("//*[@id=\"SidebarContent\"]/a/img");
        List<WebElement> items = this.myBrowser.findElements(myref);
        List<String> names = new ArrayList<String>();
        for (WebElement elem: items) {
            names.add(elem.getAttribute("src"));
            //String src = items.getAttribute("src");
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
