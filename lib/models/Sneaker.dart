import 'package:flutter/material.dart';

class Size {
  final int number;
  final bool isAvailable;

  Size({
    @required this.number,
    @required this.isAvailable,
  });
}

class Sneaker {
  final int id;
  final String title;
  final String price;
  final String backImage;
  final String thumbnail;
  final bool isPromoted;
  final bool isEnded;
  final List<String> images;
  final List<Size> sizes;

  Sneaker({
    @required this.id,
    @required this.images,
    @required this.thumbnail,
    this.isPromoted = false,
    this.isEnded = false,
    @required this.title,
    @required this.price,
    @required this.backImage,
    @required this.sizes,
  });
}

List<Sneaker> demoSneakers = [
  Sneaker(
    id: 1,
    title: 'Nike Homem Aranha',
    price: '370.00',
    isEnded: false,
    isPromoted: false,
    backImage: "assets/images/nike_homem_aranha/background.png",
    thumbnail: "assets/images/nike_homem_aranha/thumbnail.png",
    images: [
      "assets/images/nike_homem_aranha/sneaker_one.png",
      "assets/images/nike_homem_aranha/sneaker_two.png",
      "assets/images/nike_homem_aranha/sneaker_three.png",
    ],
    sizes: [
      Size(number: 37, isAvailable: false),
      Size(number: 38, isAvailable: true),
      Size(number: 39, isAvailable: true),
      Size(number: 40, isAvailable: true),
      Size(number: 41, isAvailable: false),
      Size(number: 42, isAvailable: true),
      Size(number: 43, isAvailable: true),
      Size(number: 44, isAvailable: true),
    ],
  ),
  Sneaker(
    id: 2,
    title: 'Nike Air Max 520',
    price: '190.00',
    isEnded: false,
    isPromoted: true,
    backImage: "assets/images/nike_air_max_520/background.png",
    thumbnail: "assets/images/nike_air_max_520/thumbnail.png",
    images: [
      "assets/images/nike_air_max_520/sneaker_one.png",
      "assets/images/nike_air_max_520/sneaker_two.png",
      "assets/images/nike_air_max_520/sneaker_three.png",
    ],
    sizes: [
      Size(number: 37, isAvailable: true),
      Size(number: 38, isAvailable: true),
      Size(number: 39, isAvailable: true),
      Size(number: 40, isAvailable: false),
      Size(number: 41, isAvailable: true),
      Size(number: 42, isAvailable: true),
      Size(number: 43, isAvailable: false),
      Size(number: 44, isAvailable: true),
    ],
  ),
  Sneaker(
    id: 3,
    title: 'Nike Caminhada',
    price: '230.00',
    isEnded: false,
    isPromoted: false,
    backImage: "assets/images/nike_caminhada/background.png",
    thumbnail: "assets/images/nike_caminhada/thumbnail.png",
    images: [
      "assets/images/nike_caminhada/sneaker_one.png",
      "assets/images/nike_caminhada/sneaker_two.png",
      "assets/images/nike_caminhada/sneaker_three.png",
    ],
    sizes: [
      Size(number: 37, isAvailable: true),
      Size(number: 38, isAvailable: false),
      Size(number: 39, isAvailable: true),
      Size(number: 40, isAvailable: false),
      Size(number: 41, isAvailable: false),
      Size(number: 42, isAvailable: true),
      Size(number: 43, isAvailable: false),
      Size(number: 44, isAvailable: true),
    ],
  ),
  Sneaker(
    id: 4,
    title: 'Nike Flywire Force 1',
    price: '340.00',
    isEnded: true,
    isPromoted: false,
    backImage: "assets/images/nike_flywire_force_1/background.png",
    thumbnail: "assets/images/nike_flywire_force_1/thumbnail.png",
    images: [
      "assets/images/nike_flywire_force_1/sneaker_one.png",
      "assets/images/nike_flywire_force_1/sneaker_two.png",
      "assets/images/nike_flywire_force_1/sneaker_three.png",
    ],
    sizes: [
      Size(number: 37, isAvailable: true),
      Size(number: 38, isAvailable: true),
      Size(number: 39, isAvailable: true),
      Size(number: 40, isAvailable: false),
      Size(number: 41, isAvailable: false),
      Size(number: 42, isAvailable: true),
      Size(number: 43, isAvailable: true),
      Size(number: 44, isAvailable: true),
    ],
  ),
  Sneaker(
    id: 5,
    title: 'Nike Air Max Aquaman',
    price: '190.00',
    isEnded: false,
    isPromoted: true,
    backImage: "assets/images/nike_air_max_aquaman/background.png",
    thumbnail: "assets/images/nike_air_max_aquaman/thumbnail.png",
    images: [
      "assets/images/nike_air_max_aquaman/sneaker_one.png",
      "assets/images/nike_air_max_aquaman/sneaker_two.png",
      "assets/images/nike_air_max_aquaman/sneaker_three.png",
    ],
    sizes: [
      Size(number: 37, isAvailable: true),
      Size(number: 38, isAvailable: true),
      Size(number: 39, isAvailable: true),
      Size(number: 40, isAvailable: true),
      Size(number: 41, isAvailable: true),
      Size(number: 42, isAvailable: true),
      Size(number: 43, isAvailable: true),
      Size(number: 44, isAvailable: true),
    ],
  ),
  Sneaker(
    id: 6,
    title: 'Nike caminhada matinal',
    price: '150.00',
    isEnded: false,
    isPromoted: true,
    backImage: "assets/images/nike_caminhada_matinal/background.png",
    thumbnail: "assets/images/nike_caminhada_matinal/thumbnail.png",
    images: [
      "assets/images/nike_caminhada_matinal/sneaker_one.png",
      "assets/images/nike_caminhada_matinal/sneaker_two.png",
      "assets/images/nike_caminhada_matinal/sneaker_three.png",
    ],
    sizes: [
      Size(number: 37, isAvailable: true),
      Size(number: 38, isAvailable: true),
      Size(number: 39, isAvailable: true),
      Size(number: 40, isAvailable: true),
      Size(number: 41, isAvailable: true),
      Size(number: 42, isAvailable: true),
      Size(number: 43, isAvailable: true),
      Size(number: 44, isAvailable: true),
    ],
  ),
];
