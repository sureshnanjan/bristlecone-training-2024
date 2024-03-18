package herokuapp.bristlecone.training.implementation;

import herokuapp.bristlecone.training.operations.ContextMenuOperations;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.interactions.Actions;

public class ContextMenuPage implements ContextMenuOperations {
    private WebDriver _browser;
    private By headingLocator;
    private By textLocator;
    private By boxLocator;

    public ContextMenuPage(WebDriver _browser) {
        this._browser = _browser;
        this.headingLocator = By.tagName("h3");
        this.textLocator = By.tagName("p");
        this.boxLocator = By.id("hot-spot");
    }

    /**
     * @return
     */
    @Override
    public String getHeading() {
        return this._browser.findElement(headingLocator).getText();
    }

    /**
     * @return
     */
    @Override
    public String getContents() {
        return null;
    }

    /**
     *
     */
    @Override
    public void invokeDialog() {
        Actions myaction = new Actions(_browser);
        myaction.contextClick(_browser.findElement(boxLocator));
    }

    @Override
    public String getDialogTitle() {
        Alert status = _browser.switchTo().alert();
        String statusText = status.getText();
        status.accept();
        return statusText;
    }

    @Override
    public String getDialogText() {
        Alert status = _browser.switchTo().alert();
        String statusText = status.getText();
        status.accept();
        return statusText;
    }
}
