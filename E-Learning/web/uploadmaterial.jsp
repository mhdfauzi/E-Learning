<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="net.model.koneksi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Page</title>
    </head>
    <body>
        upload file page...!!!
        <%
            String rtempfile = File.createTempFile("temp","1").getParent();            
            MultipartRequest multi = new MultipartRequest(request,rtempfile, 15*1024*1024);     // maximum size 15 MB
            
            Enumeration files = multi.getFileNames();
            
            String st="insert into material(filename, type,content, upload_by) values (?,?,?,?)";
            PreparedStatement psmt=koneksi.getConnection().prepareStatement(st);
            
                        
            String name="";
            String fileExtesion="";
            File ff =null;
            FileInputStream fin =null;
            
            while (files.hasMoreElements())
            {
                    name=(String)files.nextElement();                                        
                    ff = multi.getFile(name);
                    fileExtesion = ff.getName().substring(ff.getName().lastIndexOf("."));
                    
                    boolean fileAllowed = fileExtesion.equalsIgnoreCase(".txt")||
                                          fileExtesion.equalsIgnoreCase(".pdf")||
                                          fileExtesion.equalsIgnoreCase(".doc")||
                                          fileExtesion.equalsIgnoreCase(".docx")||
                                          fileExtesion.equalsIgnoreCase(".xls")||
                                          fileExtesion.equalsIgnoreCase(".xlsx");
                    
                    if((ff!=null)&&fileAllowed)
                    {
                            try
                            {
                                    fin=new FileInputStream(ff);
                                    psmt.setString(1, ff.getName());
                                    psmt.setString(2, fileExtesion);
                                    psmt.setBinaryStream(3,(InputStream)fin, (int)(ff.length()));
                                    psmt.setString(4, "Logged User name or ID");        // pass the user name or id 
                                    boolean sss = psmt.execute();
                                    
                                    out.print("uploaded successfully..");
                                    out.print("<br/> Go to page");
                            }
                            catch(Exception e)
                            {
                                    out.print("Failed due to " + e);
                            }
                            finally
                            {
                            // next statement is must otherwise file will not be deleted from the temp as fin using f.
                             // its necessary to put outside otherwise at the time of exception file will not be closed.
                                    fin.close();
                                    ff.delete();
                            }
                    }
                    else
                    {
                           out.print("Please select the correct file...");
                    }// end of if and else
            }// end of while
                                   
            koneksi.CloseConnection();            
        %>
        <a href="material.jsp">Previous Page</a>
    </body>
</html>