import 'package:flutter/material.dart';
import 'package:sewa_mobils/features/account/widget/accountsbutton.dart';

class TopButton extends StatefulWidget {
  const TopButton({Key? key}) : super(key: key);

  @override
  State<TopButton> createState() => _TopButtonState();
}

class _TopButtonState extends State<TopButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              text: "Your Carts",
              onTap: () {},
            ),
            AccountButton(
              text: "Admin",
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(
              text: "Logout",
              onTap: () {},
            ),
            AccountButton(
              text: "Wish a rent",
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
