class Installment {
  late final String id;
  late final DateTime from;
  late final DateTime till;
  late final int amount;
  late final bool isAlive;
  late final bool isFinished;

  Installment(this.id, Map<String, dynamic> map) {
    from = map["datefrom"] != null ? DateTime.parse(map["datefrom"]) : throw();
    till = map["datetill"] != null ? DateTime.parse(map["datetill"]) : throw();
    isAlive = (till.millisecondsSinceEpoch - DateTime.now().millisecondsSinceEpoch) > 0; 
    amount = map["amount"] ?? 0;
    isFinished = false;
  }
}