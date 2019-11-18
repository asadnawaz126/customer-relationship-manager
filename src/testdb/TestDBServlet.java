package testdb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

@WebServlet("/TestDBServlet")
public class TestDBServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = "springstudent";
        String password = "springstudent";

        String jdbcURL = "jdbc:mysql://localhost:3306/web_customer_tracker?useSSL=false";
        String driver = "com.mysql.cj.jdbc.Driver";


        try {
            PrintWriter out = response.getWriter();

            out.println("Connecting to database + " + jdbcURL);

            Class.forName(driver);

            Connection connection = DriverManager.getConnection(jdbcURL, user ,password);

            out.println("Connection Successful");

            connection.close();
        }
        catch (Exception e){
            e.printStackTrace();
        }

    }
}
