package petstore.bristlecone.training.tests;
import org.junit.jupiter.api.Test;
import petstore.bristlecone.training.operations.HomePageOperations;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class HomePageTests {
    @Test
    public void checkLogoDetailsforColor(){
        HomePageOperations ops = null;
        // color should be green
        String expected = "Green";
        String actual = ops.getLogoDetails("color");
        assertEquals(expected, actual);
        // color=green; font=28;
    }

    public void checkLogoDetailsFont(){
        HomePageOperations ops = null;
        // color should be green
        String expected = "Font-28";
        String actual = ops.getLogoDetails("font");
        assertEquals(expected, actual);
        // color=green; font=28;
    }

    public void searchWorksonHomePageforFish(){
        HomePageOperations ops = null;
        String expected = "Angelfish";
        String actual = ops.doSearch("fish");
        assertEquals(expected,actual);
    }

    @Test
    public void petsareDisplayedinCorrectOrder(){
        HomePageOperations ops = null;
        String expected = "Fish,Dog,Reptiles,Cats,Birds";
        String actual = ops.getTopMenuDetails();
        assertEquals(expected,actual);


    }
}
