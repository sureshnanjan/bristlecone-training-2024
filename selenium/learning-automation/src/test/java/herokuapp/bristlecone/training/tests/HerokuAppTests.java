package herokuapp.bristlecone.training.tests;

import herokuapp.bristlecone.training.implementation.HerokuHomePage;
import herokuapp.bristlecone.training.operations.ABTestingOperations;
import herokuapp.bristlecone.training.operations.ContextMenuOperations;
import herokuapp.bristlecone.training.operations.HomePageOperations;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class HerokuAppTests {
    HomePageOperations ops = null;


    @BeforeEach
    public void initilaizeHerokuTests(){
        this.ops = new HerokuHomePage();
    }

    @AfterEach
    public void cleanupHerokuTests(){
        this.ops.Close();
    }
    @Test
    public void homePageHasCorrectHeading(){
        // Arrange
        //HomePageOperations ops = new HerokuHomePage();
        String expected = "Welcome to the-internet1";
        // Act
        String actual = this.ops.getHeading();
        // Assert
        assertEquals(actual,expected);
        /*
        BDD
        Given The Herokuapp is accessed
        When the heading is read
        Then it should match "Welcome to the-internet"
         */

    }

    @Test
    public void homePageHasCorrectSubHeading(){
        String expected = "Available Examples";
        String actual = this.ops.getSubHeading();
        assertEquals(expected,actual);

    }

    @Test
    public void accessingExampleWorks(){
        // Arrange
        String expected = "A/B Test Variation 1";
        String exampleNme = "A/B Testing";
        // Act
        ABTestingOperations page = (ABTestingOperations)ops.goToExample(exampleNme);
        // Assert
        String actual = page.getHeading();
        assertEquals(expected,actual);

    }

    @Test
    public void linksareActiveinHomePage(){
        // Arrange
        String expectedstatus = "active";
        String whichExample = "A/B Testing";
        String actualstatus = ops.getLinkStatusforExample(whichExample);

    }



    @Test
    public void homePageHas44Example(){
        /// AAA
        int expected = 45;
        int actual = this.ops.getAvailableExampleCount();
        assertEquals(expected,actual);
    }

    @Test
    public void disablingABTestworks(){
        // Disable ABTesting
        // Access ABTestingPage
        // I should see No A/B Test in title
        ABTestingOperations abtestOps = (ABTestingOperations) ops.goToExample("A/B Testing");;
        abtestOps.disableABTesting();
        String expected = "No A/B Test";
        String actual = abtestOps.getHeading();
        assertEquals(expected,actual);

    }

    @Test
    public void withoutdisablingABTestDoesNotwork(){
        // Access ABTestingPage
        // I should see other than No A/B Test in title
        ABTestingOperations abtestOps = null;
        ops.goToExample("A/B Testing");
        String expected = "No A/B Test";
        String actual = abtestOps.getHeading();
        //assertEquals(actual,expected);
        assertNotEquals(actual,expected);

    }

    @Test
    public void contextMenuOpertaionHascorrectTitle(){}

    @Test
    public void contextMenuOperationGivesTheCorrectStatusMessage(){
        /// AAA
        String expected = "You selected a context menu";
        ContextMenuOperations cops = (ContextMenuOperations)ops.goToExample("Context Menu");
        // Action
        cops.invokeDialog();
        String actual = cops.getDialogText();
        assertEquals(expected,actual);


    }

    @Test
    public void contextMenuOperationGivesTheCorrectStatusTitle(){
        /// AAA
        String expected = "the-internet.herokuapp.com says";
        ContextMenuOperations cops = (ContextMenuOperations)ops.goToExample("Context Menu");
        // Action
        cops.invokeDialog();
        String actual = cops.getDialogTitle();
        assertEquals(expected,actual);


    }


}
