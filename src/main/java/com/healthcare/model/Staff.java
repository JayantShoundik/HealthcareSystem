package com.healthcare.model;

import jakarta.persistence.*;

@Entity
@Table(name = "staff")
public class Staff {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long staffId;

    private String name;
    private String email;
    private String password; // ✅ must exist to map DB column
    private String role;

    // ✅ Default constructor
    public Staff() {}

    // ✅ Parameterized constructor
    public Staff(Long staffId, String name, String email, String password, String role) {
        this.staffId = staffId;
        this.name = name;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    // ✅ Getters & Setters
    public Long getStaffId() {
        return staffId;
    }

    public void setStaffId(Long staffId) {
        this.staffId = staffId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    // ✅ Complete toString method
    @Override
    public String toString() {
        return "Staff {" +
                "staffId=" + staffId +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
