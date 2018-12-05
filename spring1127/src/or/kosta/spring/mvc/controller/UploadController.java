package or.kosta.spring.mvc.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadController {
 
 // ckeditor ���̾�α� â���� Ajax�� �̹����� ���ε��� �޼���
 @RequestMapping(value = "/imageUpload", method = RequestMethod.POST)
 public void commUpload(HttpServletRequest request,HttpSession session, 
   HttpServletResponse response, @RequestParam MultipartFile upload) {
  OutputStream out = null;
  PrintWriter printWriter = null;
  response.setCharacterEncoding("EUC-KR");
  response.setContentType("text/html;charset=EUC-KR");
  try {
   String fileName = upload.getOriginalFilename();
   byte[] bytes = upload.getBytes();
   String path = session.getServletContext().getRealPath("/resources/upload");
   String uploadPath = path + "\\" + fileName;// ������
   out = new FileOutputStream(new File(uploadPath));
   out.write(bytes);
   String callback = request.getParameter("CKEditorFuncNum");

   printWriter = response.getWriter();

   String fileUrl = "resources/upload/" + fileName;// url���
   // ���� ���ε带 �񵿱������ ������ �� Callback�� �����Ѵ�.
   //printWriter.println("data:");
   printWriter.println("<script type='text/javascript'>"
     + "window.parent.CKEDITOR.tools.callFunction(" + callback
     + ",'" + fileUrl + "','�̹����� ���ε� �Ͽ����ϴ�.'" + ")</script>");
   printWriter.flush();

  } catch (IOException e) {
   e.printStackTrace();
  } finally {
   try {
    if (out != null) {
     out.close();
    }
    if (printWriter != null) {
     printWriter.close();
    }
   } catch (IOException e) {
    e.printStackTrace();
   }
  }

  return;
 }
}
