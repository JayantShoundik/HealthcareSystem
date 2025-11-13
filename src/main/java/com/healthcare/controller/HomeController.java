package com.healthcare.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.healthcare.repository.AppointmentRepository;
import com.healthcare.repository.DoctorRepository;
import com.healthcare.repository.StaffRepository;
import com.healthcare.model.Staff;

import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

    @Autowired
    private StaffRepository staffRepository;

    // ------------------- Homepage -------------------
    @GetMapping("/")
    public String index() {
        return "index"; // loads index.jsp
    }

    // ------------------- Get Started -------------------
    @GetMapping("/getStarted")
    public String getStarted() {
        return "loginSelection"; // opens loginSelection.jsp
    }

    // ------------------- Patient Login -------------------
    @GetMapping("/patientLogin")
    public String patientLogin() {
        return "patientLogin"; // opens patientLogin.jsp
    }

    @PostMapping("/patientLogin")
    public String patientLoginSubmit(@RequestParam("email") String email,
                                     @RequestParam("password") String password,
                                     Model model) {
        // Temporary login check (hardcoded)
        if ("patient@gmail.com".equals(email) && "12345".equals(password)) {
            return "redirect:/patientDashboard"; // success → redirect
        } else {
            model.addAttribute("error", "Invalid credentials. Please try again.");
            return "patientLogin"; // stay on same page and show message
        }
    }

    // ------------------- Management Login -------------------
    @GetMapping("/managementLogin")
    public String managementLogin() {
        return "managementLogin"; // opens managementLogin.jsp
    }

    @PostMapping("/managementdashboard")
    public String managementdashboard(@RequestParam("email") String email,
                                      @RequestParam("password") String password,
                                      Model model) {
        try {
            Staff staff = staffRepository.findByEmailAndPassword(email, password);

            if (staff != null) {
                // Login successful → go to management dashboard
                return "redirect:/mdashboard"; // mapped below
            } else {
                // Login failed → stay on same page and show error
                model.addAttribute("error", "Invalid credentials. Please try again.");
                return "managementLogin"; // same as JSP file name
            }

        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", "Something went wrong. Please try again.");
            return "managementLogin"; // stay on same page
        }
    }

   

    // ------------------- Doctor List -------------------
    @Autowired
    private DoctorRepository doctorRepository;

    @GetMapping("/viewdoctors")
    public String viewDoctors(Model model) {
        model.addAttribute("doctors", doctorRepository.findAll());
        return "viewdoctors"; // opens viewdoctors.jsp
    }

    // ------------------- Doctor Login -------------------
    @GetMapping("/doctorLogin")
    public String doctorLogin() {
        return "doctorLogin"; // opens doctorLogin.jsp
    }

    @PostMapping("/doctorLogin")
    public String doctorLoginSubmit(@RequestParam("email") String email,
                                    @RequestParam("password") String password,
                                    HttpSession session,
                                    Model model) {

        var doctor = doctorRepository.findByEmailAndPassword(email, password);

        if (doctor != null) {
            // store doctor info in session
            session.setAttribute("doctorId", doctor.getDoctorId());
            session.setAttribute("doctorName", doctor.getName());
            return "redirect:/doctorDashboard"; // redirect to dashboard
        } else {
            model.addAttribute("error", "Invalid email or password. Please try again.");
            return "doctorLogin";
        }
    }

    // ------------------- Patient Dashboard -------------------
    @GetMapping("/patientDashboard")
    public String patientDashboard() {
        return "patientDashboard"; // opens patientDashboard.jsp
    }
    @Autowired
private AppointmentRepository appointmentRepository;

@GetMapping("/mdashboard")
public String mdashboard(Model model) {
    // Get today's date as string (same format as stored in DB)
    String today = LocalDate.now().toString();  // e.g. "2025-11-10"

    // Fetch all appointments for today
    long todaysAppointmentsCount = appointmentRepository.findAll()
        .stream()
        .filter(a -> a.getDate().equals(today))
        .count();

    // Add to model
    model.addAttribute("todaysAppointmentsCount", todaysAppointmentsCount);

    return "mangamentdashboard"; // loads JSP
}

}
