import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Promo',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Image.network(
          'https://cdn.motor1.com/images/mgl/wloxGo/s1/toyota-yaris-gr-sport-gt7-edition.jpg',
          height: 205,
          fit: BoxFit.fitHeight,
        ),
        Container(
          padding: const EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            '\Rp250.000',
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Toyota Yaris',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                'https://www.motorbeam.com/wp-content/uploads/Toyota-Fortuner-GR-Sport-1200x900.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://www.motorbeam.com/wp-content/uploads/Toyota-Fortuner-GR-Sport-1200x900.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://www.motorbeam.com/wp-content/uploads/Toyota-Fortuner-GR-Sport-1200x900.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.network(
                'https://www.motorbeam.com/wp-content/uploads/Toyota-Fortuner-GR-Sport-1200x900.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ).copyWith(left: 15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all promo',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
