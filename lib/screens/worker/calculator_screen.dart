import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/widgets/customtextfield_widget.dart';
import 'package:waypay/widgets/specialbutton_widget.dart';

class CalculatorScreen extends StatelessWidget {
  CalculatorScreen({super.key});

  final Map<String, TextEditingController> controllers = {
    "Сумма рассрочки, руб": TextEditingController(),
    "Кол-во месяцев": TextEditingController(),
    "Надбавка, %": TextEditingController(),
    "Первоначальный взнос": TextEditingController(),
    "Взнос округлять до, руб:": TextEditingController(),
    "Дата": TextEditingController(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 45,
          ),
        ),
        title: const Text("Калькулятор"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView(
          children: [
            const SizedBox(height: 14,),
            ...controllers.keys.map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: 14),
                child: CustomTextField(controller: controllers[e]!, label: e),
              ),
            ),
            SpecialButton(title: "Рассчитать", function: () {}),
            const SizedBox(height: 14,),
            Image.asset("assets/singlecalculator.png"),
          ],
        ),
      ),
    );
  }
}
