package com.atsapp.library;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class EmailPlugin {
	final String senderEmailID = "missiona.carla@gmail.com";
	final String senderPassword = "7277077256";
	final String emailSMTPserver = "smtp.gmail.com";
	final String emailServerPort = "465";
	String receiverEmailID = null;
	static String emailSubject = "Test Mail";
	static String emailBody = ":) Hiii";

	public String send() { // Receiver
		String Subject ="This is english "; String Body =" This is from java ";																	// Address
		String receiverEmailID = "missiona.carla@gmail.com";
		// Subject
		this.emailSubject = Subject;
		// Body
		this.emailBody = Body;
		Properties props = new Properties();
		props.put("mail.smtp.user", senderEmailID);
		props.put("mail.smtp.host", emailSMTPserver);
		props.put("mail.smtp.port", emailServerPort);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "false");
		props.put("mail.smtp.socketFactory.port", emailServerPort);
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		SecurityManager security = System.getSecurityManager();
		String res ="";
		try {
			Authenticator auth = new SMTPAuthenticator();
			Session session = Session.getInstance(props, auth);
			MimeMessage msg = new MimeMessage(session);
			msg.setText(emailBody);
			msg.setSubject(emailSubject);
			msg.setFrom(new InternetAddress(senderEmailID));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(
					receiverEmailID));
			Transport.send(msg);
			System.out.println("Message send Successfully:)");
			res =" Message sent!";
		} catch (Exception mex) {
			res = " error " + mex.getMessage();
			mex.printStackTrace();
		}
		return res; 
	}

	public class SMTPAuthenticator extends javax.mail.Authenticator {
		public PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(senderEmailID, senderPassword);
		}
	}
}