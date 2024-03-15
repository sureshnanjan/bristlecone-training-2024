package petstore.bristlecone.training.operations;

public interface NewUserOperations {
    /*
User ID:
New password:
Repeat password:
First name:
Last name:
Email:
Phone:
Address 1:
Address 2:
City:
State:
Zip:
Country:
Language Preference:
english
Favourite Category:
FISH
Enable MyList
Enable MyBanner
     */
    void createUser(UserInfo userInfo, AccountInfo accInfo,ProfileInformation profileInfo);
    String getStatus(PetCategory cat);
}

