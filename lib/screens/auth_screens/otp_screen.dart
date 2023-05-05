import 'package:car/color_pallet.dart';
import 'package:flutter/material.dart';

import '../../widgets/otp_text_field.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter 4 digit Code Send to the Email",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OtpTextField(
                    onChanged: (v) {
                      if (v.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v) {
                      if (v.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v) {
                      if (v.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                  OtpTextField(
                    onChanged: (v) {
                      if (v.length == 1) {
                        FocusScope.of(context).nextFocus();
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: ColorPallet.greenColor),
                  onPressed: () {
                  },
                  child: const Text("Verify"),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
