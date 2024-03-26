package NguyenThanhTung_Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import NguyenThanhTung_Beans.DienVienFlim;
import NguyenThanhTung_Beans.Flim;
import NguyenThanhTung_Conn.NguyenThanhTungConnection;
import NguyenThanhTung_Utils.DienVienFlimUtils;
import NguyenThanhTung_Utils.FlimUtils;

/**
 * Servlet implementation class NTT_HomeServlet
 */
@WebServlet("/home")
public class NTT_HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NTT_HomeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
		String errorString = null;
		String successString = "Ok roi";
		List<Flim> list = null;
		List<DienVienFlim> listdienvienflim = null;
		try {
			conn = NguyenThanhTungConnection.getMSSQLConnection();
			try {
				list = FlimUtils.getListFlim(conn);
				listdienvienflim = DienVienFlimUtils.getListDienVienFlim(conn);
			} catch (Exception e) {
				e.printStackTrace();
				errorString = e.getMessage();
			}
			
			request.setAttribute("errorString", errorString);
			for (Flim flim : list) {
				successString = flim.getNameFlim();
			}
			request.setAttribute("successString", successString);
			request.setAttribute("flimList", list);
			request.setAttribute("listdienvienflim", listdienvienflim);
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/guest/home.jsp");
			dispatcher.forward(request, response);
		} catch (ClassNotFoundException| SQLException e1) {
			e1.printStackTrace();
			errorString = e1.getMessage();
			
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/guest/home.jsp");
			request.setAttribute("errorString", errorString);
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
