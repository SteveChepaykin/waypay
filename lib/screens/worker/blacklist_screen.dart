import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waypay/models/user_model.dart';
import 'package:waypay/widgets/blacklistlistitem_widget.dart';
import 'package:waypay/widgets/filtertextfield_widget.dart';

class BlackListScreen extends StatefulWidget {
  const BlackListScreen({super.key});

  @override
  State<BlackListScreen> createState() => _BlackListScreenState();
}

class _BlackListScreenState extends State<BlackListScreen> {
  final TextEditingController namecont = TextEditingController();
  final TextEditingController contractnumbercont = TextEditingController();
  late final List<UserModel> userslist;

  @override
  void initState() {
    userslist = [
      UserModel(
        "567565875",
        {
          "name": "Имя",
          "lastname": "Фамилия",
          "secondname": "Отчество",
          "liveadress": "Хорошая Улица, дом 2",
          "birthdate": DateTime(2005, 7, 20).toIso8601String(),
          "phone": "85556664433",
          "secondaryphone": "86667775544",
          "document": "23.45.6789",
          "documentdate": DateTime(2017, 11, 4).toIso8601String(),
          "registeradress": "Улица Регистраций, д.3, под. 2",
        },
      ),
      UserModel(
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
    ];
    super.initState();
  }

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
        title: const Text("Чёрный список"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            FilterTextField(controller: contractnumbercont, label: "№ Договора"),
            const SizedBox(height: 14),
            FilterTextField(controller: namecont, label: "ФИО"),
            const SizedBox(height: 14),
            Expanded(
              child: ListView(
                children: [
                  ...(userslist
                      .map(
                        (e) => BlacklistListItem(user: e),
                      )
                      .toList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
