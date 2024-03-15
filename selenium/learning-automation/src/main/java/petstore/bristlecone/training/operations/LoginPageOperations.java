package petstore.bristlecone.training.operations;

public interface LoginPageOperations {
    void doLogin(String uname, String password);
    void registerNow();

    String getStatusStringTop();

    String getStatusStringBottom();

}
