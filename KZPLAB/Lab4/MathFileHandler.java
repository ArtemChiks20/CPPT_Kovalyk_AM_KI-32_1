import java.io.*;
import java.util.Scanner;

public class MathFileHandler {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter a value for x: ");
        double x = scanner.nextDouble();

        try {
            if (x == 0) {
                throw new IllegalArgumentException("x cannot be zero for the calculation.");
            }

            // Calculate the result
            double result = calculate(x);
            System.out.println("Result: " + result);

            // Write the result to a text file
            writeResTxt("textRes.txt", result);

            // Write the result to a binary file
            writeResBin("binRes.bin", result);

            // Read and display the result from the text file
            System.out.println("Result from text file: " + readResTxt("textRes.txt"));

            // Read and display the result from the binary file
            System.out.println("Result from binary file: " + readResBin("binRes.bin"));
        } catch (IOException e) {
            System.err.println("File error: " + e.getMessage());
        } catch (IllegalArgumentException e) {
            System.err.println("Input error: " + e.getMessage());
        } finally {
            scanner.close();
        }
    }

    public static double calculate(double x) {
        return Math.tan(x) / (3 * x);
    }

    public static void writeResTxt(String fileName, double result) throws IOException {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(fileName))) {
            writer.write(Double.toString(result));
        }
    }

    public static double readResTxt(String fileName) throws IOException {
        try (BufferedReader reader = new BufferedReader(new FileReader(fileName))) {
            return Double.parseDouble(reader.readLine());
        }
    }

    public static void writeResBin(String fileName, double result) throws IOException {
        try (DataOutputStream dos = new DataOutputStream(new FileOutputStream(fileName))) {
            dos.writeDouble(result);
        }
    }

    public static double readResBin(String fileName) throws IOException {
        try (DataInputStream dis = new DataInputStream(new FileInputStream(fileName))) {
            return dis.readDouble();
        }
    }
}
