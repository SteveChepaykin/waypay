class Payment {
  late final int amount;
  late final DateTime paydate;
  late final bool isAlive;
  late final bool isCurrent;

  Payment(Map<String, dynamic> map) {
    amount = map["amount"] ?? 1000;
    paydate = map["paydate"] != null ? DateTime.parse(map["paydate"]) : throw();
    isAlive = map["isalive"] ?? true;

    isCurrent = ((DateTime.now().compareTo(paydate)) < 0) && ((paydate.millisecondsSinceEpoch - DateTime.now().millisecondsSinceEpoch) <= 2628002880);
  }
}