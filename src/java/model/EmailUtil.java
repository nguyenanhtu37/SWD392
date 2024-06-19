/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author ASUS
 */
public class EmailUtil {

    public static void sendActivationEmail(String toEmail, String activationCode) {
        final String username = "anhnttde170203@fpt.edu.vn"; // Thay thế bằng địa chỉ email của bạn
        final String password = "gdvg zpds yumf scbh"; // Thay thế bằng mật khẩu của bạn

        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        // tin nhắn
        try {
            // Tạo tin nhắn email
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            msg.setSubject("Activation Email");
            msg.setText("Your activation code is: " + activationCode);

            // Gửi email
            Transport.send(msg);

            System.out.println("Email sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
    
    public static void SendMailAccep(String toEmails){
        final String username = "anhnttde170203@fpt.edu.vn"; // Thay thế bằng địa chỉ email của bạn
        final String password = "gdvg zpds yumf scbh"; // Thay thế bằng mật khẩu của bạn
        
        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
            
        });
        
        
        try {
            // Tạo tin nhắn email
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmails));
            msg.setSubject("Notice Email");
            msg.setText("Your post has been approved" );

            // Gửi email
            Transport.send(msg);

            System.out.println("Email sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
    public static void SendEmailReject(String toEmails){
        final String username = "anhnttde170203@fpt.edu.vn"; // Thay thế bằng địa chỉ email của bạn
        final String password = "gdvg zpds yumf scbh"; // Thay thế bằng mật khẩu của bạn
        
        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
            
        });
        try {
            // Tạo tin nhắn email
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmails));
            msg.setSubject("Notice Email");
            msg.setText("Your post has been reject" );

            // Gửi email
            Transport.send(msg);

            System.out.println("Email sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
    public static void SendMailAccepCV(String toEmails){
        final String username = "anhnttde170203@fpt.edu.vn"; // Thay thế bằng địa chỉ email của bạn
        final String password = "gdvg zpds yumf scbh"; // Thay thế bằng mật khẩu của bạn
        
        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
            
        });
        
        
        try {
            // Tạo tin nhắn email
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmails));
            msg.setSubject("Notice Email");
            msg.setText("Your CV has been approved by the Enterprise" );

            // Gửi email
            Transport.send(msg);

            System.out.println("Email sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
    public static void SendEmailRejectCV(String toEmails){
        final String username = "anhnttde170203@fpt.edu.vn"; // Thay thế bằng địa chỉ email của bạn
        final String password = "gdvg zpds yumf scbh"; // Thay thế bằng mật khẩu của bạn
        
        // Cấu hình thông tin máy chủ email
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com"); // Thay thế bằng máy chủ SMTP của bạn
        props.put("mail.smtp.port", "587"); // Thay thế bằng cổng SMTP của bạn

        // Tạo phiên làm việc với máy chủ email
        Session session = Session.getInstance(props, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
            
        });
        try {
            // Tạo tin nhắn email
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress(username));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmails));
            msg.setSubject("Notice Email");
            msg.setText("Your CV has been reject by the Enterprise" );

            // Gửi email
            Transport.send(msg);

            System.out.println("Email sent successfully");

        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
    }
}
