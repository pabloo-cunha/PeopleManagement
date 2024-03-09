CREATE TABLE per_person(
	per_id bigint primary key,
	per_name varchar(20) not null,
    per_lastname varchar(20)not null,
    per_cpf varchar(11) not null unique,
    per_email varchar(55) not null unique,
    per_birthday date not null,
    per_salary decimal not null,
    per_fun_id bigint not null,
    per_adr_id bigint not null,
    per_creatat date not null,
    foreign key (per_adr_id) references adr_adress(adr_id),
    foreign key (per_fun_id) references fun_function(fun_id)
);

CREATE TABLE par_partners(
	par_id bigint primary key,
    par_company varchar(255) not null unique,
    par_cnpj varchar(18) not null unique,
    par_cat_id bigint not null,
    par_adr_id bigint not null,
    par_creatat date not null,
    par_product_id bigint not null,
    foreign key(par_product_id) references prd_product(prd_id),
    foreign key(par_cat_id) references cat_category(cat_id),
    foreign key(par_adr_id) references adr_adress(adr_id)
);

CREATE TABLE pa_person_adress(
    per_id bigint,
    adr_id bigint,
    primary key(per_id, adr_id),
    foreign key(per_id) references per_person(per_id),
    foreign key(adr_id) references adr_adress(adr_id)
);

CREATE TABLE emp_employee(
	emp_id bigint primary key,
    emp_fun_id bigint not null,
    emp_permission varchar(30) not null,
    emp_creatat date not null,
    emp_dep_id bigint not null,
    emp_usr_id bigint not null,
    foreign key(emp_usr_id) references usr_user(usr_id),
    foreign key(emp_dep_id) references dep_departament(dep_id),
    foreign key(emp_fun_id) references fun_function(fun_id)
);



CREATE TABLE cat_category(
	cat_id bigint primary key,
    cat_description varchar(50)
);

CREATE TABLE usr_user(
	usr_id bigint primary key,
    usr_login varchar(255) not null unique,
    usr_password varchar(255) not null,
    usr_permission varchar(30) not null,
	usr_per_id bigint not null,
    usr_confirmation boolean default 0,
    usr_creatat date not null,
    usr_emp_id bigint not null,
    foreign key(usr_per_id) references per_person(per_id) 
);

CREATE TABLE adr_adress(
	adr_id bigint primary key,
    adr_street varchar(255) not null,
    adr_number int not null,
    adr_cep varchar(10) not null,
    adr_city varchar(255) not null,
    adr_state varchar(50) not null,
    adr_country varchar(50) not null
);

CREATE TABLE fun_function(
	fun_id int primary key,
    fun_function varchar(100) not null,
    fun_description varchar(255)    
);

CREATE TABLE dep_departament(
	dep_id bigint primary key,
    dep_name varchar(255) not null,
    dep_vertical varchar(255) not null,
    dp_emp_id bigint not null
);

CREATE TABLE pd_person_departament(
	per_id bigint,
    dep_id bigint,
    fun_id bigint,
    primary key(per_id, dep_id, fun_id),
    foreign key(per_id) references per_person(per_id),
    foreign key(dep_id) references dep_departament(dep_id),
    foreign key(fun_id) references fun_function(fun_id)
);

CREATE TABLE prd_product(
    prd_id bigint primary key,
    prd_name varchar(255) not null,
    prd_description varchar(255) not null,
    prd_price decimal not null,
    prd_creatat date not null
);
