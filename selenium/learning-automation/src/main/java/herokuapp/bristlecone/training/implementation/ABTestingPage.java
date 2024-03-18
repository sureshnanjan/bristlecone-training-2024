package herokuapp.bristlecone.training.implementation;

import herokuapp.bristlecone.training.operations.ABTestingOperations;
import org.openqa.selenium.*;

import java.io.File;

public class ABTestingPage implements ABTestingOperations {
    WebDriver _browser;
    private By headingLocator;
    private By paragraphLocator;

    public ABTestingPage(WebDriver _browser) {
        this._browser = _browser;
        this.headingLocator = By.tagName("h3");
        this.paragraphLocator = By.tagName("p");
    }

    @Override
    public String getHeading() {
        return _browser.findElement(headingLocator).getText();
    }

    @Override
    public String getParagraph() {
        return _browser.findElement(paragraphLocator).getText();
    }

    @Override
    public void disableABTesting() {
        File screenshotFile1 = ((TakesScreenshot) _browser).getScreenshotAs(OutputType.FILE);
        Cookie disableABTest = new Cookie("optimizelyOptOut","true");
        _browser.manage().addCookie(disableABTest);
        _browser.navigate().refresh();
        File screenshotFile2 = ((TakesScreenshot) _browser).getScreenshotAs(OutputType.FILE);
        System.out.println(screenshotFile2.getAbsoluteFile());
        System.out.println(screenshotFile1.getAbsoluteFile());

    }
}
