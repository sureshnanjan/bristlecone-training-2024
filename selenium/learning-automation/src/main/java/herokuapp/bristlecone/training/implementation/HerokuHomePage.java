package herokuapp.bristlecone.training.implementation;

import herokuapp.bristlecone.training.operations.HomePageOperations;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class HerokuHomePage implements HomePageOperations {
    private final WebDriver _browser;
    private final By headingLocator;
    private final By subheadingLocator;
    //int myage = "suresh";
    private final By exampleLocator;
    private final String url = "https://the-internet.herokuapp.com/";
    public HerokuHomePage() {
        this._browser = new ChromeDriver();
        this.headingLocator = By.tagName("h1");
        this.subheadingLocator = By.tagName("h2");
        this.exampleLocator = By.tagName("li");
        this._browser.get(url);
    }

    @Override
    public String getHeading() {
        return _browser.findElement(headingLocator).getText();
    }

    @Override
    public String getSubHeading() {
        return _browser.findElement(subheadingLocator).getText();
    }

    @Override
    public int getAvailableExampleCount() {
        return this._browser.findElements(exampleLocator).size();
        //return 0;
    }

    /**
     * This method will navigate to the page passed in param exName and return the title
     * if success.
     *
     * @param exName - The Name as displayed in the Home Page
     * @return - The title of the newly navigated page
     */
    @Override
    public Object goToExample(String exName) {
        this._browser.findElement(By.linkText(exName)).click();
        switch (exName){
            case "A/B Testing":
                return new ABTestingPage(this._browser);
            case "Add/Remove":
                //return new ADDRemovePage();
            case "Context Menu":
                return new ContextMenuPage(this._browser);
            default:
                return  null;
        }
    }

    @Override
    public String getLinkStatusforExample(String whichExample) {
        return null;
    }

    @Override
    public void Close() {
        this._browser.quit();
    }
}
