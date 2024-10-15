import 'package:get/get.dart';
import 'package:waypay/models/user_model.dart';

class UserController extends GetxController {
  late UserModel currentUser;

  Future<void> init() async {
    await getUser();
  }

  Future<void> getUser() async {
    UserModel user = UserModel("11111", {
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
    });
    currentUser = user;
  }

  Future<void> updateUser() async {
    
  }
}