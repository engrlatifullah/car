import 'package:car/color_pallet.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../widgets/reusable_textformfield.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(
                    child:  Text(
                      "Create Account",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800,color: ColorPallet.blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //Name
                  const Text(
                    "Name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: ColorPallet.blackColor),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Name TextField
                  ReusableTextForm(
                    hintText: "Name",
                    prefixIcon: Icons.person,
                    validator: (v){
                      if(v == null || v.isEmpty){
                        return 'This field is required';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //email
                  const  Text(
                    "E-mail",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: ColorPallet.blackColor),
                  ),
                  // Email
                  const SizedBox(
                    height: 10,
                  ),
                  // Email
                  ReusableTextForm(
                    hintText: "Email",
                    prefixIcon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                    validator: (v){
                      if(v == null || v.isEmpty){
                        return 'This field is required';
                      }
                    },
                  ),
                  const  SizedBox(
                    height: 20,
                  ),
                  //password
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: ColorPallet.blackColor),
                  ),
                  // password TextField
                  const SizedBox(
                    height: 10,
                  ),
                  // password
                  ReusableTextForm(
                    hintText: "Password",
                    prefixIcon: Icons.lock,
                    suffixIcon: const Icon(Icons.visibility,color: ColorPallet.blackColor,),
                    keyboardType: TextInputType.emailAddress,
                    validator: (v){
                      if(v == null || v.isEmpty){
                        return 'This field is required';
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  //Sign Up
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: ColorPallet.greenColor),
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                          Fluttertoast.showToast(
                            msg: "Account Created",
                            //backgroundColor: Colors.transparent,
                            textColor: Colors.white,
                          );
                        }
                        else {
                          Fluttertoast.showToast(
                            msg: "All fields are required",
                            //backgroundColor: Colors.transparent,
                            textColor: ColorPallet.blackColor,
                          );
                        }
                      },
                      child: const Text("Sign Up",style: TextStyle(fontSize: 18),),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?",style: TextStyle(color: ColorPallet.blackColor),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return const LogInScreen();
                        }));
                      }, child: const Text("Login",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                    ],),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

