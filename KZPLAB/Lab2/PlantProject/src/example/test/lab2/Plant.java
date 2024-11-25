import java.io.*;
import java.util.Scanner;

public class Plant {
    private int height;
    private int leafCount;
    private int hydration;
    private PrintWriter fout;
    private static final String FILE_NAME = "PlantState.txt";

    public Plant() throws FileNotFoundException {
        try {
            loadState();
        } catch (FileNotFoundException e) {
            
            height = 10;  
            leafCount = 3; 
            hydration = 50; 
        }
        fout = new PrintWriter(new FileOutputStream(new File("PlantLog.txt"), true));
    }

    public void grow() {
        height += 5;  // Grow by 5 cm
        fout.print("Plant grew by 5 cm. New height: " + height + " cm\n");
        fout.flush();
    }

    public void addLeaf() {
        leafCount++;
        fout.print("New leaf added. Total leaves: " + leafCount + "\n");
        fout.flush();
    }

    public void water() {
        hydration = Math.max(hydration - 10, 0); // Decrease hydration but not below 0
        fout.print("Plant hydration decreased by 10. Current hydration level: " + hydration + "\n");
        fout.flush();
    }

    public void increaseHydration() {
        hydration = 100;
        fout.print("Plant watered. Hydration level: " + hydration + "\n");
        fout.flush();
    }

    public int getHeight() {
        return height;
    }

    public int getLeafCount() {
        return leafCount;
    }

    public int getHydration() {
        return hydration;
    }

    private void saveState() throws FileNotFoundException {
        PrintWriter stateWriter = new PrintWriter(new File(FILE_NAME));
        stateWriter.println(height);
        stateWriter.println(leafCount);
        stateWriter.println(hydration);
        stateWriter.close();
    }

    private void loadState() throws FileNotFoundException {
        Scanner stateScanner = new Scanner(new File(FILE_NAME));
        height = stateScanner.nextInt();
        leafCount = stateScanner.nextInt();
        hydration = stateScanner.nextInt();
        stateScanner.close();
    }

    public void dispose() {
        fout.close();
        try {
            saveState();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}
