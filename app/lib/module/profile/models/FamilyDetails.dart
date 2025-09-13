class FamilyDetails {
  bool fatherAlive;
  bool motherAlive;
  int brothers;
  int marriedBrothers;
  int sisters;
  int marriedSister;
  String parentNames;
  String parentOccupation;
  String parentsResideCity;
  String nativeDistrict;
  String nativeTaluka;
  String familyEstate;
  List<String> surnamesOfRelatives;
  String maternalPlaceSurname;
  String intercasteStatus;
  String intercasteDetails;

  FamilyDetails({
    required this.fatherAlive,
    required this.motherAlive,
    required this.brothers,
    required this.marriedBrothers,
    required this.sisters,
    required this.marriedSister,
    required this.parentNames,
    required this.parentOccupation,
    required this.parentsResideCity,
    required this.nativeDistrict,
    required this.nativeTaluka,
    required this.familyEstate,
    required this.surnamesOfRelatives,
    required this.maternalPlaceSurname,
    required this.intercasteStatus,
    required this.intercasteDetails,
  });

  factory FamilyDetails.fromJson(Map<String, dynamic> json) {
    return FamilyDetails(
      fatherAlive: json['fatherAlive'],
      motherAlive: json['motherAlive'],
      brothers: json['brothers'],
      marriedBrothers: json['marriedBrothers'],
      sisters: json['sisters'],
      marriedSister: json['marriedSister'],
      parentNames: json['parentNames'],
      parentOccupation: json['parentOccupation'],
      parentsResideCity: json['parentsResideCity'],
      nativeDistrict: json['nativeDistrict'],
      nativeTaluka: json['nativeTaluka'],
      familyEstate: json['familyEstate'],
      surnamesOfRelatives: List<String>.from(json['surnamesOfRelatives']),
      maternalPlaceSurname: json['maternalPlaceSurname'],
      intercasteStatus: json['intercasteStatus'],
      intercasteDetails: json['intercasteDetails'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fatherAlive': fatherAlive,
      'motherAlive': motherAlive,
      'brothers': brothers,
      'marriedBrothers': marriedBrothers,
      'sisters': sisters,
      'marriedSister': marriedSister,
      'parentNames': parentNames,
      'parentOccupation': parentOccupation,
      'parentsResideCity': parentsResideCity,
      'nativeDistrict': nativeDistrict,
      'nativeTaluka': nativeTaluka,
      'familyEstate': familyEstate,
      'surnamesOfRelatives': surnamesOfRelatives,
      'maternalPlaceSurname': maternalPlaceSurname,
      'intercasteStatus': intercasteStatus,
      'intercasteDetails': intercasteDetails,
    };
  }
}