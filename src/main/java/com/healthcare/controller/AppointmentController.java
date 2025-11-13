package com.healthcare.controller;

import com.healthcare.model.Appointment;
import com.healthcare.repository.AppointmentRepository;
import com.healthcare.repository.DoctorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class AppointmentController {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private DoctorRepository doctorRepository;

    // 1️⃣ Show booking form
    @GetMapping("/bookAppointment")
    public String showAppointmentForm(Model model) {
        model.addAttribute("doctors", doctorRepository.findAll());
        return "bookAppointment"; // bookAppointment.jsp
    }

    @PostMapping("/bookAppointment")
public String saveAppointment(@RequestParam("patientName") String patientName,
                              @RequestParam("doctorName") String doctorName,
                              @RequestParam("date") String date,
                              Model model) {

    // Create and save appointment
    Appointment appt = new Appointment();
    appt.setPatientName(patientName);
    appt.setDoctorName(doctorName);
    appt.setDate(date);
    appt.setStatus("Pending");

    appointmentRepository.save(appt);

    // Add confirmation message
    model.addAttribute("message", "Appointment booked successfully!");
    model.addAttribute("doctors", doctorRepository.findAll()); // reload doctor list

    // Return same page instead of redirect
    return "bookAppointment";
}
@GetMapping("/viewAppointments")
public String viewAllAppointments(Model model) {
    model.addAttribute("appointments", appointmentRepository.findAll());
    return "viewAppointments"; // this will open viewAppointments.jsp
}



}
