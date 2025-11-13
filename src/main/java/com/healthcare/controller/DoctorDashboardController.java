package com.healthcare.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;
import com.healthcare.repository.AppointmentRepository;
import com.healthcare.model.Appointment;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

@Controller
public class DoctorDashboardController {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @GetMapping("/doctorDashboard")
    public String doctorDashboard(HttpSession session, Model model) {
        // Get logged-in doctor name from session
        String doctorName = (String) session.getAttribute("doctorName");

        // If not logged in, redirect to login page
        if (doctorName == null) {
            return "redirect:/doctorLogin";
        }

        LocalDate today = LocalDate.now();

        // Fetch all appointments for this doctor
        List<Appointment> allAppointments = appointmentRepository.findAll()
                .stream()
                .filter(a -> a.getDoctorName().equalsIgnoreCase(doctorName))
                .collect(Collectors.toList());

        // Categorize appointments
        List<Appointment> todaysAppointments = allAppointments.stream()
                .filter(a -> a.getDate().equals(today.toString()))
                .collect(Collectors.toList());

        List<Appointment> upcomingAppointments = allAppointments.stream()
                .filter(a -> a.getDate().compareTo(today.toString()) > 0)
                .collect(Collectors.toList());

        List<Appointment> completedAppointments = allAppointments.stream()
                .filter(a -> a.getStatus().equalsIgnoreCase("Completed"))
                .collect(Collectors.toList());

        // Summary Stats
        int totalAppointments = allAppointments.size();
        int pendingCount = (int) allAppointments.stream()
                .filter(a -> a.getStatus().equalsIgnoreCase("Pending"))
                .count();
        int confirmedCount = (int) allAppointments.stream()
                .filter(a -> a.getStatus().equalsIgnoreCase("Confirmed"))
                .count();

        // Add all attributes to model for JSP
        model.addAttribute("doctorName", doctorName);
        model.addAttribute("todaysAppointments", todaysAppointments);
        model.addAttribute("upcomingAppointments", upcomingAppointments);
        model.addAttribute("completedAppointments", completedAppointments);
        model.addAttribute("totalAppointments", totalAppointments);
        model.addAttribute("pendingCount", pendingCount);
        model.addAttribute("confirmedCount", confirmedCount);

        // Render the dashboard page
        return "doctorDashboard"; // corresponds to doctorDashboard.jsp
    }
    @PostMapping("/updateAppointmentStatus")
public String updateAppointmentStatus(@RequestParam("id") Long id,
                                      @RequestParam("status") String status,
                                      HttpSession session) {
    // Check doctor is logged in
    String doctorName = (String) session.getAttribute("doctorName");
    if (doctorName == null) {
        return "redirect:/doctorLogin";
    }

    // Update the appointment status
    var appointment = appointmentRepository.findById(id).orElse(null);
    if (appointment != null) {
        appointment.setStatus(status);
        appointmentRepository.save(appointment);
    }

    // Redirect back to dashboard
    return "redirect:/doctorDashboard";
}
@GetMapping("/doctorLogout")
public String doctorLogout(HttpSession session) {
    session.invalidate();
    return "redirect:/doctorLogin";
}


}
