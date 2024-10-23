enum Permission {
  addContract,
  changeContract,
  deleteContract,
  companyData,
  products,
  blackList,
  paymentJournal,
  paymentAwaits,
  income,
  programRegistration,
}

class UserModel {
  late final String id;
  late final String customerId;
  late final String login;
  late final String password;
  late final bool isWorker;
  late final String name;
  late final String secondName;
  late final String lastName;
  late final DateTime birthDate;
  late final String liveAdress;
  late final String phoneNumber;
  late final String secondaryPhoneNumber;
  late final String? document;
  late final DateTime? documentRetrieveDate;
  late final String registerAdress;
  final List<Permission> permissions = [];

  UserModel(this.id, Map<String, dynamic> map) {
    name = map["name"] ?? (throw ("User forst name is required"));
    login = map["login"] ?? (throw ("Login is required."));
    password = map["password"] ?? (throw ("Password is required"));
    secondName = map["secondname"] ?? "";
    lastName = map["lastname"] ?? (throw ("User lastname is required"));
    birthDate = map["birthdate"] != null ? DateTime.parse(map["birthdate"]) : throw ();
    liveAdress = map["liveadress"] ?? "No Adress.";
    phoneNumber = map["phone"] ?? (throw ("Phone number is required"));
    secondaryPhoneNumber = map["secondaryphone"] ?? "";
    document = map["document"];
    documentRetrieveDate = map["documentdate"] != null
        ? DateTime.parse(map["documentdate"])
        : document == null
            ? null
            : throw ("Has document but does not have document date");
    registerAdress = map["registeradress"] ?? "";
    isWorker = map["isworker"] ?? false;
    if (isWorker) {
      permissions.addAll(
        [
          Permission.addContract,
          Permission.deleteContract,
          Permission.changeContract,
          Permission.programRegistration,
        ],
      );
    }
    if(map["isBlackList"] != null) permissions.add(Permission.blackList); 
  }

  UserModel.mockClient(this.id) {
    name = "TestName";
    secondName = "TestSecondName";
    lastName = "TestLastname";
    birthDate = DateTime(1999, 10, 16);
    liveAdress = "Adress Takoy, To";
    phoneNumber = "87776665544";
    secondaryPhoneNumber = "89997776655";
    document = "66.88.7777";
    documentRetrieveDate = DateTime(2008, 3, 6);
    registerAdress = "Adress Registratsii, Noviy";
    isWorker = false;
  }

  UserModel.mockWorker(this.id) {
    name = "WorkerName";
    secondName = "TestSecondName";
    lastName = "TestLastname";
    birthDate = DateTime(1989, 10, 16);
    liveAdress = "Adress Takoy, To 2";
    phoneNumber = "89765432121";
    secondaryPhoneNumber = "";
    document = "00.00.1001";
    documentRetrieveDate = DateTime(2005, 9, 9);
    registerAdress = "Adress Registratsii, Noviy";
    isWorker = false;
    permissions.addAll(
      [
        Permission.addContract,
        Permission.deleteContract,
        Permission.changeContract,
        Permission.programRegistration,
      ],
    );
  }
}
