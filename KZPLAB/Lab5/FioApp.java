/****************************************************************************
* Copyright (c) 2013-2023 Lviv Polytechnic National University. All Rights Reserved.
*
* This program and the accompanying materials are made available under the terms
* of the Academic Free License v. 3.0 which accompanies this distribution, and is
* available at https://opensource.org/license/afl-3-0-php/
*
* SPDX-License-Identifier: AFL-3.0
****************************************************************************/
package example.test.lab5;
import java.io.*;
import java.util.*;
import java.lang.Math;

public class FioApp {
/**
* @param args
*/
public static void main(String[] args) throws FileNotFoundException, IOException
{
CalcWFio obj = new CalcWFio();
Scanner s = new Scanner(System.in);
System.out.print("Enter data: ");
double data = s.nextDouble();
obj.calculate(data);
System.out.println("Result is: " + obj.getResult());
obj.writeResTxt("textRes.txt");
obj.writeResBin("BinRes.bin");
obj.readResBin("BinRes.bin");
System.out.println("Result is: " + obj.getResult());
obj.readResTxt("textRes.txt");
System.out.println("Result is: " + obj.getResult());
}
}

class CalcWFio
{
    public void writeResTxt(String fName) throws FileNotFoundException
    {
        PrintWriter f = new PrintWriter(fName);
        f.printf("%f ", result);
        f.close();
    }

    public void readResTxt(String fName)
    {
        try
        {
            File f = new File(fName);
            if (f.exists())
            {
                Scanner s = new Scanner(f);
                result = s.nextDouble();
                s.close();
            }
            else
                throw new FileNotFoundException("File " + fName + " not found");
        }
        catch (FileNotFoundException ex)
        {
            System.out.print(ex.getMessage());
        }
    }

    public void writeResBin(String fName) throws FileNotFoundException, IOException
    {
        DataOutputStream f = new DataOutputStream(new FileOutputStream(fName));
        f.writeDouble(result);
        f.close();
    }

    public void readResBin(String fName) throws FileNotFoundException, IOException
    {
        DataInputStream f = new DataInputStream(new FileInputStream(fName));
        result = f.readDouble();
        f.close();
    }

    public void calculate(double x)
    {
        result = Math.tan(x) / (3 * x);
    }

    public double getResult()
    {
        return result;
    }

    private double result;
}
