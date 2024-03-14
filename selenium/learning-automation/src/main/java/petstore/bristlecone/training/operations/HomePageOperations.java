package petstore.bristlecone.training.operations;
/**
 *  This interface provides all method on PetStore Home Page
 * @see "https://petstor"
 * */
public interface HomePageOperations {

    // sinle line commen
    /* Block Comment
    thiojdsfkld'

            skdlkflsfj
    kfdsa;lkf;laskf;long

    sdfklas;k;lfksf;lk


    commets'
    */
    String getLogoDetails(String param);
    /**
     *  The results of all available pets will be returned in csv format
     * */
    String getTopMenuDetails();
    String getLeftMenuDetails();
    /**
     * Search for a particlary pet category
     * */
    String doSearch(String serachstring);
    String getCenterImageDetails();
}
