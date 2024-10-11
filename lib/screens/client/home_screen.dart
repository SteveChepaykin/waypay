import 'package:flutter/material.dart';
import 'package:waypay/models/installment_model.dart';
import 'package:waypay/widgets/currentinstallments_widget.dart';
import 'package:waypay/widgets/clientmainoptions_widget.dart';
import 'package:waypay/widgets/supportbutton_widget.dart';

class ClientHomeScreen extends StatelessWidget {
  const ClientHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Мои рассрочки",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              size: 40,
              color: Color(0xFF454545),
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          CurrentInstallments(
            installments: [
              Installment(
                "1234567890",
                {
                  "datefrom": DateTime(2024, 1, 24).toIso8601String(),
                  "datetill": DateTime(2025, 1, 23).toIso8601String(),
                  "amount": 1000,
                },
              ),
              Installment(
                "0987654321",
                {
                  "datefrom": DateTime(2024, 9, 9).toIso8601String(),
                  "datetill": DateTime(2024, 10, 4).toIso8601String(),
                  "amount": 1000,
                },
              ),
            ],
          ),
          const SizedBox(height: 63),
          const ClientMainOptions(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const SupportButton(),
    );
  }
}
