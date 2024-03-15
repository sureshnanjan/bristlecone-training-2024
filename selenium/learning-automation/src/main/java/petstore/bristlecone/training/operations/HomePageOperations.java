package petstore.bristlecone.training.operations;
/**
 *  This interface provides all method on PetStore Home Page
 * @see "https://petstore.octoperf.com/actions/Catalog.action;jsessionid=52D709D3E0CFF3EA14806853A2332DD8?viewCategory=&categoryId=FISH"
 * */
public interface HomePageOperations {

    /**
     *  Test-Case Name: LogoDetails
     *  Description: retrieves information regarding LOGO color.
     *  Request: getLogoDetails(String param)
     *          Parameters type:String
     *          Parameters: color
     *  Response: Retrieves the colour of the logo
     *          Successful response:Green
     *          Unsuccessful response: Error not found
     * */

    /**
     *  Test-Case Name: LogoDetails
     *  Description: retrieves information regarding LOGO font.
     *  Request: getLogoDetails(String param)
     *          Parameters type:String
     *          Parameters: font
     *  Response: Retrieves the font of the logo
     *          Successful response:Font-28
     *          Unsuccessful response: Error not found
     * */
    String getLogoDetails(String param);
    /**
     *  Test-Case Name: TopMenuDetails
     *  Description: retrieves information top menu of homepage.
     *  Request: getTopMenuDetails(String param)
     *          Parameters type:String
     *          Parameters: category name(Required)
     *  Response: Retrieves the information regarding the particular category
     *          Successful response:<category> name exists
     *          Unsuccessful response: Error not found
     * */
    String getTopMenuDetails();

    /**
     *  Test-Case Name: LeftMenuDetails
     *  Description: retrieves information regarding LOGO.
     *  Request: getLeftMenuDetails(String param)
     *          Parameters type:String
     *          Parameters: category name(Required)
     *  Response: Retrieves the information regarding the particular category
     *            Successful response:<category> name exists
     *            Unsuccessful response: Error not found
     * */
    String getLeftMenuDetails();
    /**
     *  Test-Case Name: DoSearch
     *  Description: retrieves information of the search menu results
     *  Request: doSearch(String searchstring)
     *          Parameters type:String
     *          Parameters:pet names(required)-fish,cat,dogs,reptiles,birds.
     *  Response: Retrieves information showed after search operation for a particular category
     *          Successful response: Names of the pets in the category
     *          Unsuccessful response: Error not found
     * */
    String doSearch(String serachstring);
    String getCenterImageDetails();
}
