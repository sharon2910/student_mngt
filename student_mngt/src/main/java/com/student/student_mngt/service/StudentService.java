package com.student.student_mngt.service;

import com.student.student_mngt.model.Student;

import java.util.List;
import java.util.Optional;

public interface StudentService {
    public List<Student> getStudentDetails();
    public void registerStudent(Student student);
    public void deleteStudentData(long id);
    public Optional<Student> getStudentDetailsById(long id);
}
