import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:waypay/models/installment_model.dart';

class CarouselElement extends StatelessWidget {
  final Installment installment;
  final double height;
  const CarouselElement(this.installment, {this.height = 100, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Container(
          height: height,
          padding: EdgeInsets.all(10),
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(
                installment.isAlive ? "assets/installment_blue.png" : "assets/installment_red.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Рассрочка №${installment.id}"),
              Text("от ${DateFormat("d.M.y").format(installment.from)}"),
              const Text("Активная рассрочка"),
              const Spacer(),
              Text(installment.amount.toStringAsFixed(2)),
              if(installment.isAlive) Text("погасите платеж до:\n${DateFormat("d.M.y").format(installment.till)}"),
              if(!installment.isAlive) const Text("ПЛАТЕЖ ПРОСРОЧЕН"),
              if(!installment.isAlive) const Text("Погасите платеж в срочном порядке"),
            ],
          ),
        ),
      ),
    );
  }
}
