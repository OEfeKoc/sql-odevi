--create database tablo2

-- Müþteri Tablosu
create table musteri(
musteriid int not null primary key identity(1,1),
musteriadi nvarchar(20) not null,
musteritelefonu nvarchar(25) not null
);


-- Tedarikçi Tablosu
create table tedarik(
tedarikid int not null primary key identity(1,1),
tedarikadi nvarchar(25) not null,
tedariktel nvarchar(10) not null,
tedarikmail nvarchar(30) not null
);

-- Ürün Tablosu
create table urun(
urunid int not null primary key identity(1,1),
urunadi nvarchar(25) not null,
urunfiyat money not null,
urunmiktari int not null,
tedarikid int not null,
constraint FK_tedarik foreign key(tedarikid) references tedarik(tedarikid)
);

-- Satýn Alma
create table satinalma(
satisid int not null primary key identity(1,1),
odemedurum nvarchar(15) not null,
satinalmatarihi date not null,
urunid int not null,
adet int not null,
satisfiyati money not null,
musteriid int not null,
constraint FK_musteri foreign key(musteriid) references musteri(musteriid),
constraint FK_urun foreign key(urunid) references urun(urunid)
);
