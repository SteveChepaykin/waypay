class UserModel {
  late final String id;
  late final bool isWorker;
  late final String name;
  late final String secondName;
  late final String lastName;
  late final DateTime birthDate;
  late final String liveAdress;
  late final String phoneNumber;
  late final String secondaryPhoneNumber;
  late final String document;
  late final DateTime documentRetrieveDate;
  late final String registerAdress;

  UserModel(this.id, Map<String, dynamic> map) {
    name = map["name"] ?? "TestName";
    secondName = map["secondname"] ?? "TestSecondName";
    lastName = map["lastname"] ?? "TestLastname";
    birthDate = map["birthdate"] != null ? DateTime.parse(map["birthdate"]) : throw();
    liveAdress = map["liveadress"] ?? "Adress Takoy, To";
    phoneNumber = map["phone"] ?? "87776665544";
    secondaryPhoneNumber = map["secondaryphone"] ?? "89997776655";
    document = map["document"] ?? "66.88.7777";
    documentRetrieveDate = map["documentdate"] != null ? DateTime.parse(map["documentdate"]) : throw();
    registerAdress = map["registeradress"] ?? "Adress Registratsii, Noviy";
    isWorker = map["isworker"] ?? false;
  } 
}