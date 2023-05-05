import 'package:car/color_pallet.dart';
import 'package:car/screens/sell_car.dart';
import 'package:flutter/material.dart';

import 'car_type_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> title = [
    "Car Types",
    "Cars",
    "Sales",
    "Expenses",
    "Reports",
    "Due to installments",
    "Buyers",
    "Accounting",
  ];

  final List<String> images = [
    "assets/type.jpg",
    "assets/car.jpg",
    "assets/sale.jpg",
    "assets/expanses.jpg",
    "assets/report.jpg",
    "assets/installment.jpg",
    "assets/buyer.jpg",
    "assets/accounting.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: title.length,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: (){
                if (index == 0){
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return const CarType();
                  },),);
                }
                else if (index == 2){
                  Navigator.push(context, MaterialPageRoute(builder: (_){
                    return const SellCar();
                  },),);
                }
              },
              child: Container(
                height: 125,
                width: 125,
                alignment: Alignment.bottomCenter,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(images[index],),),
                ),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20),),
                    color: ColorPallet.blackColor.withOpacity(0.5)
                  ),
                  child: Text(
                    title[index],textAlign: TextAlign.center,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: ColorPallet.whiteColor),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
