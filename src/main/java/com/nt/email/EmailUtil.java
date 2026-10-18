package com.nt.email;

import java.util.Properties;

import com.nt.entity.Employee;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

public class EmailUtil {

	private static final String FROM_EMAIL = "omkartapkir09@gmail.com";
	private static final String APP_PASSWORD = "ivoo ycyi ghfq lkdh";

	public static void sendEmail(String toEmail, String subject, String body) {

		Properties properties = new Properties();

		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");

		Session session = Session.getInstance(properties, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {

				return new PasswordAuthentication(FROM_EMAIL, APP_PASSWORD);
			}
		});

		try {

			Message message = new MimeMessage(session);

			message.setFrom(new InternetAddress(FROM_EMAIL));

			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));

			message.setSubject(subject);

			message.setText(body);

			Transport.send(message);

			System.out.println("Email sent successfully!");

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	public static void sendRegistrationEmail(Employee e) {

		String subject = "Registration Successful";
		
		String body = "Hello " + e.getName() + ",\n\n" + "Your registration is successful." + "\n\n" + "Username: "
				+ e.getUserName() + "\nPassword: " + e.getPassword() + "\n\n" + "Thank you.";

		sendEmail(e.getUserName(), subject, body);
	}
}