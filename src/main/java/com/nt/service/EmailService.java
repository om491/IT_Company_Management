package com.nt.service;

import org.springframework.stereotype.Service;

import com.nt.email.EmailUtil;

@Service
public class EmailService {

	public void sendOtp(String email, String otp) {

		String subject = "Password Reset OTP";

		String body = "Your OTP is: " + otp + "\n\nThis OTP is valid for 5 minutes.";

		EmailUtil.sendEmail(email, subject, body);
	}
}