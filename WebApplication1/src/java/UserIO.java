/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author poter
 */
package data;
import java.io.*;
import business.User;
public class UserIO {
    public static void add(User user, String filepath) throws IOException
    {
        File file = new File(filepath);
        PrintWriter out = new PrintWriter(new FileWriter(file, true));
        out.println(user.getEmailAddress()+"|"+user.getFirstName()+"|"+user.getLastName());
        out.close();
    }
}
