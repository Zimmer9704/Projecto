/*DROP  TABLE Categoria
DROP  TABLE Imagen
DROP TABLE Publicacion
DROP  TABLE Usuarios*/



CREATE TABLE  Categoria (
	IDCategoria bigint  NOT NULL IDENTITY ( 1 , 1 ) PRIMARY KEY ,	
	Nombre nvarchar(50),
	Etiquetas nvarchar(50)
)

CREATE  TABLE  Usuario (
	UsuarioID nvarchar ( 100 ) PRIMARY KEY ,
	Contraseña nvarchar ( 100 ) NOT NULL ,
	Nombre nvarchar ( 200 ),
	Correo_electrónico varchar ( 500 ),
	Administrador BIT  NOT NULL DEFAULT 0 
	
)

CREATE  TABLE  Publicacion (
	IDpublicacion bigint  NOT NULL IDENTITY ( 1 , 1 ) PRIMARY KEY ,	

	FechaCreacion datetime NOT NULL DEFAULT getdate (),
		
	Texto Text NOT NULL ,
	Titulo Text  NOT NULL ,	
	IDCategoria bigint REFERENCES Categoria ,
	UsuarioID bigint REFERENCES Usuarios
	Etiquetas varchar (50)	
)
CREATE TABLE Imagen (
	IDImagen bigint NOT NULL IDENTITY ( 1 , 1 ) PRIMARY KEY ,
	Imagen IMAGE,
	IDpublicacion bigint REFERENCES Publicacion
)
