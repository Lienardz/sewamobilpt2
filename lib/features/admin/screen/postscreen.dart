import 'package:flutter/material.dart';
import 'package:sewa_mobils/features/admin/screen/addcar.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({Key? key}) : super(key: key);

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  void navigateToAddCars() {
    Navigator.pushNamed(context, AddCar.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Products'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: navigateToAddCars,
        tooltip: 'Add Cars',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
