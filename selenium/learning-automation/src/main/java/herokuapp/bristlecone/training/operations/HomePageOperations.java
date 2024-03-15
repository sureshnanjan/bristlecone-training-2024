package herokuapp.bristlecone.training.operations;

public interface HomePageOperations {
    String getHeading();
    String getSubHeading();

    int getAvailableExampleCount();

    /**
     * This method will navigate to the page passed in param exName and return the title
     * if success.
     * @param exName - The Name as displayed in the Home Page
     * @return - The title of the newly navigated page
     */
    String goToExample(String exName);

    String getLinkStatusforExample(String whichExample);

    void Close();
}
