CREATE DATABASE QL
USE QL

CREATE TABLE tbl_NhaSanXuat
(
	MaNSX NVARCHAR(10) PRIMARY KEY,
	TenNSX NVARCHAR(100)
)

CREATE TABLE tbl_Loai
(
	MaLoai NVARCHAR(10) PRIMARY KEY,
	TenLoai NVARCHAR(100)
)

CREATE TABLE tbl_KhachHang 
(
	MaKhachHang NVARCHAR(10) PRIMARY KEY,
	TenKhachHang NVARCHAR(100),
	SoDienThoai NVARCHAR(10),
	MatKhau NVARCHAR(100)
)

CREATE TABLE tbl_SanPham
(
	MaSanPham NVARCHAR(10) PRIMARY KEY,
	TenSP NVARCHAR(100),
	MaLoai NVARCHAR(10),
	MaNSX NVARCHAR(10),
	Gia MONEY ,
	GhiChu NVARCHAR (100),
	Hinh NVARCHAR(100)
	FOREIGN KEY (MaLoai) REFERENCES tbl_Loai(MaLoai),
	FOREIGN KEY (MaNSX) REFERENCES tbl_NhaSanXuat(MaNSX)
)
CREATE TABLE tbl_HoaDon
(
	MaHoaDon NVARCHAR(10) PRIMARY KEY,
	NgayTao DATE,
	MaKhachHang NVARCHAR(10),
	FOREIGN KEY (MaKhachHang) REFERENCES tbl_KhachHang(MaKhachHang)
)

CREATE TABLE tbl_ChiTiet
(
	MaHoaDon NVARCHAR(10),
	MaSanPham NVARCHAR(10),
	SoLuong INT,
	PRIMARY KEY(MaHoaDon,MaSanPham),
	Foreign key (MaHoaDon) REFERENCES tbl_HoaDon(MaHoaDon),
	Foreign key(MaSanPham) REFERENCES tbl_SanPham(MaSanPham)
)