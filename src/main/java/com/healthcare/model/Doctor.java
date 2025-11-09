package com.healthcare.model;

import jakarta.persistence.*;

@Entity
@Table(name = "doctors")
public class Doctor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long doctorId;

    private String name;
    private String specialization;
    private String availability; // e.g., "Mon-Fri 9AM-5PM"

    // Constructors
    public Doctor() {}

    public Doctor(Long doctorId, String name, String specialization, String availability) {
        this.doctorId = doctorId;
        this.name = name;
        this.specialization = specialization;
        this.availability = availability;
    }

    // Getters and Setters
    public Long getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Long doctorId) {
        this.doctorId = doctorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpecialization() {
        return specialization;
    }

    public void setSpecialization(String specialization) {
        this.specialization = specialization;
    }

    public String getAvailability() {
        return availability;
    }

    public void setAvailability(String availability) {
        this.availability = availability;
    }

    @Override
    public String toString() {
        return "Doctor [doctorId=" + doctorId + ", name=" + name +
               ", specialization=" + specialization + ", availability=" + availability + "]";
    }
}
