import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/models/installment_model.dart';
import 'package:waypay/widgets/infocard_widget.dart';

class InstallmentInfoScreen extends StatelessWidget {
  final Installment installment;
  const InstallmentInfoScreen(this.installment, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(114),
        child: SizedBox(
          height: 114,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Image.asset(
                    "assets/waypay_icon.png",
                    width: 104,
                    height: 104,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 45,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          bottom: 16,
        ),
        child: ListView(
          children: [
            InfoCard(
              height: 147,
              isAlive: installment.isAlive,
              children: [],
            ),
            Text("1 день"),
            Text("до следующего платежа"),
            const SizedBox(height: 23),
            if(!installment.isAlive) Text("Платеж просрочен"),
            if(!installment.isAlive) Text("Погасите платеж в срочном порядке"),
            const SizedBox(height: 23),
            
            InfoCard(
              height: 200,
              isAlive: installment.isAlive,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
