import 'package:flutter/material.dart';
import 'package:sewa_mobils/features/account/widget/singleproduct.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List list = [
    'https://www.nicepng.com/png/detail/158-1580762_2018-bmw-model-images-0006-2016-z4-bmw.png'
        'https://www.nicepng.com/png/detail/158-1580762_2018-bmw-model-images-0006-2016-z4-bmw.png'
        'https://www.nicepng.com/png/detail/158-1580762_2018-bmw-model-images-0006-2016-z4-bmw.png'
        'https://www.nicepng.com/png/detail/158-1580762_2018-bmw-model-images-0006-2016-z4-bmw.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                "Your Carts",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: const Text(
                "See All",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: ((context, index) {
              return SingleProduct(
                image: list[index],
              );
            }),
          ),
        ),
      ],
    );
  }
}
