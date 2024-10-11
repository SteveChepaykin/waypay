import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/screens/worker/blacklist_screen.dart';
import 'package:waypay/screens/worker/calculator_screen.dart';
import 'package:waypay/screens/worker/contracts_screen.dart';
import 'package:waypay/screens/worker/newpayment_screen.dart';
import 'package:waypay/widgets/mainoptionselement_widget.dart';

class WorkerMainOptions extends StatelessWidget {
  const WorkerMainOptions({super.key});

  @override
  Widget build(BuildContext context) {
    double availableWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              MainOptionsElement(
                height: 111,
                width: (availableWidth - 44) / 2 * 1.15 ,
                title: "Калькулятор",
                imagelink: "assets/calculator.png",
                func: () {
                  Get.to(const CalculatorScreen());
                },
              ),
              const SizedBox(
                width: 12,
              ),
              MainOptionsElement(
                height: 111,
                width: (availableWidth-44) / 2 * 0.85,
                title: "Договоры",
                imagelink: "assets/contracts.png",
                func: () {
                  Get.to(const ContractsScreen());
                },
              )
            ],
          ),
          const SizedBox(height: 14),
          MainOptionsElement(
            height: 82,
            width: availableWidth,
            title: "Новый платёж",
            imagelink: "assets/new_payment.png",
            func: () {
              Get.to(const NewPaymentScreen());
            },
          ),
          const SizedBox(height: 14),
          MainOptionsElement(
            height: 96,
            width: (availableWidth-44) / 2 * 1.15,
            title: "Чёрный список",
            color: const Color(0xFF454545),
            func: () {
              Get.to(const BlackListScreen());
            },
          )
        ],
      ),
    );
  }
}
