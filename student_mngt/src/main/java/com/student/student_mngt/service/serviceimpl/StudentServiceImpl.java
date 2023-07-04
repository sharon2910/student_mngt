package com.student.student_mngt.service.serviceimpl;

import com.student.student_mngt.model.Student;
import com.student.student_mngt.reepository.StudentRepo;
import com.student.student_mngt.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepo studentRepo;
    @Override
    public List<Student> getStudentDetails(){
       List<Student> studentList = studentRepo.findAll();
       return studentList;
    }

    @Override
    public void registerStudent(Student student) {
        Student student1 = studentRepo.save(student);
    }

    @Override
    public void deleteStudentData(long id) {
        studentRepo.deleteById(id);
    }

    @Override
    public Optional<Student> getStudentDetailsById(long id) {
        Optional<Student> student = studentRepo.findById(id);
        return student;
    }
}