package pre.com.bo1;




	import java.util.Date;
	import java.util.Properties;

	import javax.mail.Message;
	import javax.mail.MessagingException;
	import javax.mail.PasswordAuthentication;
	import javax.mail.Session;
	import javax.mail.Transport;
	import javax.mail.internet.InternetAddress;
	import javax.mail.internet.MimeMessage;

	public  class SendMail {
		public static boolean sendMail(String mail,String otp){
			System.out.println(mail);
			System.out.println(otp);
			final String username = "sonudhakad839@gmail.com";
			final String password = "9407179538";
			System.out.println("read password");
			 
			Properties props = new Properties();
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.port", "587");

			System.out.println("message sending....");

	  Session email_session = Session.getInstance(props,
	  new javax.mail.Authenticator() {
		protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(username, password);
		}
	  });
			
	try {

		Message message = new MimeMessage(email_session);
		message.setFrom(new InternetAddress(username));
		
		message.setRecipients(Message.RecipientType.TO,
			InternetAddress.parse(mail));
		message.setSubject(otp);
		message.setText("+ one time otp password +"+new Date());

		Transport.send(message);

		System.out.println("message sent ");

	} catch (MessagingException e) {

		System.err.print(e.getMessage());
		e.printStackTrace();
	}	
	return true;
		}
		
	}


