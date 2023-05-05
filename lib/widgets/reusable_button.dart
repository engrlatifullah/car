import 'package:flutter/material.dart';

import '../color_pallet.dart';
class ReusableButton extends StatelessWidget {
  final String ? title;
  final VoidCallback ? handler;
  const ReusableButton({
    Key? key, this.title, this.handler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handler,
      child: Container(
        height: 50,
        width: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorPallet.greenColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child:  Text(
          title!,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600,color: ColorPallet.whiteColor),
        ),
      ),
    );
  }
}