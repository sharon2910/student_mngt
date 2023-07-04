package com.student.student_mngt.controller;

import com.student.student_mngt.model.Student;
import com.student.student_mngt.service.EmailService;
import com.student.student_mngt.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
public class StudentController {
    @Autowired
    public StudentService  studentService;
    @Autowired
    public EmailService emailService;

    @RequestMapping("/")
    public String studentWelcome(ModelMap model) {
        List<Student> studentList = studentService.getStudentDetails();
        model.put("studentDetails", studentList);
        return "home";
    }

    @RequestMapping("/studentDetails")
    public String getStudentDetails(ModelMap model){
        List<Student> studentList = studentService.getStudentDetails();
        model.put("studentDetails", studentList);
        return "home";
    }
    @RequestMapping("/studentRegister")
    public String renderStudentRegister() {
        return "studentRegister";
    }

    @PostMapping("/studentRegister")
    public String registerStudent(@ModelAttribute Student student, ModelMap model) {
        studentService.registerStudent(student);
        getStudentDetails(model);
        return "home";
    }

    @RequestMapping("/deleteStudent/{id}")
    public void deleteStudentData(@PathVariable long id) {
        studentService.deleteStudentData(id);
    }

    @RequestMapping("/updateStudent")
    public String renderUpdateStudentForm(@RequestParam long id, ModelMap modelMap){
       Optional<Student> studentOptional = studentService.getStudentDetailsById(id);
       modelMap.put("conditionCheck",studentOptional.isPresent());
       modelMap.put("existingStudentDetails",studentOptional.get());
       return "studentRegister";
    }

    @PostMapping("/updateStudent")
    public String updatedStudentDetails(@ModelAttribute Student student, ModelMap modelMap){
        studentService.registerStudent(student);
        getStudentDetails(modelMap);
        return "home";
    }
}
