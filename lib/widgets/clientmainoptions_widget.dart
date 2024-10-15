import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/screens/client/history_screen.dart';
import 'package:waypay/screens/client/paymentplan_screen.dart';
import 'package:waypay/screens/client/qna_screen.dart';
import 'package:waypay/widgets/mainoptionselement_widget.dart';

class ClientMainOptions extends StatelessWidget {
  const ClientMainOptions({super.key});

  @override
  Widget build(BuildContext context) {
    double availableWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MainOptionsElement(
            height: 96,
            width: availableWidth,
            title: "График платежей",
            imagelink: "assets/graph.png",
            func: () {
              Get.to(PaymentPlanScreen());
            },
          ),
          const SizedBox(
            height: 14,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainOptionsElement(
                height: 110,
                width: (availableWidth - 44) / 2 * 1.15,
                title: "Ваша история",
                imagelink: "assets/history.png",
                func: () {
                  Get.to(const HistoryScreen(historyInstallments: [],));
                },
              ),
              const SizedBox(
                width: 12,
              ),
              MainOptionsElement(
                height: 129,
                width: (availableWidth - 44) / 2 * 0.85,
                imagelink: "assets/question_answer.png",
                title: "Вопрос-ответ",
                func: () {
                  Get.to(const QnAScreen());
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
