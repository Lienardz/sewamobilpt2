import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sewa_mobils/constants/global_variables.dart';
import 'package:sewa_mobils/provider/userprovider.dart';

class BelowAppsBar extends StatelessWidget {
  const BelowAppsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).users;
    return Container(
      decoration: const BoxDecoration(
        gradient: GlobalVariables.appBarGradient,
      ),
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hello, ',
              style: const TextStyle(
                fontSize: 22,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: user.name,
                  style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
