import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:waypay/controllers/user_controller.dart';
import 'package:waypay/models/user_model.dart';
import 'package:waypay/widgets/customtextfield_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final UserModel user;
  late final Map<String, TextEditingController> controllers;

  @override
  void initState() {
    getUserInfo();
    controllers = {
      "ФИО": TextEditingController(text: "${user.lastName} ${user.name} ${user.secondName}"),
      "Дата рождения": TextEditingController(text: DateFormat("dd.mm.yyyy").format(user.birthDate)),
      "Адрес проживания": TextEditingController(text: user.liveAdress),
      "Телефон": TextEditingController(text: user.phoneNumber),
      "Запасной телефон": TextEditingController(text: user.secondaryPhoneNumber),
      "Документ": TextEditingController(text: user.document),
      "Дата выдачи": TextEditingController(text: user.documentRetrieveDate != null ? DateFormat("dd.mm.yyyy").format(user.documentRetrieveDate!) : ""),
      "Адрес регистрации": TextEditingController(text: user.registerAdress),
    };
    super.initState();
  }

  void getUserInfo() async {
    var cont = Get.find<UserController>();
    await cont.getUser();
    user = cont.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 45,
          ),
        ),
        title: const Text("Личный кабинет"),
        actions: const [
          Icon(
            Icons.person,
            size: 40,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: ListView(
          children: [
            ...controllers.keys.map(
              (e) => Padding(
                padding: EdgeInsets.only(bottom: (e == controllers.keys.last) ? 0 : 14),
                child: CustomTextField(controller: controllers[e]!, label: e),
              ),
            ),
            Image.asset("assets/profilescreenbottom.png"),
          ],
        ),
      ),
    );
  }

  void onChangeContent(String txt) {}
}
