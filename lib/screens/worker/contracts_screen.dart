import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/models/contract_model.dart';
import 'package:waypay/models/user_model.dart';
import 'package:waypay/widgets/contractfiltertextfield_widget.dart';
import 'package:waypay/widgets/contractlistitem_widget.dart';

class ContractsScreen extends StatefulWidget {
  const ContractsScreen({super.key});

  @override
  State<ContractsScreen> createState() => _ContractsScreenState();
}

class _ContractsScreenState extends State<ContractsScreen> {
  TextEditingController filtercont = TextEditingController();

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
        title: const Text("Договоры"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ContractsFilterTextField(controller: filtercont),
            const SizedBox(height: 14),
            Expanded(
              child: ListView(
                children: [
                  ContractListItem(
                      contract: Contract(
                    "6796798",
                    {
                      "user": UserModel(
                        "878978789",
                        {
                          "name": "Имя 2",
                          "lastname": "Фамилия 2",
                          "secondname": "Отчество 2",
                          "liveadress": "Хорошая Улица, дом 42",
                          "birthdate": DateTime(1990, 11, 16).toIso8601String(),
                          "phone": "86667778899",
                          "secondaryphone": "86667775544",
                          "document": "23.45.6789",
                          "documentdate": DateTime(2017, 11, 4).toIso8601String(),
                          "registeradress": "Улица Регистраций, д.3, под. 2",
                        },
                      ),
                      "date": DateTime(2024, 1, 1).toIso8601String(),
                    },
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
