/* =====================================================
   TALLER TECNOLOGÍA E INFORMÁTICA 2026
   BASES DE DATOS MYSQL
===================================================== */


/* =====================================================
   A. BASE DE DATOS BIBLIOTECA
===================================================== */

CREATE DATABASE IF NOT EXISTS biblioteca;
USE biblioteca;

/* ---------- TABLA AUTORES ---------- */
CREATE TABLE Autores (
    AutorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Nacionalidad VARCHAR(50)
);

/* ---------- TABLA LIBROS ---------- */
CREATE TABLE Libros (
    LibroID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(100),
    AutorID INT,
    Genero VARCHAR(50),
    ISBN VARCHAR(30),
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID)
);

/* ---------- TABLA MIEMBROS ---------- */
CREATE TABLE Miembros (
    MiembroID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Direccion VARCHAR(100),
    Telefono VARCHAR(20)
);

/* ---------- TABLA PRESTAMOS ---------- */
CREATE TABLE Prestamos (
    PrestamoID INT AUTO_INCREMENT PRIMARY KEY,
    LibroID INT,
    MiembroID INT,
    Fecha_Prestamo DATE,
    Fecha_Devolucion DATE,
    FOREIGN KEY (LibroID) REFERENCES Libros(LibroID),
    FOREIGN KEY (MiembroID) REFERENCES Miembros(MiembroID)
);


/* ---------- REGISTROS AUTORES ---------- */
INSERT INTO Autores (Nombre, Apellido, Nacionalidad) VALUES
('Gabriel','Garcia Marquez','Colombiano'),
('Mario','Vargas Llosa','Peruano'),
('Julio','Verne','Frances'),
('Jorge','Isaacs','Colombiano'),
('Miguel','Cervantes','Español'),
('Pablo','Neruda','Chileno'),
('Isabel','Allende','Chilena'),
('William','Shakespeare','Ingles'),
('Oscar','Wilde','Irlandes'),
('Victor','Hugo','Frances'),
('J.K.','Rowling','Britanica'),
('Dan','Brown','Estadounidense'),
('George','Orwell','Britanico'),
('Jane','Austen','Inglesa'),
('Mark','Twain','Estadounidense'),
('Ernest','Hemingway','Estadounidense'),
('Leo','Tolstoi','Ruso'),
('Franz','Kafka','Checo'),
('Stephen','King','Estadounidense'),
('Paulo','Coelho','Brasileño');


/* ---------- REGISTROS LIBROS ---------- */
INSERT INTO Libros (Titulo, AutorID, Genero, ISBN) VALUES
('Cien años de soledad',1,'Novela','ISBN001'),
('La ciudad y los perros',2,'Drama','ISBN002'),
('Viaje al centro de la tierra',3,'Ciencia Ficcion','ISBN003'),
('Maria',4,'Romance','ISBN004'),
('Don Quijote',5,'Clasico','ISBN005'),
('Veinte poemas de amor',6,'Poesia','ISBN006'),
('La casa de los espiritus',7,'Novela','ISBN007'),
('Hamlet',8,'Drama','ISBN008'),
('El retrato de Dorian Gray',9,'Ficcion','ISBN009'),
('Los miserables',10,'Drama','ISBN010'),
('Harry Potter',11,'Fantasia','ISBN011'),
('Codigo Da Vinci',12,'Suspenso','ISBN012'),
('1984',13,'Distopia','ISBN013'),
('Orgullo y prejuicio',14,'Romance','ISBN014'),
('Tom Sawyer',15,'Aventura','ISBN015'),
('El viejo y el mar',16,'Novela','ISBN016'),
('Guerra y paz',17,'Historico','ISBN017'),
('La metamorfosis',18,'Ficcion','ISBN018'),
('It',19,'Terror','ISBN019'),
('El alquimista',20,'Inspiracion','ISBN020');


/* ---------- REGISTROS MIEMBROS ---------- */
INSERT INTO Miembros (Nombre, Apellido, Direccion, Telefono) VALUES
('Juan','Perez','Calle 1','3001111111'),
('Ana','Lopez','Calle 2','3002222222'),
('Carlos','Gomez','Calle 3','3003333333'),
('Maria','Diaz','Calle 4','3004444444'),
('Pedro','Ruiz','Calle 5','3005555555'),
('Luisa','Martinez','Calle 6','3006666666'),
('Jorge','Torres','Calle 7','3007777777'),
('Camila','Castro','Calle 8','3008888888'),
('David','Rojas','Calle 9','3009999999'),
('Laura','Mendoza','Calle 10','3010000000'),
('Andres','Gil','Calle 11','3011111111'),
('Paula','Suarez','Calle 12','3012222222'),
('Felipe','Ramirez','Calle 13','3013333333'),
('Diana','Moreno','Calle 14','3014444444'),
('Mateo','Herrera','Calle 15','3015555555'),
('Sara','Vargas','Calle 16','3016666666'),
('Nicolas','Ortiz','Calle 17','3017777777'),
('Valentina','Navarro','Calle 18','3018888888'),
('Sebastian','Silva','Calle 19','3019999999'),
('Daniela','Reyes','Calle 20','3020000000');


/* ---------- REGISTROS PRESTAMOS ---------- */
INSERT INTO Prestamos (LibroID, MiembroID, Fecha_Prestamo, Fecha_Devolucion) VALUES
(1,1,'2026-01-01','2026-01-10'),
(2,2,'2026-01-02','2026-01-11'),
(3,3,'2026-01-03','2026-01-12'),
(4,4,'2026-01-04','2026-01-13'),
(5,5,'2026-01-05','2026-01-14'),
(6,6,'2026-01-06','2026-01-15'),
(7,7,'2026-01-07','2026-01-16'),
(8,8,'2026-01-08','2026-01-17'),
(9,9,'2026-01-09','2026-01-18'),
(10,10,'2026-01-10','2026-01-19'),
(11,11,'2026-01-11','2026-01-20'),
(12,12,'2026-01-12','2026-01-21'),
(13,13,'2026-01-13','2026-01-22'),
(14,14,'2026-01-14','2026-01-23'),
(15,15,'2026-01-15','2026-01-24'),
(16,16,'2026-01-16','2026-01-25'),
(17,17,'2026-01-17','2026-01-26'),
(18,18,'2026-01-18','2026-01-27'),
(19,19,'2026-01-19','2026-01-28'),
(20,20,'2026-01-20','2026-01-29');


/* =====================================================
   B. BASE DE DATOS TIENDA ONLINE
===================================================== */

CREATE DATABASE IF NOT EXISTS tienda_online;
USE tienda_online;

CREATE TABLE Clientes (
    ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    CorreoElectronico VARCHAR(100),
    Direccion VARCHAR(100)
);

CREATE TABLE Productos (
    ProductoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Descripcion TEXT,
    Precio DECIMAL(10,2),
    Categoria VARCHAR(50)
);

CREATE TABLE Ordenes (
    OrdenID INT AUTO_INCREMENT PRIMARY KEY,
    ClienteID INT,
    FechaOrden DATE,
    Estado VARCHAR(50),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE DetallesOrden (
    DetalleID INT AUTO_INCREMENT PRIMARY KEY,
    OrdenID INT,
    ProductoID INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10,2),
    FOREIGN KEY (OrdenID) REFERENCES Ordenes(OrdenID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);


/* =====================================================
   C. BASE DE DATOS EMPRESA
===================================================== */

CREATE DATABASE IF NOT EXISTS empleados_empresa;
USE empleados_empresa;

CREATE TABLE Departamentos (
    DepartamentoID INT AUTO_INCREMENT PRIMARY KEY,
    NombreDepartamento VARCHAR(100),
    Ubicacion VARCHAR(100)
);

CREATE TABLE Empleados (
    EmpleadoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    DepartamentoID INT,
    Puesto VARCHAR(50),
    FechaContratacion DATE,
    FOREIGN KEY (DepartamentoID) REFERENCES Departamentos(DepartamentoID)
);

CREATE TABLE Proyectos (
    ProyectoID INT AUTO_INCREMENT PRIMARY KEY,
    NombreProyecto VARCHAR(100),
    Descripcion TEXT,
    FechaInicio DATE,
    FechaFin DATE
);

CREATE TABLE Asignaciones (
    AsignacionID INT AUTO_INCREMENT PRIMARY KEY,
    EmpleadoID INT,
    ProyectoID INT,
    Rol VARCHAR(50),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID),
    FOREIGN KEY (ProyectoID) REFERENCES Proyectos(ProyectoID)
);


/* =====================================================
   D. BASE DE DATOS UNIVERSIDAD
===================================================== */

CREATE DATABASE IF NOT EXISTS universidad;
USE universidad;

CREATE TABLE Profesores (
    ProfesorID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Departamento VARCHAR(100),
    CorreoElectronico VARCHAR(100)
);

CREATE TABLE Estudiantes (
    EstudianteID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    FechaNacimiento DATE,
    CorreoElectronico VARCHAR(100)
);

CREATE TABLE Cursos (
    CursoID INT AUTO_INCREMENT PRIMARY KEY,
    NombreCurso VARCHAR(100),
    Descripcion TEXT,
    ProfesorID INT,
    FOREIGN KEY (ProfesorID) REFERENCES Profesores(ProfesorID)
);

CREATE TABLE Inscripciones (
    InscripcionID INT AUTO_INCREMENT PRIMARY KEY,
    EstudianteID INT,
    CursoID INT,
    FechaInscripcion DATE,
    Calificacion DECIMAL(5,2),
    FOREIGN KEY (EstudianteID) REFERENCES Estudiantes(EstudianteID),
    FOREIGN KEY (CursoID) REFERENCES Cursos(CursoID)
);