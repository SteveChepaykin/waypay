import 'package:waypay/models/user_model.dart';

class Contract {
  late final String id;
  late final UserModel user;
  late final DateTime date;

  Contract(this.id, Map<String, dynamic> map) {
    user = map["user"];
    date = map["date"] != null ? DateTime.parse(map["date"]) : throw();
  }
}