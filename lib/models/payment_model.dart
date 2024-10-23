import 'dart:ffi';

class Payment {
  late final String id;
  late final String creditId;
  late final String userId;
  late final String customerId;
  late final Long number;
  late final double amount;
  late final double sumPercent; 
  late final DateTime paydate;
  late final bool isAlive;
  late final bool isCurrent;

  Payment(this.id, Map<String, dynamic> map) {
    creditId = map["credit_id"] ?? (throw(""));
    userId = map["userId"] ?? (throw(""));
    customerId = map["customerId"] ?? "";
    amount = map["amount"] ?? (throw(""));
    number = map["number"] ?? (throw(""));
    sumPercent = map["sum_percent"] ?? 0;
    paydate = map["paydate"] != null ? DateTime.parse(map["paydate"]) : throw("");
    isAlive = map["isalive"] ?? true;

    isCurrent = ((DateTime.now().compareTo(paydate)) < 0) && ((paydate.millisecondsSinceEpoch - DateTime.now().millisecondsSinceEpoch) <= 2628002880);
  }

  Payment.mock(this.id, Map<String, dynamic> map) {
    creditId = "00001";
    userId = "11111";
    customerId = "22222";
    amount = map["amount"];
    number = (11111 as Long);
    sumPercent = 0;
    paydate = map["paydate"];
    isAlive = map["isalive"] ?? true;

    isCurrent = ((DateTime.now().compareTo(paydate)) < 0) && ((paydate.millisecondsSinceEpoch - DateTime.now().millisecondsSinceEpoch) <= 2628002880);
  }
}