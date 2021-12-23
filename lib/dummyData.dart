import 'package:flutter_awesome_select/flutter_awesome_select.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

// List<String> images = [
//   'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
//   'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
//   'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
//   'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
//   'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80',
// ];

final List<Map<String, dynamic>> listPeminjaman = [
  //key=String, value=dynamic
  {
    "tgl_peminjaman": "4/12/2021",
    "tgl_pengembalian": "10/12/2021",
    "nama_arsip": "Berita Acara Bimtek 1",
    "nama_peminjam": "Ridar Admin",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "tgl_peminjaman": "5/12/2021",
    "tgl_pengembalian": "15/12/2021",
    "nama_arsip": "Berita Acara Bimtek 2",
    "nama_peminjam": "Ridar Admin",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "1 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "tgl_peminjaman": "6/12/2021",
    "tgl_pengembalian": "10/12/2021",
    "nama_arsip": "Berita Acara Bimtek 3",
    "nama_peminjam": "Ridar Admin",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "tgl_peminjaman": "27/12/2021",
    "tgl_pengembalian": "30/12/2021",
    "nama_arsip": "Berita Acara Bimtek 4 Pengelolaan Arsip Dinamis",
    "nama_peminjam": "Ridar Admin",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
];

final List<Map<String, dynamic>> listPengembalian = [
  //key=String, value=dynamic
  {
    "tgl_kembali": "4/12/2021",
    "nama_arsip": "Berita Acara Bimtek 1",
    "nama_peminjam": "Ridar Admin",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "tgl_kembali": "5/12/2021",
    "nama_arsip": "Berita Acara Bimtek 2",
    "nama_peminjam": "Ridar Admin",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "1 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "tgl_kembali": "6/12/2021",
    "nama_arsip": "Berita Acara Bimtek 3",
    "nama_peminjam": "Ridar Admin",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "tgl_kembali": "27/12/2021",
    "nama_arsip": "Berita Acara Bimtek 4 Pengelolaan Arsip Dinamis",
    "nama_peminjam": "Ridar Admin",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
];

final List<Map<String, dynamic>> listArsip = [
  //key=String, value=dynamic
  {
    "no_arsip": "006.1.13",
    "nama_arsip": "proposal penawaran eduarsip for SEKOLAH VOKASI IPB",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 3,
    "status_retensi": 1,
    "keterangan": 1,
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "no_arsip": "157.19",
    "nama_arsip": "MoU KSPPS BMT Bina Ummah",
    "divisi": "Management",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 2,
    "status_retensi": 0,
    "keterangan": 1,
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "no_arsip": "006.1.12",
    "nama_arsip": "Proposal penawaran eduarsip for STAIA SYABBANUL WATHON",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 4,
    "status_retensi": 1,
    "keterangan": 1,
    "created_at": "1 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "no_arsip": "101.4",
    "nama_arsip": "proposal Workshop for PBMT",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 0,
    "status_akses": 0,
    "status_retensi": 1,
    "keterangan": 1,
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "no_arsip": "123.10",
    "nama_arsip": "Proposal INHOUSE TRAINING for BMT TAMZIS BINA UTAMA",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 2,
    "status_retensi": 0,
    "keterangan": 1,
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "no_arsip": "206.5",
    "nama_arsip": "KUITANSI PEMBUATAN AKUN SOSMED LAZ MKU",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 2,
    "status_retensi": 0,
    "keterangan": 1,
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
];

final List<Map<String, dynamic>> listArsipAktif = [
  //key=String, value=dynamic
  {
    "no_arsip": "006.1.13",
    "nama_arsip": "proposal penawaran eduarsip for SEKOLAH VOKASI IPB",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 3,
    "status_retensi": 1,
    "keterangan": 1,
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "no_arsip": "006.1.12",
    "nama_arsip": "Proposal penawaran eduarsip for STAIA SYABBANUL WATHON",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 4,
    "status_retensi": 1,
    "keterangan": 1,
    "created_at": "1 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "no_arsip": "101.4",
    "nama_arsip": "Proposal Workshop for PBMT",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 0,
    "status_akses": 0,
    "status_retensi": 1,
    "keterangan": 1,
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
];

final List<Map<String, dynamic>> listArsipInaktif = [
  //key=String, value=dynamic
  {
    "no_arsip": "157.19",
    "nama_arsip": "MoU KSPPS BMT Bina Ummah",
    "divisi": "Management",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 2,
    "status_retensi": 0,
    "keterangan": 1,
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "no_arsip": "123.10",
    "nama_arsip": "Proposal INHOUSE TRAINING for BMT TAMZIS BINA UTAMA",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 2,
    "status_retensi": 0,
    "keterangan": 1,
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
  {
    "no_arsip": "206.5",
    "nama_arsip": "KUITANSI PEMBUATAN AKUN SOSMED LAZ MKU",
    "divisi": "IT",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "status_peminjaman": 1,
    "status_akses": 2,
    "status_retensi": 0,
    "keterangan": 1,
    "created_at": "4 Desember 2021",
    "created_by": "Ridar Gustia"
  },
];

final List<Map<String, dynamic>> listRak = [
  //key=String, value=dynamic
  {
    "nama_rak": "1",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_rak": "2",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "22 Desember 2021",
    "created_by": "Ridar"
  },
  {
    "nama_rak": "3",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Emira"
  },
  {
    "nama_rak": "4",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "15 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_rak": "5",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "12 Desember 2021",
    "created_by": "Yunita"
  },
];

final List<Map<String, dynamic>> listBaris = [
  //key=String, value=dynamic
  {
    "nama_baris": "1",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_baris": "2",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_baris": "3",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_baris": "4",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_baris": "5",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
];

final List<Map<String, dynamic>> listBox = [
  //key=String, value=dynamic
  {
    "nama_box": "1",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_box": "2",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_box": "3",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_box": "4",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_box": "5",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_box": "6",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_box": "7",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_box": "8",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
];

final List<Map<String, dynamic>> listMap = [
  //key=String, value=dynamic
  {
    "nama_map": "1",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_map": "2",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_map": "3",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_map": "4",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_map": "5",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_map": "6",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_map": "7",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_map": "8",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
];

final List<Map<String, dynamic>> listLokasi = [
  //key=String, value=dynamic
  {
    "nama_lokasi": "R. Arsip",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
  {
    "nama_lokasi": "1",
    "cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2021",
    "created_by": "Yunita"
  },
];

final List<Map<String, dynamic>> listInstansi = [
  //key=String, value=dynamic
  {
    "nama_instansi": "EduArsip",
    "alamat": "Gamping, Sleman, Yogyakarta",
    "no_telpon": "081262215939",
    "masa_aktif": "23 Februari 2090",
    "is_active": 1,
    "created_at": "21 Desember 2019",
    "created_by": "Yunita"
  },
  {
    "nama_instansi": "KSPPS BMT Bina Ummah",
    "alamat": "Godean, Sleman, Yogyakarta",
    "no_telpon": "081262215939",
    "masa_aktif": "23 Juli 2029",
    "is_active": 1,
    "created_at": "21 Desember 2019",
    "created_by": "Yunita"
  },
  {
    "nama_instansi": "BMT Artha Amanah Sanden",
    "alamat": "Sanden, Bantul, Yogyakarta",
    "no_telpon": "081262215939",
    "masa_aktif": "23 November 2025",
    "is_active": 1,
    "created_at": "21 Desember 2019",
    "created_by": "Yunita"
  },
  {
    "nama_instansi": "KSPPS BHAPEDES",
    "alamat": "Kangean, Jawa Timur",
    "no_telpon": "081262215939",
    "masa_aktif": "21 Maret 2023",
    "is_active": 1,
    "created_at": "21 Desember 2019",
    "created_by": "Yunita"
  },
];

final List<Map<String, dynamic>> listCabang = [
  //key=String, value=dynamic
  {
    "nama_cabang": "Yogyakarta",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2019",
    "created_by": "Yunita"
  },
  {
    "nama_cabang": "Semarang",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2019",
    "created_by": "Yunita"
  },
  {
    "nama_cabang": "Bantul",
    "instansi": "EduArsip",
    "created_at": "21 Desember 2019",
    "created_by": "Yunita"
  },
];

List<String> images = [
  'assets/images/carousel_banner1.jpg',
  'assets/images/carousel_banner2.jpg',
  'assets/images/carousel_banner3.jpg',
  'assets/images/carousel_banner4.jpg',
  'assets/images/carousel_banner5.jpg',
];

//Checkbox jenis arsip
List<S2Choice<String>> jenisArsip = [
  S2Choice<String>(value: 'mul', title: 'Multy'),
  S2Choice<String>(value: 'tex', title: 'Text (file)'),
  S2Choice<String>(value: 'gam', title: 'Gambar'),
  S2Choice<String>(value: 'vid', title: 'Video'),
  S2Choice<String>(value: 'aud', title: 'Audio'),
];
List<String>? selected_jenisArsip = [];

//Radio button status akses file
String? selected_statusAksesFile;
List<S2Choice<String>> statusAksesFile = [
  S2Choice<String>(value: 'divisi', title: 'Level Divisi'),
  S2Choice<String>(value: 'cabang', title: 'Level Cabang'),
  S2Choice<String>(value: 'instansi', title: 'Level Instansi'),
  S2Choice<String>(value: 'Privat', title: 'Privat'),
];

//Radio button keterangan
String? selected_keterangan;
List<S2Choice<String>> keterangan = [
  S2Choice<String>(value: '1', title: 'Permanen'),
  S2Choice<String>(value: '2', title: 'Musnah'),
];
