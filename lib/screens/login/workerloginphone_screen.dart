import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/screens/worker/home_screen.dart';
import 'package:waypay/widgets/customtextfield_widget.dart';
import 'package:waypay/widgets/specialbutton_widget.dart';

class WorkerLoginPhoneScreen extends StatelessWidget {
  WorkerLoginPhoneScreen({super.key});

  final TextEditingController numbercont = TextEditingController();
  final TextEditingController passwordcont = TextEditingController();

  bool validateForm() {
    bool res = true;
    String numt = numbercont.text;
    String pswt = passwordcont.text;
    if (numt.length != 12) res = false;
    if (pswt.length < 6 || pswt.length > 50) res = false;
    return res;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          bottom: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/waypay_icon.png",
              width: 200,
              height: 200,
            ),
            const Spacer(
              flex: 10,
            ),
            CustomTextField(
              controller: numbercont,
              label: "Номер телефона",
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextField(
              controller: passwordcont,
              label: "Пароль",
            ),
            const Spacer(
              flex: 10,
            ),
            SpecialButton(
              title: "Войти",
              function: () {
                bool validate = validateForm();
                //Some backend logic;
                if(validate) Get.to(() => const WorkerHomeScreen());
              },
            ),
            const Spacer(
              flex: 12,
            ),
          ],
        ),
      ),
    );
  }
}