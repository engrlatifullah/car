import 'package:car/screens/auth_screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../color_pallet.dart';
import '../../widgets/reusable_textformfield.dart';
import '../home_screen.dart';
import 'forgot_password_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool chkBtnbValue = false;
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
                      "Login",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800,color: ColorPallet.blackColor),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //email
                  const  Text(
                    "E-mail",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: ColorPallet.blackColor),
                  ),
                  const  SizedBox(
                    height: 10,
                  ),
                  // Email TextField
                  ReusableTextForm(
                    hintText: "Your Email",
                    prefixIcon: Icons.email_outlined,
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
                  //password
                 const Text(
                    "Password",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: ColorPallet.blackColor),
                  ),
                 const SizedBox(
                    height: 10,
                  ),
                  // password TextField
                  ReusableTextForm(
                    hintText: "Password",
                    obscureText: true,
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: const Icon(Icons.visibility,color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                    validator: (v){
                      if(v == null || v.isEmpty){
                        return 'This field is required';
                      }
                    },
                  ),
                 const SizedBox(height: 20,),
                  //remember me
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Checkbox(
                          fillColor: MaterialStateProperty.all(ColorPallet.greenColor),checkColor: ColorPallet.whiteColor,
                          value: chkBtnbValue,
                          onChanged: (value) {
                            setState(() {
                              chkBtnbValue = value!;
                            });
                          },
                        ),
                      ),
                    const  SizedBox(width: 10,),
                    const  Text(
                        "Remember me",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                            color: ColorPallet.blackColor,
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return const ForgotPasswordScreen();
                          }));
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
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
                            msg: "Login successfully",
                            //backgroundColor: Colors.transparent,
                            textColor: Colors.white,
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (_){
                            return const HomeScreen();
                          },),);
                        }
                        else {
                          Fluttertoast.showToast(
                            msg: "All fields are required",
                            //backgroundColor: Colors.transparent,
                            textColor: Colors.white,
                          );
                        }
                      },
                      child: const Text("Login"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account ?",style: TextStyle(color: ColorPallet.blackColor),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return const SignUpScreen();
                      }));
                    }, child: const Text("Sign up",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                  ],),
                  const SizedBox(
                    height: 40,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
