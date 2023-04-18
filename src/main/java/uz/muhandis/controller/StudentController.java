package uz.muhandis.controller;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import uz.muhandis.model.Student;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class StudentController {
    List<Student> studentList = new ArrayList<>(Arrays.asList(
            new Student("Jhon Doe", 29, "+998901234567"),
            new Student("Stive Jobs", 21, "+998901234567"),
            new Student("Jason Sebastian", 29, "+998901234567"),
            new Student("Killian Mbappe", 29, "+998901234567")
    ));
    @RequestMapping(value="/student", method = RequestMethod.GET)
    public String getStudent(Model model){
        model.addAttribute("students", studentList);
        return "student";
    }

    @RequestMapping(value = "/form", method = RequestMethod.GET)
    public String openStudentForm(){
        return "form";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public RedirectView addStudent(Model model, HttpServletRequest request){
        studentList.add(new Student(
                request.getParameter("fullName"),
                Integer.parseInt(request.getParameter("age")),
                request.getParameter("phone")
                ));
        model.addAttribute("message", "Succesfully added");
        model.addAttribute("students", studentList);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl("/student");
        return redirectView;
    }
}
