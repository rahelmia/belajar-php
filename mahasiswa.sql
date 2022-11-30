-- database fakultas
CREATE DATABASE abc_fakultas;

--  table jurusan
CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

-- table mahasiswa
CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ('Laki-Laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
);

-- data jurusan
insert into jurusan (kode,nama) values ('PGSD','Pendidikan Guru Sekolah Dasar');
insert into jurusan (kode,nama) values ('KTANGAN','Kerajinan Tangan');

-- data mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'3000123', 'Rania', 'perempuan', 'Serang', '2010-10-9', 'Jl. Bayangkara');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'3000456', 'Renera', 'perempuan', 'Madura', '2010-8-9', 'Jl. Cidadap');

-- update data mahasiswa
update mahasiswa set alamat = "Jl. Suka Suka" where id = 1;

-- delete data mahasiswa
delete from mahasiswa where id=2;