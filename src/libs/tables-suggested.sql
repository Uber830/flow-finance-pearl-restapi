CREATE TABLE expenses (
    id int primary key NOT NULL -- Id llave primaria
    user varchar(50) NOT NULL -- Podria ser el nickname o el email como identificador del usuario
    value int(20) NOT NULL -- valor del gasto
    account int(2) NOT NULL -- Llave foranea de la tabla de cuentas
    category int(2) NOT NULL -- Llave foranea de la tabla de categorias
    description text -- Descripción del gasto (opcional)
    date datetime default CURRENT_TIMESTAMP -- Fecha de registro
)

CREATE TABLE accounts (
    id int primary key NOT NULL -- Id llave primaria
    user varchar(50) primary key NOT NULL -- Podria ser el nickname o el email como identificador del usuario
    account varchar(100) NOT NULL -- Nombre de la cuenta
    main boolean NOT NULL -- true o false para saber cual sera la cuenta principal
)

-- Para la tabla de categorias (Categories), deberiamos hacer un listado por default, ejemplo (Comida, Hogar, Servicios, Transporte, etc...) ya despues el usuario podra crear mas categoria si desea, pero las que cree deben ser visibles solo para el.
-- Esas serias las primeras 3 tablas para comenzar.
