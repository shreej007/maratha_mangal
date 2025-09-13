class CarerDetails {
  String? degree;
  String? edufield;
  String? occupationType;
  String? occupationPlace;
  double? personalIncome;

  CarerDetails({
    this.degree,
    this.edufield,
    this.occupationType,
    this.occupationPlace,
    this.personalIncome,
  });

  factory CarerDetails.fromJson(Map<String, dynamic> json) {
    return CarerDetails(
      degree: json['degree'],
      edufield: json['edufield'],
      occupationType: json['occupationType'],
      occupationPlace: json['occupationPlace'],
      personalIncome: json['personalIncome'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'degree': degree,
      'edufield': edufield,
      'occupationType': occupationType,
      'occupationPlace': occupationPlace,
      'personalIncome': personalIncome,
    };
  }
}
