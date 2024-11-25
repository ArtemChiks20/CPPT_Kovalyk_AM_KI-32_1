abstract interface Growable {
    void grow(double heightIncrease);
}

interface FruitBearing extends Growable {
    double getFruitYield(); 
    int MAX_FRUITS = 100; 
}

public class Tree implements FruitBearing {
    private double height; 
    private double fruitYield;
    private double wateringLevel; 

    public Tree(double initialHeight, double initialFruitYield, double initialWateringLevel) {
        height = initialHeight;
        fruitYield = initialFruitYield;
        wateringLevel = initialWateringLevel;
    }

    public void grow(double heightIncrease) {
        height += heightIncrease;
    }

    public double getFruitYield() {
        return fruitYield; 
    }

    public double getHeight() {
        return height; 
    }
    public void waterTree() {
        if (wateringLevel > 0) {
            wateringLevel -= 10; 
            if (wateringLevel < 0) {
                wateringLevel = 0; 
            }
        }
    }

    public double getWateringLevel() {
        return wateringLevel; 
    }
}
