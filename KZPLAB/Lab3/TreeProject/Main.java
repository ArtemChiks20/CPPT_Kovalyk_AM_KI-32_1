public class Main {
    public static void main(String[] args) {
        Tree oakTree = new Tree(5.0, 50.0, 100.0); 

        oakTree.grow(1.0); 
        double newFruitYield = oakTree.getFruitYield() + 5.0; 
        System.out.println("Height after growing: " + oakTree.getHeight() + " meters");
        System.out.println("New fruit yield: " + newFruitYield + " fruits");

        oakTree.waterTree(); 
        System.out.println("Watering level after watering: " + oakTree.getWateringLevel());
    }
}
