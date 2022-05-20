import 'package:flutter/material.dart';

class KueModel {
  final int id;
  final String title, deskrpsi;
  final int price;
  final List<String> images;

  KueModel({
    required this.id,
    required this.title,
    required this.deskrpsi,
    required this.price,
    required this.images,
  });
}

List<KueModel> kueitems = [
  KueModel(
    id: 1,
    title: 'Bakpao Daging',
    deskrpsi: bakpaodes,
    price: 1500,
    images: ['asset/images/bakpao1.jpg'],
  ),
  KueModel(
    id: 2,
    title: 'Bika Ambon',
    deskrpsi: bikades,
    price: 1500,
    images: ['asset/images/bika.jpg'],
  ),
  KueModel(
      id: 3,
      title: 'Kue Cucur',
      deskrpsi: cucurdes,
      price: 1500,
      images: ['asset/images/kue cucur.jpg']),
  KueModel(
      id: 4,
      title: 'Serabi ',
      deskrpsi: serabides,
      price: 1500,
      images: ['asset/images/serabi.jpg']),
  KueModel(
      id: 5,
      title: 'Putu ',
      deskrpsi: putudes,
      price: 1000,
      images: ['asset/images/putu4.png']),
];

const String bakpaodes =
    "Bakpao adalah makanan yang berasal dari negeri China, berbahan dasar tepung terigu yang diberi ragi sehingga mengembang, kemudian diberi aneka isian dan dikukus. Bak berarti daging, sedangkan pao sendiri berarti bungkusan. Jadi, bakpao berarti bungkusan-daging.";
const String bikades =
    "Bika ambon adalah penganan khas Medan, Indonesia. Terbuat dari bahan-bahan seperti tepung tapioka, telur, gula, dan santan. Kini Bika Ambon dijual bukan saja rasa asli tetapi sudah ada varian rasa pandan, durian, keju, dan cokelat";

const String cucurdes =
    "Kue Cucur atau Cucur merupakan jajanan khas suku Betawi yang berasal dari wilayah barat pulau Jawa. Kue ini terbuat dari tepung beras dan gula jawa atau gula aren yang digoreng. Kue Cucur memiliki bentuk yang cenderung tebal menggembung seperti gunung di bagian tengah dan tipis di bagian pinggirannya.";
const String serabides =
    "Serabi merupakan jajanan pasar tradisional yang berasal dari Indonesia. Serabi berasal dari bahasa Jawa yang berinduk dasar dari kata rabi yang dalam bahasa Jawa berarti kawin. Mungkin karena proses pembuatannya yang cukup sebentar dan tidak terlalu lama";
const String putudes =
    "Kue putu adalah jenis kudapan tradisional Indonesia berupa kue dengan isian gula jawa, dibalut dengan parutan kelapa, dan tepung beras butiran kasar. Kue ini di kukus dengan diletakkan di dalam tabung bambu yang sedikit dipadatkan. Kue ini dijual pada saat matahari terbenam sampai larut malam";
