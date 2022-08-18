create table NHACUNGCAP(
MaNhaCC int primary key identity(1,1) ,
TenNhaCC nvarchar(255) not null unique,
Diachi nvarchar(255) not null unique,
SoDT int,
MaSoThue int
);
create table LOAIDICHVU(
MaLoaiDV int primary key identity(1,1),
TenLoaiDV nvarchar(255)not null unique
);
create table MUCPHI(
MaMucPhi int primary key identity(1,1),
DonGia decimal(16,0) not null check(DonGia >= 0) default 0,
Mota ntext
);
create table DONGXE(
DongXe int primary key identity(1,1),
HangXe nvarchar(255) not null unique,
SoChoNgoi int not null check(SoChoNgoi >=0) default 0
);
create table DANGKYCUNGCAP(
MaDKCC int primary key identity(1,1),
MaNhaCC int foreign key references NHACUNGCAP(MaNhaCC),
MaLoaiDV int foreign key references LOAIDICHVU(MaLoaiDV),
MaMucPhi int foreign key references MUCPHI(MaMucPhi),
DongXe int foreign key references DONGXE(DongXe),
NgayBatDauCungCap date not null default GETDATE(),
NgayKetThucCungcap date not null default GETDATE(),
SoLuongXeDangKy int not null check(SoLuongXeDangKy >=0) default 0,
);

drop table NHACUNGCAP;
drop table LOAIDICHVU;
drop table MUCPHI;
drop table DONGXE;
drop table DANGKYCUNGCAP; 