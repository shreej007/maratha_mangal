class Expectations {
  List<String> preferredCities;
  bool mangalDosh;
  String expectedSubCaste;
  String expectedHeight;
  int minAgeGap;
  String expectedEducation;
  String expectedOccupation;
  double incomePerMonth;
  String expectedMaritalStatus;

  Expectations({
    required this.preferredCities,
    required this.mangalDosh,
    required this.expectedSubCaste,
    required this.expectedHeight,
    required this.minAgeGap,
    required this.expectedEducation,
    required this.expectedOccupation,
    required this.incomePerMonth,
    required this.expectedMaritalStatus,
  });

  factory Expectations.fromJson(Map<String, dynamic> json) {
    return Expectations(
      preferredCities: List<String>.from(json['preferredCities']),
      mangalDosh: json['mangalDosh'],
      expectedSubCaste: json['expectedSubCaste'],
      expectedHeight: json['expectedHeight'],
      minAgeGap: json['minAgeGap'],
      expectedEducation: json['expectedEducation'],
      expectedOccupation: json['expectedOccupation'],
      incomePerMonth: json['incomePerMonth'],
      expectedMaritalStatus: json['expectedMaritalStatus'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'preferredCities': preferredCities,
      'mangalDosh': mangalDosh,
      'expectedSubCaste': expectedSubCaste,
      'expectedHeight': expectedHeight,
      'minAgeGap': minAgeGap,
      'expectedEducation': expectedEducation,
      'expectedOccupation': expectedOccupation,
      'incomePerMonth': incomePerMonth,
      'expectedMaritalStatus': expectedMaritalStatus,
    };
  }
}
