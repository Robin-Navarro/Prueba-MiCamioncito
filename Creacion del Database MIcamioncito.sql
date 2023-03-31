create table Tipo_Carga(
	TC_Id int not null identity(1,1) primary key,
	TC_Nombre varchar(50) not null
);

create table Vehiculo(
	VH_Id int not null identity(1,1) primary key,
	VH_Capacidad int not null,
	VH_Consumo int not null,
	VH_Distancia int not null,
	VH_Disponibilidad int not null,
	VH_CostoDepreciacion int not null,
	VH_TC_Id int not null,
	constraint fk_Vehiculo_Carga foreign key (VH_TC_Id) references Tipo_Carga(TC_Id)
);

create table Tipo_Empleado(
	TEMP_Id int not null identity(1,1) primary key,
	TEMP_Nombre varchar(100) not null
);

create table Empleado(
	EMP_Id int not null identity(1,1) primary key,
	EMP_Nombre varchar(50) not null,
	EMP_Estado int not null,
	EMP_TEMP_Id int not null,
	constraint fk_Piloto_TipoEmpleado foreign key (EMP_TEMP_Id) references Tipo_Empleado(TEMP_Id)
);


create table Tipo_Cliente(
	TCLT_Id int not null identity(1,1) primary key,
	TCLT_Nombre varchar(100) not null,
	TCLT_Porcentaje int not null
);

create table Client(
	CLT_Id int not null identity(1,1) primary key,
	CLT_Nombre varchar(100),
	CLT_TCLT_Id int not null,
	constraint fk_Cliente_TipoCliente foreign key(CLT_TCLT_Id) references Tipo_Cliente(TCLT_Id)
);

create table Servicio(
	SRV_Id int not null identity(1,1) primary key,
	SRV_VH_Id int not null,
	SRV_CLT_Id int not null,
	SRV_FechaInicio date not null,
	SRV_FechaFin date not null,
	SRV_DireccionInicio varchar(200) not null,
	SRV_DireccionFin varchar(200) not null,
	SRV_Refencia_Papeleria int not null,
	constraint fk_Servicio_Vehiculo foreign key(SRV_VH_Id) references Vehiculo(VH_Id),
	constraint fk_Servicio_Cliente foreign key(SRV_CLT_Id) references Client(CLT_Id)
);

create table Empleado_Servicio(
	ES_Id int not null identity(1,1) primary key,
	ES_EMP_Id int not null,
	ES_SRV_Id int not null,
	constraint fk_EmpleadoSRV_Empleado foreign key (ES_EMP_Id) references Empleado(EMP_Id),
	constraint fk_EmpleadoSRV_Servicio foreign key (ES_SRV_Id) references Servicio(SRV_Id)
);

create table Costo_Servicio(
	CS_Id int not null primary key identity(1,1),
	CS_SRV_Id int not null,
	CS_Viaticos int not null,
	CS_GastosAdicionales int not null
	constraint fk_Costo_Servicio foreign key (CS_SRV_Id) references Servicio(SRV_Id)
);