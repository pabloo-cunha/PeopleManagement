package com.example.gerenciamentodepessoas.entities;

import com.example.gerenciamentodepessoas.enumerate.Permission;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.io.Serial;

@Entity
@Table(name = "usr_user")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = jakarta.persistence.GenerationType.IDENTITY)
    @Column(name = "usr_id")
    private String name;
    @Column(name = "usr_email")
    private String email;
    @Column(name = "usr_password")
    private String password;
    @Column(name = "usr_permission")
    private Permission permission;

}
