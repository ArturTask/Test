package servlets;

import models.Dot;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String x = req.getParameter("x");
        String y = req.getParameter("y");
        String r = req.getParameter("r");
        HttpSession session = req.getSession();

        ArrayList<Dot> history;

        if(session.getAttribute("history")==null)
        {
            history = new ArrayList<>();
        }
        else
        {
            history = (ArrayList<Dot>)session.getAttribute("history");
        }
        history.add(new Dot(x,y,r,"Correct",""));
//        (String)req.getAttribute("unique")
        session.setAttribute("history", history);
        RequestDispatcher dispatcher = req.getRequestDispatcher("result.jsp");
        dispatcher.forward(req, resp);
    }

}
