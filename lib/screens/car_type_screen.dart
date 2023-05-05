import 'dart:core';

import 'package:car/color_pallet.dart';
import 'package:flutter/material.dart';

import '../widgets/reusable_button.dart';
import '../widgets/reusable_textfield.dart';
import 'add_new_car.dart';

class CarType extends StatefulWidget {
  const CarType({Key? key}) : super(key: key);

  @override
  State<CarType> createState() => _CarTypeState();
}

class _CarTypeState extends State<CarType> {
  final List<String> title = [
    "Add",
    "Delete",
    "Save",
    "List",
  ];

  final List<IconData> icons = [
    Icons.add_circle,
    Icons.delete,
    Icons.save,
    Icons.list_alt_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: ColorPallet.purpleColor,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/sale.jpg"),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(top: 220),
              decoration: const BoxDecoration(
                color: ColorPallet.whiteColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "Car Type",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReusableTextField(),
                  const SizedBox(
                    height: 25,
                  ),
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: (){
                          if (index == 0){
                            Navigator.push(context, MaterialPageRoute(builder: (_){
                              return const AddNewCar();
                            },),);
                          }
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: ColorPallet.greenColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                title[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18,color: ColorPallet.whiteColor),
                              ),
                              const SizedBox(height: 20,),
                              Icon(
                                icons[index],
                                size: 40,
                                color: ColorPallet.whiteColor,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
