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
