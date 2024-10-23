import 'dart:ffi';

class UserStatistics {
  late final String id;
  late final DateTime month;
  late final int creditsAmount;
  late final Long turnover;

  UserStatistics(this.id, Map<String, dynamic> map) {
    month = map["month"] != null ? DateTime.parse(map["month"]) : throw("No month parameter in UserStatistics $id");
    creditsAmount = map["creditsAmount"] ?? 0;
    turnover = map["turnover"] != null ? (map["turnover"] as Long) : throw("No turnover value in UserStatictics $id");
  }
}