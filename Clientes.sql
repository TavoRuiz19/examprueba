CREATE TABLE Clientes (
  Cliente_ID int, 
  Nombre_Usuario nVARCHAR2(255), 
  Contrasenia nVARCHAR2(255), 
  NOMBRE nVARCHAR2(255),
  Apellidos nVARCHAR(255),
  Correo_Electronico nVarchar(255),
  Edad int,
  Estatura decimal(1,2),
  Peso decimal (2,2),
  IMC decimal(2.2),
  GEB decimal(2,2),
  ETA decimal(2,2), 
  Fecha_Creacion DATE,
  Fecha_Actualizacion DATE,  
  CONSTRAINT PK_EMP PRIMARY KEY (Cliente_ID)
  );