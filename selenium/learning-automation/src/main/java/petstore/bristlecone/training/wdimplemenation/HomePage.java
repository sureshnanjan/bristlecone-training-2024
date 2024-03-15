package petstore.bristlecone.training.wdimplemenation;

import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeDriver;
import petstore.bristlecone.training.operations.HomePageOperations;
import org.openqa.selenium.WebDriver;
public class HomePage implements HomePageOperations {
    WebDriver _driver;
    private By topmenuLocator;
    private By leftMenuLocator;

    public HomePage() {
        this._driver = new ChromeDriver();
        this.topmenuLocator = By.xpath("");
    }



    @Override
    public String getLogoDetails(String param) {
        return null;
    }

    /**
     * The results of all available pets will be returned in csv format
     */
    @Override
    public String getTopMenuDetails() {
        return null;
    }

    @Override
    public String getLeftMenuDetails() {
        return null;
    }

    /**
     * Search for a particlary pet category
     *
     * @param serachstring
     */
    @Override
    public String doSearch(String serachstring) {
        return null;
    }

    @Override
    public String getCenterImageDetails() {
        return null;
    }
}
