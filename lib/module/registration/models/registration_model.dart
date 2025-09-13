class RegistrationModel{
  String firstName;
  String lastName;
  String middleName;
  String gender;
  String birthdate;
  String subCaste;
  String email;
  String mobile;
  String password;

  RegistrationModel({
  required this.firstName,
  required this.lastName,
  required this.middleName,
  required this.gender,
  required this.birthdate,
  required this.subCaste,
  required this.email,
  required this.mobile,
  required this.password,
  });

  factory RegistrationModel.registrationFromJson(Map<String, dynamic> json) {
  return RegistrationModel(
  firstName: json['firstName'],
  lastName: json['lastName'],
  middleName: json['middleName'],
  gender: json['gender'],
  birthdate: json['birthdate'],
  subCaste: json['subCaste'],
  email: json['email'],
  mobile: json['mobile'],
  password: json['password'],
  );
  }

  Map<String, dynamic> registrationToJson() {
  return {
  'firstName': firstName,
  'lastName': lastName,
  'middleName': middleName,
  'gender': gender,
  'birthdate': birthdate,
  'subCaste': subCaste,
  'email': email,
  'mobile': mobile,
  'password': password,
  };
  }
}

