package com.healthcare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.healthcare.repository.DoctorRepository;
import com.healthcare.repository.StaffRepository;
import com.healthcare.model.Staff;

@Controller
public class HomeController {

    @Autowired
    private StaffRepository staffRepository;

    // Default homepage
    @GetMapping("/")
    public String index() {
        return "index"; // loads index.jsp
    }

    // When "Get Started" button is clicked
    @GetMapping("/getStarted")
    public String getStarted() {
        return "loginSelection"; // this will open loginSelection.jsp
    }

    @GetMapping("/patientLogin")
    public String patientLogin() {
        return "patientLogin"; // this will open patientLogin.jsp
    }

    @GetMapping("/managementLogin")
    public String managementLogin() {
        return "managementLogin"; // this will open managementLogin.jsp
    }

    @GetMapping("/doctorLogin")
    public String doctorLogin() {
        return "doctorLogin"; // this will open doctorLogin.jsp
    }

    @GetMapping("/mdashboard")
    public String mdashboard() {
        return "mangamentdashboard"; // this will open mdashboard.jsp
    }

    @PostMapping("/managementdashboard")
    public String managementdashboard(@RequestParam("email") String email, @RequestParam("password") String password) {
        try{
            Staff staff = staffRepository.findByEmailAndPassword(email, password);

            if(staff!=null){
                // Login successful
                return "redirect:/mdashboard"; // this will open dashboard.jsp
            }else{
                // Login failed
                return "managementLogin.jsp"; // Redirect back to login page
            }
        }catch(Exception e){
            e.printStackTrace();
            return "managementLogin.jsp"; // Redirect back to login page
        }
        
        // System.out.println("Email: " + email + ", Password: " + password);
        // return "redirect:/mdashboard";
    }

    // @GetMapping("/mdashboard")
    // public String mdashboard() {
    // return "index"; // this will open mdashboard.jsp
    // }

    // ✅ Add this section for showing doctors
    @Autowired
    private DoctorRepository doctorRepository;

    @GetMapping("/viewdoctors")
    public String viewDoctors(Model model) {
        model.addAttribute("doctors", doctorRepository.findAll());
        return "viewdoctors"; // corresponds to viewdoctors.jsp
    }
}
