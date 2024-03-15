package herokuapp.bristlecone.training.tests;

import herokuapp.bristlecone.training.implementation.HerokuHomePage;
import herokuapp.bristlecone.training.operations.HomePageOperations;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

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
        HomePageOperations ops = null;
        String expected = "A/B Test Variation 1";
        String exampleNme = "A/B Testing";
        // Act
        String actual = ops.goToExample(exampleNme);
        // Assert
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


}
