package petstore.bristlecone.training.tests;

import org.junit.jupiter.api.Test;
import petstore.bristlecone.training.operations.*;

public class UserRegistrationTests {
    @Test
    public void registerUserTestforDuplicateName(){
        NewUserOperations ops = null;
        ops.createUser(new UserInfo(),
                new AccountInfo(),
                new ProfileInformation()
        );
        ops.getStatus(PetCategory.cat);
    }
}
