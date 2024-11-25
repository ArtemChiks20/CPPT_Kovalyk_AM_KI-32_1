package example.test.lab6;
import java.util.*;
import java.io.*;

public class BuildingDriver {
    public static void main(String[] args) {
        HDD<Building> hdd = new HDD<>();

        hdd.AddData(new House("Сімейний будинок", 200, 2));
        hdd.AddData(new Skyscraper("Sky Tower", 50000, 100));
        hdd.AddData(new House("Котедж", 150, 1));
        hdd.AddData(new Skyscraper("Empire State Building", 40000, 102));
        hdd.AddData(new Skyscraper("Empire State Building", 40000, 102));
        main1(hdd);

        Building res = hdd.findMax();
        System.out.print("Найбільша споруда на HDD: \n");
        res.print();
    }

    public static void main1(HDD<Building> hdd) {
        int houseCount = 0;
        int skyscraperCount = 0;

        for (Building building : hdd.getBuildings()) {
            if (building instanceof House) {
                houseCount++;
            } else if (building instanceof Skyscraper) {
                skyscraperCount++;
            }
        }

        System.out.println("Кількість будинків: " + houseCount);
        System.out.println("Кількість хмарочосів: " + skyscraperCount);
    }
}

class HDD<T extends Building> {
    private ArrayList<T> arr;

    public HDD() {
        arr = new ArrayList<>();
    }

    public T findMax() {
        if (!arr.isEmpty()) {
            T max = arr.get(0);
            for (int i = 1; i < arr.size(); i++) {
                if (arr.get(i).compareTo(max) > 0)
                    max = arr.get(i);
            }
            return max;
        }
        return null;
    }

    public void AddData(T data) {
        arr.add(data);
        System.out.print("Споруда додана: ");
        data.print();
    }

    public void DeleteData(int i) {
        arr.remove(i);
    }

    public ArrayList<T> getBuildings() {
        return arr;
    }
}

interface Building extends Comparable<Building> {
    int getSize();
    void print();
}

class House implements Building {
    private String houseName;
    private int area;
    private int floors;

    public House(String name, int area, int floors) {
        this.houseName = name;
        this.area = area;
        this.floors = floors;
    }

    public String getHouseName() {
        return houseName;
    }

    public void setHouseName(String name) {
        houseName = name;
    }

    public int getSize() {
        return area;
    }

    public int getFloors() {
        return floors;
    }

    public int compareTo(Building b) {
        return Integer.compare(this.area, b.getSize());
    }

    public void print() {
        System.out.print("Будинок: " + houseName + ", Площа: " + area + " кв.м, Поверхів: " + floors + ";\n");
    }
}

class Skyscraper implements Building {
    private String skyscraperName;
    private int area;
    private int height;

    public Skyscraper(String name, int area, int height) {
        this.skyscraperName = name;
        this.area = area;
        this.height = height;
    }

    public String getSkyscraperName() {
        return skyscraperName;
    }

    public void setSkyscraperName(String name) {
        skyscraperName = name;
    }

    public int getSize() {
        return area;
    }

    public int getHeight() {
        return height;
    }

    public int compareTo(Building b) {
        return Integer.compare(this.area, b.getSize());
    }

    public void print() {
        System.out.print("Хмарочос: " + skyscraperName + ", Площа: " + area + " кв.м, Висота: " + height + " поверхів;\n");
    }
}
