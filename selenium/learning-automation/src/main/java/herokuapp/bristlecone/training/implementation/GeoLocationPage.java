package herokuapp.bristlecone.training.implementation;

import herokuapp.bristlecone.training.operations.GeolocationOperations;
import jdk.jfr.Timespan;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


import java.time.Duration;
import java.util.concurrent.TimeUnit;

public class GeoLocationPage implements GeolocationOperations {
    private WebDriver _browser;
    private By askmeLocator;
    private By headingLocator;
    private By latitudeLocator;

    private By longitudeLocator;

    public GeoLocationPage(WebDriver _browser) {
        this._browser = _browser;
        this.headingLocator = By.tagName("h3");
        this.askmeLocator = By.tagName("button");
        this.latitudeLocator = By.id("lat-value-not");
        this.longitudeLocator = By.id("long-value");
    }

    @Override
    public String getHeading() {
        return _browser.findElement(headingLocator).getText();
    }

    @Override
    public String getInfoText() {
        return null;
    }

    @Override
    public void askWhereAmIn() {
        _browser.findElement(askmeLocator).click();
        //_browser.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
        // Explicit wait
        WebDriverWait nywait = new WebDriverWait(_browser, Duration.ofSeconds(2));
        nywait.until(ExpectedConditions.presenceOfElementLocated(latitudeLocator));
        // WebDriverWait wait = new WebDriverWait(driver,30);
        // Implicit Wait
        // Dynamic Wait - WebDriverWait
    }

    @Override
    public String getLatitude() {
       return  _browser.findElement(latitudeLocator).getText();
    }

    @Override
    public String getLongitude() {
        return  _browser.findElement(longitudeLocator).getText();
    }
}
