class Payment {
  late final int amount;
  late final DateTime paydate;

  Payment(Map<String, dynamic> map) {
    amount = map["amount"] ?? 1000;
    paydate = map["paydate"] != null ? DateTime.parse(map["paydate"]) : throw();
  }
}