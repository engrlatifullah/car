import 'package:flutter/material.dart';
import '../color_pallet.dart';
class ReusableTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool obscureText;
  final bool enabled;
  final Widget? suffixIcon;

  const ReusableTextField({
    Key? key,
    this.controller,
    this.keyboardType, this.suffixIcon, this.hintText, this.enabled = true, this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          enabled: enabled,
          hintText: hintText,


          contentPadding: const EdgeInsets.only(left: 10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:  const BorderSide(color: ColorPallet.greenColor, width: 2),),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:  const BorderSide(color: ColorPallet.greenColor, width: 2),),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red, width: 2),),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.red, width: 2),),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: ColorPallet.greenColor, width: 2),),
        ),);
  }
}