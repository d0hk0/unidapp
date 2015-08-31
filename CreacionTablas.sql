CREATE TABLE Tbl_Usuarios (
Num_Id_Usr INT AUTO_INCREMENT PRIMARY KEY, 
Str_Usr_Nombre  VARCHAR(255) NULL COMMENT 'Nombre de la persona',
Str_Tipo_Usuario VARCHAR(15) NULL COMMENT 'Tipo de usuario, administrador, propietario, habitante principal, portero, habitante secundario, etc',
Str_Password VARCHAR(30) NULL COMMENT 'contraseña',
Str_Num_Apto VARCHAR(30) NULL COMMENT 'Numero del apto',
Dtm_Fecha_Ult_Ingreso DATE NULL COMMENT 'Fecha de ultimo ingreso'
) TYPE = INNODB;


CREATE TABLE Tbl_Criterioss (
Num_Id_Criterio INT AUTO_INCREMENT PRIMARY KEY, 
Str_Desc_Criterio  VARCHAR(30) NULL COMMENT 'Descripcion del criterio',
Dtm_Fecha_Crea DATE NULL COMMENT 'Fecha de creacion o actualizacion'
) TYPE = INNODB;


CREATE TABLE Tbl_Anuncios_Admin (
Num_Id_Anun_Admin INT AUTO_INCREMENT PRIMARY KEY, 
Str_Tit_Anun  VARCHAR(255) NULL COMMENT 'Titulo del Anuncio',
Str_Desc_Admin VARCHAR(500) NULL COMMENT 'Descripcion del Anuncio',
FOREIGN KEY (FK_Num_Id_Criterio) REFERENCES Tbl_Usuarios (Num_Id_Usr),
FOREIGN KEY (FK_Num_Id_Usr) REFERENCES Tbl_Criterios (Num_Id_Criterio),
Dtm_Fecha_Crea DATE NULL COMMENT 'Fecha de Creacion o Actualizacion'
) TYPE = INNODB;


CREATE TABLE Tbl_Anuncios_Gen (
Num_Id_Anun_Gen INT AUTO_INCREMENT PRIMARY KEY, 
Str_Tit_Anun  VARCHAR(255) NULL COMMENT 'Titulo del Anuncio',
Str_Desc_Admin VARCHAR(500) NULL COMMENT 'Descripcion del Anuncio',
FOREIGN KEY (FK_Num_Id_Criterio) REFERENCES Tbl_Usuarios (Num_Id_Usr),
FOREIGN KEY (FK_Num_Id_Usr) REFERENCES Tbl_Criterios (Num_Id_Criterio),
Dtm_Fecha_Crea DATE NULL COMMENT 'Fecha de Creacion o Actualizacion'
) TYPE = INNODB;


CREATE TABLE Tbl_Unidades (
Num_Id_Unidad INT AUTO_INCREMENT PRIMARY KEY, 
Str_Nombre  VARCHAR(255) NULL COMMENT 'Nombre de la Unidad',
Str_Direccion VARCHAR(500) NULL COMMENT 'Direccion de la Unidad',
Num_Numero_aptos INT NULL COMMENT 'Numero de apartamentos, casas, etc del conjunto residencial',
Dtm_Fecha_Crea DATE NULL COMMENT 'Fecha de Creacion o Actualizacion'
) TYPE = INNODB;


CREATE TABLE Tbl_Anuncio_X_Unidad (
Num_Id_Unidad_Anuncio INT AUTO_INCREMENT PRIMARY KEY, 
Str_Estado  VARCHAR(255) NULL COMMENT 'Estado del anuncio, A=Activo, I=Inactivo',
FOREIGN KEY (FK_Num_Id_Anun_Gen) REFERENCES Tbl_Anuncios_Gen (Num_Id_Anun_Gen),
FOREIGN KEY (FK_Num_Id_Unidad) REFERENCES Tbl_Unidades (Num_Id_Unidad),
Dtm_Fecha_Crea DATE NULL COMMENT 'Fecha de Creacion o Actualizacion'
) TYPE = INNODB;









