package herokuapp.bristlecone.training.operations;

/**
 * This class is handling the operations on the Context Menu
 */
public interface ContextMenuOperations {
    /**
     *
     * @return
     */
    String getHeading();

    /**
     *
     * @return
     */
    String getContents();

    /**
     *
     */
    void invokeDialog();

    String getDialogTitle();

    String getDialogText();


}
