package com.example.gerenciamentodepessoas.entities;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Entity
@Table(name = "per_person")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Person {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "per_id")
    private Long id;
    @Column(name = "per_name")
    private String firstName;
    @Column(name = "per_lastname")
    private String lastName;
    @Column(name = "per_cpf")
    private String cpf;
    @Column(name = "per_birthdate")
    private String birthDate;
    @Column(name = "per_email")
    private String email;
    @Column (name = "per_salary")
    private BigDecimal salary;
    @Column(name = "per_creatat")
    private LocalDateTime creationDate = LocalDateTime.now();

    @JoinColumn(name = "per_fun_id")
    private Long functionId;
    @JoinColumn(name = "per_adr_id")
    private Long adressId;


}
