import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../color_pallet.dart';
import '../widgets/reusable_textfield.dart';
import 'dart:core';

class SellCar extends StatefulWidget {
  const SellCar({Key? key}) : super(key: key);

  @override
  State<SellCar> createState() => _SellCarState();
}

class _SellCarState extends State<SellCar> {
  TextEditingController dateController = TextEditingController();

  pickedDate() async {
    var selectDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then((value) {
      setState(() {
        dateController.text = DateFormat.yMd().format(value!) ;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "New Sales Order\n S1001",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Car",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(
                hintText: "2000",
              ),

              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Payment Method",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  ClipOval(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration:
                          const BoxDecoration(color: ColorPallet.greyColor),
                      child: const Text(
                        "Cash",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration:
                          const BoxDecoration(color: ColorPallet.greyColor),
                      child: const Text(
                        "Installment",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Incase of Installments",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Total",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(
                hintText: '10,000',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Down Payment",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(
                hintText: '2,000',
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Down Payment",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "8,000",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Number of months",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
             const ReusableTextField(
               hintText: '12',
             ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "interest rate",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(
                hintText: '20%',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Date of installment",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(
                hintText: 'each 30 days',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Remainder installment",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(
                hintText: '4 days',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Down Payment",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(
                hintText: '2,000',
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Papers renew date",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: (){
                  pickedDate();
                },
                child:  ReusableTextField(
                  enabled: false,
                  controller: dateController,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Remainder of papers",
                style:
                TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(
                hintText: '15 days before',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
