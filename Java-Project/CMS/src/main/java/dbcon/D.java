package dbcon;

import java.sql.Connection;
import java.sql.DriverManager;

public class D {
	
		static Connection cn;
		public static Connection getcon() {
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/crime_meng","root","password");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return cn;
		}

	}

