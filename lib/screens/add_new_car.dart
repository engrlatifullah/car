import 'package:car/color_pallet.dart';
import 'package:flutter/material.dart';

import '../widgets/reusable_button.dart';
import '../widgets/reusable_textfield.dart';

class AddNewCar extends StatelessWidget {
  const AddNewCar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "ID: 1002",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Car Name",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Car Type",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(suffixIcon: Icon(
                Icons.warning,
                color: ColorPallet.redColor,
              ),),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Car Number",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Car Model",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Buyer Name",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
             const ReusableTextField(
                suffixIcon: Icon(
                  Icons.warning,
                  color: ColorPallet.redColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recommendation",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  ClipOval(
                    child: Container(
                      height: 60,
                      width: 60,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                           color: ColorPallet.greyColor),
                      child: const Text(
                        "Yes",
                        style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Container(
                      height: 60,
                      width: 60,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: ColorPallet.greyColor),
                      child: const Text(
                        "No",
                        style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Chassis No",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
             const ReusableTextField(
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Motor No",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(),

              const SizedBox(
                height: 20,
              ),
              const Text(
                "Car color",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(
                suffixIcon: Icon(
                  Icons.warning,
                  color: ColorPallet.redColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Model year",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Fuel Type",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  ClipOval(
                    child: Container(
                      height: 60,
                      width: 60,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: ColorPallet.greyColor),
                      child: const Text(
                        "Gasoline",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Container(
                      height: 60,
                      width: 60,
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: ColorPallet.greyColor),
                      child: const Text(
                        "Gaz",
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Car Weight",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
             const ReusableTextField(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Car Load",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Qty",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReusableTextField(),
              const SizedBox(
                height: 20,
              ),
             const SizedBox(height: 20,),
              Row(
                children: const [
                  Expanded(
                    child: Text(
                      "Car Papers",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Add Attachments(images,pdf,excel)",textAlign: TextAlign.center,
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w400,decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
             const SizedBox(height: 20,),
             const Text(
               "Car Item Status",
               style:
               TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
             ),
             const SizedBox(height: 20,),
              // car item status
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: ColorPallet.greyColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:   [
                        CustomButton(title: "Item",handler: (){},),
                        CustomButton(title: "%",handler: (){},),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:   [
                        CustomButton(title: "Doors",handler: (){},),
                        CustomButton(title: "80%",handler: (){},),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:   [
                        CustomButton(title: "Tires",handler: (){},),
                        CustomButton(title: "34%",handler: (){},),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Text("Add",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,decoration: TextDecoration.underline),),

                  ],
                ),
              ),
             const SizedBox(height: 20,),
             const Text(
               "Price",
               style:
               TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
             ),
             const SizedBox(height: 10,),
              const ReusableTextField(),
              const SizedBox(height: 20,),
              const Text(
                "Cost",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 10,),
              const ReusableTextField(
                hintText: "200",
              ),
             const SizedBox(height: 30,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                  ReusableButton(title: 'Save',handler: (){},),
                  ReusableButton(title: 'Delete',handler: (){},),
               ],
             ),
             const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: ReusableButton(title: 'Add New',handler: (){},),
              ),
             const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String ? title;
  final VoidCallback ? handler;
  const CustomButton({
    Key? key, this.title, this.handler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handler,
      child: Container(
        height: 60,
        width: 100,
        decoration: BoxDecoration(
          color: ColorPallet.pinkColor,
          borderRadius: BorderRadius.circular(10)
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(5),
        child: Text(title!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: ColorPallet.whiteColor),),
      ),
    );
  }
}
