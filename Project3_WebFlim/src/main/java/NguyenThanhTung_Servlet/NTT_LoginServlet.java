package NguyenThanhTung_Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.json.JSONObject;

import NguyenThanhTung_Conn.NguyenThanhTungConnection;

/**
 * Servlet implementation class NTT_LoginServlet
 */
@WebServlet("/login")
public class NTT_LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NTT_LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
		Connection conn = null;
        try {
			conn = NguyenThanhTungConnection.getMSSQLConnection();
            bufferedReader =  new BufferedReader(new InputStreamReader(request.getInputStream()));
            String line;
            while ((line = bufferedReader.readLine()) != null) {
                sb.append(line);
            }
            JSONObject jsonObject = new JSONObject(sb.toString());

            String username = jsonObject.getString("username");
            String password = jsonObject.getString("password");

            String sql = "SELECT userName, userPassword, email, fistName, lastName, idCountry, idState, isDelete, isBan, priceAccount, timeCreate FROM Account WHERE userName=? AND userPassword=?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet result = statement.executeQuery();

            if (result.next()) {
                float priceAccount = result.getFloat("priceAccount");
                String price = Float.toString(priceAccount);
                // Username and password are correct
                Cookie cookie = new Cookie("username", username);
                Cookie cookiepriceAccount = new Cookie("priceAccount", price);
                cookie.setMaxAge(60 * 60 * 24); // Cookie lives for 24 hours
                response.addCookie(cookie);
                response.addCookie(cookiepriceAccount);
                response.setStatus(HttpServletResponse.SC_OK); // Set status code to 200
            } else {
                // Username or password is incorrect
                response.setStatus(HttpServletResponse.SC_BAD_REQUEST); // Set status code to 400
            }
            
            statement.close();
            conn.close();
        } catch (Exception ex) {
            ex.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        } finally {
            if (bufferedReader != null) {
                bufferedReader.close();
            }
        }
    }

}
