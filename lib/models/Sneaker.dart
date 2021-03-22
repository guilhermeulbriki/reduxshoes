import 'package:flutter/material.dart';

class Sneaker {
  final int id;
  final String title, price, backImage, description;
  final List<String> images;

  Sneaker({
    @required this.id,
    @required this.images,
    @required this.title,
    @required this.description,
    @required this.price,
    @required this.backImage,
  });
}

List<Sneaker> demoSneakers = [
  Sneaker(
      id: 1,
      images: [
        "assets/images/sneaker/sneaker_one.png",
        "assets/images/sneaker/sneaker_two.png",
        "assets/images/sneaker/sneaker_three.png",
      ],
      title: 'Nike Air Max 520',
      price: '370.00',
      backImage: 'assets/images/back_sneaker_options.png',
      description:
          'Nada mais estiloso, nada tão confortável, nada tão comprovado—o Nike Air Max 90 permanece fiel às suas raízes.'),
];
