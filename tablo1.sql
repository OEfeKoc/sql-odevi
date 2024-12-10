-- create database tablo1

-- Çalýþan Tablosu
create table calisan (
calisanid int not null primary key identity(1,1),
calisanadi nvarchar(20) not null,
calisanpozisyonu nvarchar(20) not null,
calisantelefonu nvarchar(10) not null,
calisanmail nvarchar(30) not null
);

-- Þirket Tablosu
create table sirket (
sirketid int not null primary key identity(1,1),
sirkettelefonu nvarchar(10) not null,
sirketadi nvarchar(25) not null,
sirketmail nvarchar(20) not null
);

-- Proje Tablosu
create table proje (
projeid int not null primary key identity(1,1),
projeadi nvarchar(20) not null,
projebaslangictarihi date not null,
projebitistarihi date not null,
projebutce money not null,
calisanid int not null,
sirketid int not null,
constraint FK_calisan foreign key (calisanid) references calisan(calisanid),
constraint FK_sirket foreign key (sirketid) references sirket(sirketid)
);