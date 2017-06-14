create database OrdenCompras

create table Cliente( IdCliente int not null primary key,nombre varchar(50) not null,direccion varchar (50) not null,
cp varchar not null)

create table ordencompra( Idcompra int not null primary key,FechaEmision date not null,FechaEntrega date not null,
IdCliente int foreign key references Cliente(IdCliente))

create table Producto( Idproducto int primary key,descripcion varchar (50) not null,PrecioUnitario float not null)
create table Contiene(Idcompra int foreign key references ordencompra(Idcompra),Idproducto int foreign key references Producto(Idproducto),
cantidad int, total float)
