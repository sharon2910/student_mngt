package com.student.student_mngt.service;

import com.student.student_mngt.model.EmailDetails;

public interface EmailService {

    public String sendEmail(EmailDetails emailDetails);
}
