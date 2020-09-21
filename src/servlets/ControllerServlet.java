package servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {

            double x = Double.parseDouble(req.getParameter("x"));
            double y = Double.parseDouble(req.getParameter("y"));
            double r = Double.parseDouble(req.getParameter("r"));

            if (y <= -3 || y >= 5) {
                createErrorPage(resp);
            }
           else{
               getServletContext().getRequestDispatcher("/areaCheckServlet").forward(req, resp);
           }
        }
        catch(Exception e){
            e.printStackTrace();
            createErrorPage(resp);
        }
    }

    public void createErrorPage(HttpServletResponse resp) throws IOException {
        PrintWriter writer = resp.getWriter();
        String answer = "<html>\n" +
                "  <head>\n" +
                "    <meta charset=\"utf-8\" /> " +
                "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/error.css\">" +
                "  </head>" +
                "<body>" +
                "<div id = \"error\">Error</div>" +
                "<a href = \"index.jsp\">Go back</a>" +
                "</body></html>";
        writer.write(answer);
        writer.close();
    }
}
