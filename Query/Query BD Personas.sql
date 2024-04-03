CREATE DATABASE PRUEBA;

CREATE TABLE Persona(
	IdPersona INT IDENTITY(1,1) PRIMARY KEY,
	Nombre VARCHAR(50),
	Apellido VARCHAR(50),
	Edad INT,
	FechaNacimiento DATE
);

INSERT INTO Persona (Nombre, Apellido, Edad, FechaNacimiento) VALUES
('Juan', 'Perez', 25, '1996-03-15'),
('Mar�a', 'Gonz�lez', 30, '1992-07-20'),
('Pedro', 'L�pez', 40, '1982-11-10'),
('Ana', 'Mart�nez', 35, '1987-09-05'),
('Carlos', 'Rodr�guez', 28, '1993-04-18'),
('Laura', 'S�nchez', 33, '1988-12-25'),
('Jos�', 'D�az', 22, '2002-08-30'),
('Sof�a', 'Hern�ndez', 29, '1995-06-12'),
('Alejandro', 'G�mez', 38, '1984-10-07'),
('Isabel', 'Alvarez', 31, '1991-02-22'),
('David', 'Torres', 27, '1994-11-28'),
('Elena', 'Ruiz', 26, '1995-09-14'),
('Miguel', 'Fern�ndez', 39, '1983-07-03'),
('Raquel', 'Jim�nez', 32, '1990-05-08'),
('Andr�s', 'Moreno', 36, '1986-01-17'),
('Carmen', 'V�zquez', 34, '1988-03-29'),
('Daniel', 'Romero', 24, '1997-10-02'),
('Luc�a', 'P�rez', 23, '1998-12-09'),
('Francisco', 'Garc�a', 37, '1985-04-26'),
('Ana', 'Fern�ndez', 41, '1981-08-07'),
('Javier', 'L�pez', 21, '2000-06-20'),
('Marina', 'Santos', 42, '1979-09-16'),
('Pablo', 'Mart�n', 43, '1978-11-23'),
('Silvia', 'Navarro', 45, '1976-03-30'),
('Diego', 'Iglesias', 44, '1977-05-05'),
('Rosa', 'Morales', 46, '1975-07-10'),
('Santiago', 'Ortega', 47, '1974-09-14'),
('Cristina', 'Guti�rrez', 48, '1973-11-19'),
('Luis', 'Castro', 49, '1972-01-24'),
('Patricia', 'Serrano', 50, '1971-04-01');

SELECT * FROM Persona;

GO
--CONSULTA PERSONAS GENERAL
CREATE PROCEDURE ConsultarPersonas
AS
BEGIN
    SELECT * FROM Persona;
END;

EXEC ConsultarPersonas;

GO
--CONSULTA PERSONA POR ID
CREATE PROCEDURE ConsultarPersonaPorId
    @IdPersona INT
AS
BEGIN
    SELECT *
    FROM Persona
    WHERE IdPersona = @IdPersona;
END;

DECLARE @IdPersonaBuscada INT = 5;
EXEC ConsultarPersonaPorId @IdPersona = @IdPersonaBuscada;

