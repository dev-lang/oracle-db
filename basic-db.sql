create table IRSAEmpleados (
    idirsa integer,
    name varchar2(50) not null,
    lastname varchar2(50) not null,
    personalid varchar2(50) not null,
    birth date,
    telnumber number,
    job varchar2(50),
    hiredate date,
    commission number,
    constraint pk_IRSAEmpleados primary key (idirsa)
);

create table IRSAuthentication (
    idirsa  integer
);

insert into IRSAEmpleados (idirsa, name, lastname, personalid, telnumber, job, commission)
values
    (
    1,
    'Franco', 
    'Perez', 
    '641282561337', 
    '4446969', 
    'Operador de TI', 
    '57500'
    );

insert into IRSAuthentication (idirsa, name, lastname, location, password)
values
(
    1,
    'Franco',
    'Perez',
    'ABA',
    'pastas16'
);

ALTER TABLE IRSAuthentication
	ADD CONSTRAINT fk_IRSAuthentication_IRSAEmpleados FOREIGN KEY (idirsa) REFERENCES IRSAEmpleados(idirsa)
	
UPDATE IRSAEmpleados
SET hiredate = '21-JAN-21'
WHERE idirsa = 1;

ALTER TABLE IRSAuthentication ADD (
    name varchar2(20),
    lastname varchar2(20),
    location varchar2(50),
    password varchar2(50)
    );

select * from IRSAEmpleados;
select * from IRSAuthentication;

select * from NLS_SESSION_PARAMETERS
where PARAMETER = 'NLS_DATE_FORMAT';

DROP TABLE IRSAEmpleados;
