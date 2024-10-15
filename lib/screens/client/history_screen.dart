import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/models/installment_model.dart';
import 'package:waypay/widgets/infocard_widget.dart';

class HistoryScreen extends StatelessWidget {
  final List<Installment> historyInstallments;
  const HistoryScreen({required this.historyInstallments, super.key});

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
        title: const Text("История"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: historyInstallments.length,
          itemBuilder: (context, index) {
            var item = historyInstallments[index];
            return InfoCard(
              height: 100,
              isAlive: item.isAlive,
              isGrey: item.isFinished,
              children: [
                Text(item.id),
              ],
            );
          },
        ),
      ),
    );
  }
}
