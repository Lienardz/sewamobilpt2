import 'package:flutter/material.dart';
import 'package:sewa_mobils/constants/global_variables.dart';
import 'package:sewa_mobils/features/account/widget/belowappsbar.dart';
import 'package:sewa_mobils/features/account/widget/itsorder.dart';
import 'package:sewa_mobils/features/account/widget/topbuttons.dart';

class ScreenAccount extends StatelessWidget {
  const ScreenAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/sewamobils.png',
                  width: 120,
                  height: 135,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: const [
          BelowAppsBar(),
          SizedBox(
            height: 10,
          ),
          TopButton(),
          SizedBox(
            height: 20,
          ),
          Orders(),
        ],
      ),
    );
  }
}
