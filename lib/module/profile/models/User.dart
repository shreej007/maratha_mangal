import 'package:app/module/registration/models/registration_model.dart';

import 'CarerDetails.dart';
import 'Expectations.dart';
import 'FamilyDetails.dart';
import 'HoroscopeDetails.dart';
import 'PhysicalAttribute.dart';
import 'ProfilePhotos.dart';

class User {
  RegistrationModel basicInfo;
  PhysicalAttribute physicalAttribute;
  HoroscopeDetails horoscopeDetails;
  CarerDetails carerDetails;
  FamilyDetails familyDetails;
  Expectations expectations;
  ProfilePhotos profilePhotos;

  User({
    required this.basicInfo,
    required this.physicalAttribute,
    required this.horoscopeDetails,
    required this.carerDetails,
    required this.familyDetails,
    required this.expectations,
    required this.profilePhotos,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      basicInfo: RegistrationModel.registrationFromJson(json['basicInfo']),
      physicalAttribute: PhysicalAttribute.fromJson(json['physicalAttribute']),
      horoscopeDetails: HoroscopeDetails.fromJson(json['horoscopeDetails']),
      carerDetails: CarerDetails.fromJson(json['carerDetails']),
      familyDetails: FamilyDetails.fromJson(json['familyDetails']),
      expectations: Expectations.fromJson(json['expectations']),
      profilePhotos: ProfilePhotos.fromJson(json['profilePhotos']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'basicInfo': basicInfo.registrationToJson(),
      'physicalAttribute': physicalAttribute.toJson(),
      'horoscopeDetails': horoscopeDetails.toJson(),
      'carerDetails': carerDetails.toJson(),
      'familyDetails': familyDetails.toJson(),
      'expectations': expectations.toJson(),
      'profilePhotos': profilePhotos.toJson(),
    };
  }
}