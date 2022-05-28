import 'package:flutter/material.dart';

class Content {
  final String image, title;
  final String type;
  final String desc;
  final Color bgColor;

  Content({
    required this.image,
    required this.title,
    required this.desc,
    required this.type,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

List<Content> demo_content = [
  Content(
    image: "assets/images/poto3.jpg",
    title: "Amalan Yang dicintai allah",
    type: 'Kenal Islam',
    desc: 'Menurut Guru saya ust fikri,Lalu amalan yang juga dicintai Allah adalah mengerjakan sholat tepat waktu, berbakti kepada orang tua, menjaga silaturahim, membaca Alquran, dan bersedekah. Semua amal itu dicintai Allah SWT. Kendati demikian yang terpenting bagi hamba adalah konsisten atau terus menerus dalam berbuat taat',
    bgColor: const Color(0xFFF4F5E2),
  ),
  Content(
      image: "assets/images/poto2.jpg",
      title: "Mendekatkan diri kepada allah",
      type: 'Kenal Islam',
      desc: 'Mendirikan Salat,Membaca AL-Quran,Selalu Menjadi Pribadi Yang Bersyukur,Ingat Kematian Dan Tidak Tergiur Dengan Dunia,Berzikir Dan Jalankan Ibadah Sunah,Sedekah Untuk Mendekatkan Diri kepada Allah Dan Mensucikan Diri.',
      bgColor: const Color(0xFFFF8EBCA)),
  Content(
    image: "assets/images/poto1.jpg",
    title: "Adab bersama al-qur'an",
    type: 'Kenal Islam',
    desc: 'Mengikhlaskan niat hanya karena Allah SWT,Menutup aurat dan berpenampilan baik.Menghadap kiblat,Tidak menyentuh mushaf Alquran kecuali dalam keadaan suci,Dalam keadaan bersih dan suci dari najis,Membersihkan mulut dengan menggosok gigi atau bersiwak.Dengan duduk,Mengawali membaca dengan taawudz.',
    bgColor: const Color(0xFFD6F99D),
  ),
  Content(
    image: "assets/images/poto4.jpg",
    title: "Adab memberi sedekah",
    type: 'Kenal Islam',
    desc: 'Adapun hal yang harus diperhatikan dalam bersedekah yaitu: 1. Niatilah yang tulus penuh keikhlasan dalam bersedakah, tanpa mengharapkan imbalan atau pujian apa pun dari orang yang menerima sedekah. 2. Lakukan sedekah itu menurut kadar kemampuan, tanpa memaksakan diri.',
    bgColor: const Color(0xFF9DE3F9),
  ),
  Content(
    image: "assets/images/poto6.jpeg",
    title: "Syarat sah haji dan penjelasannya",
    type: 'Fikih',
    desc: 'Haji adalah ziarah Islam tahunan ke Mekkah, kota suci umat Islam, dan kewajiban wajib bagi umat Islam yang harus dilakukan setidaknya sekali seumur hidup mereka oleh semua orang Muslim dewasa yang secara fisik dan finansial mampu melakukan perjalanan, dan dapat mendukung keluarga mereka selama ketidakhadiran mereka.',
    bgColor: const Color(0xFFF4F5E2),
  ),
  Content(
      image: "assets/images/poto7.jpg",
      title: "Perdalam hukum jihad",
      type: 'Fikih',
      desc: 'Jihad menurut syariat Islam adalah berjuang/usaha/ikhtiyar dengan sungguh-sungguh. Jihad dilaksanakan untuk menjalankan misi utama manusia yaitu menegakkan agama Allah atau menjaga agama tetap tegak, dengan cara-cara sesuai dengan garis perjuangan para Rasul dan Al-Quran. BUKAN TERORIS Ya!!',
      bgColor: const Color(0xFFFF8EBCA)),
  Content(
    image: "assets/images/poto8.png",
    title: "Hukim fiqih ibadah dan penjelasannya",
    type: 'Fikih',
    desc: 'adalah salah satu dari lima rukun Islam. Melakukan sholat lima kali sehari adalah hal yang wajib bagi setiap Muslim. Ibadah ini memberi kita kesempatan untuk berkomunikasi dengan Allah SWT, mengingat-Nya, menunjukkan rasa syukur kita kepada-Nya, dan dengan sujud menjadi saat yang paling dekat dengan-Nya.',
    bgColor: const Color(0xFFD6F99D),
  ),
  Content(
    image: "assets/images/poto9.jpeg",
    title: "Kenal dekat nabi Muhammad",
    type: 'Fikih',
    desc: 'Muhammad adalah seorang nabi dan rasul terakhir bagi umat Muslim. Muhammad memulai penyebaran ajaran Islam untuk seluruh umat manusia dan mewariskan pemerintahan tunggal Islam. Muhammad sama-sama menegakkan ajaran tauhid untuk mengesakan Allah sebagaimana yang dibawa nabi dan rasul sebelumnya.',
    bgColor: const Color(0xFF9DE3F9),
  ),
];
