import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:sewa_mobils/commid/widgets/custom_button.dart';
import 'package:sewa_mobils/commid/widgets/custom_textfield.dart';
import 'package:sewa_mobils/features/auth/widgets/categories.dart';

import '../../../constants/global_variables.dart';

class AddCar extends StatefulWidget {
  static const String routeName = '/addcar';
  const AddCar({Key? key}) : super(key: key);

  @override
  State<AddCar> createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  final TextEditingController carNameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController durationController = TextEditingController();

  String category = 'Old Cars';
  @override
  void dispose() {
    super.dispose();
    carNameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    durationController.dispose();
  }

  List<String> Categories = ['Old Cars', 'New Cars', 'Expensive Cars'];

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
            title: const Text(
              'Add Cars',
              style: TextStyle(color: Colors.black),
            )),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(10),
                  dashPattern: const [10, 4],
                  strokeCap: StrokeCap.round,
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.folder_open, size: 40),
                        const SizedBox(height: 15),
                        Text(
                          'Select Cars',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  controller: carNameController,
                  hintText: 'Car Name',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: descriptionController,
                  hintText: 'Descriptions',
                  maxLines: 7,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: priceController,
                  hintText: 'Price',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: durationController,
                  hintText: 'Duration',
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButton(
                    value: category,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: Categories.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? newVal) {
                      setState(() {
                        category = newVal!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  text: 'Rent',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
