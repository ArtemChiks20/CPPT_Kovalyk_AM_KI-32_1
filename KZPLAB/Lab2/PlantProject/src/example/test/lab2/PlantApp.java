/****************************************************************************
* Copyright (c) 2013-2023 Lviv Polytechnic National University. All Rights Reserved.
*
* This program and the accompanying materials are made available under the terms
* of the Academic Free License v. 3.0 which accompanies this distribution, and is
* available at https://opensource.org/license/afl-3-0-php/
*
* SPDX-License-Identifier: AFL-3.0
****************************************************************************/
/**
* lab 2 package
*/
import static java.lang.System.out;
import java.io.*;
import java.util.Scanner;

public class PlantApp 
{
    public static void main(String[] args) throws FileNotFoundException
    {
        Plant plant = new Plant();
        plant.grow();
        out.print("Current height: " + plant.getHeight() + " cm\n");
        plant.addLeaf();
        out.print("Leaves count: " + plant.getLeafCount() + "\n");
        plant.water();
        out.print("Hydration level after watering: " + plant.getHydration() + "\n");

        Scanner scanner = new Scanner(System.in);
        out.print("Press 'h' to increase hydration to 100: ");
        String input = scanner.nextLine();

        if ("h".equals(input)) {
            plant.increaseHydration();
            out.print("Hydration level after input 'h': " + plant.getHydration() + "\n");
        } else {
            out.print("No hydration change.\n");
        }

        plant.dispose();
    }
}
