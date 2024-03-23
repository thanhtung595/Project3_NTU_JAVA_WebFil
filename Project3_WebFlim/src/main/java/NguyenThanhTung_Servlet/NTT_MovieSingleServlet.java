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

import NguyenThanhTung_Utils.*;
import NguyenThanhTung_Beans.Flim;
import NguyenThanhTung_Beans.TheLoai;
import NguyenThanhTung_Conn.NguyenThanhTungConnection;

/**
 * Servlet implementation class NTT_MovieSingleServlet
 */
@WebServlet("/moviesingle")
public class NTT_MovieSingleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NTT_MovieSingleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Lay du lieu tren from
		String nameFlim = (String) request.getParameter("nameFlim");
		Connection conn = null;
		String errorString = null;
		Flim flim = null;
		List<TheLoai> theLoai = null;
		try {
			conn = NguyenThanhTungConnection.getMSSQLConnection();
			flim = FlimUtils.getByNameFlim(conn, nameFlim);

			theLoai = TheLoaiUtils.getListFlim(conn, flim.getIdFlim());
			if (nameFlim == null) {
				errorString = "Flim not found with code: " + nameFlim;
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			errorString = e.getMessage();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (errorString != null) {
			request.setAttribute("errorString", errorString);
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/guest/movieSingle.jsp");
			dispatcher.forward(request, response);
		} else {
			request.setAttribute("flim", flim);
			request.setAttribute("theLoai", theLoai);
			RequestDispatcher dispatcher = request.getServletContext()
					.getRequestDispatcher("/WEB-INF/views/guest/movieSingle.jsp");
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
