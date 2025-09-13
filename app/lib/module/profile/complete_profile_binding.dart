
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:app/module/profile/ConstantStrings.dart';

class CompleteProfileController extends GetxController {

  ConstantStrings constantStrings = ConstantStrings();
  int activeStep = 0; // Initial step set to 5.
  int upperBound = 0;

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController alternateMobileNumberController = TextEditingController();



  String dropdownValueGender = 'Gender';
  String dropdownValueSubCaste = 'Sub Caste';
  String dropdownValueCity = 'Select City';
  String dropdownValuePanAdhar = 'PAN or ADHAR';
  String dropdownValueMaritalStatus = 'Marital Status';
  String dropdownValueHeight = 'Height';
  String dropdownValueWeight = 'Weight';
  String dropdownValueBloodGroup = 'Blood Group';
  String dropdownValueComplexion = 'Complexion';
  String dropdownValuePhysicalDisabilities = 'Physical Disabilities';
  String dropdownValueDiet = 'Diet';
  String dropdownValueSpectacles = 'Spectacles';
  String dropdownValueLens = 'Lens';
  String dropdownValueSmoke = 'Smoke';
  String dropdownValueDrink = 'Drink';
  String dropdownValueRashi = 'Rashi';
  String dropdownValueNakshatra = 'Nakshatra';
  String dropdownValueCharan = 'Charan';
  String dropdownValueNadi = 'Nadi';
  String dropdownValueGan = 'Gan';
  String dropdownValueMangal = 'Mangal';
  String dropdownValueBirthDistrict = 'Select City';
  String dropdownValueEducationArea = 'Education Area';
  String dropdownValueOccupationType = 'Occupation Type';
  String dropdownValueOccupationPlace = 'Occupation Type';
  String dropdownValueFather = 'Father';
  String dropdownValueMother = 'Mother';
  String dropdownValueBrothers = 'Brothers';
  String dropdownValueMarriedBrothers = 'Married Brothers';
  String dropdownValueSisters = 'Sisters';
  String dropdownValueMarriedSisters = 'Married Sisters';
  String dropdownValueParentsResidentCity = 'Select City';
  String dropdownValueNativeDistrict = 'Select City';
  String dropdownValueAnyIntercasteMarriageInCoreFamily = 'No';
  String dropdownValuePreferredCities = 'Select City';
  String dropdownValueExpectedMangal = 'Mangal';
  String dropdownValueExpectedSubCaste = 'Sub Caste';
  String dropdownValueExpectedHeight = 'Height';
  String dropdownValueMaximumAgeDifference = 'Maximum Age Difference (in Years)';
  String dropdownValueExpectedIncomePerMonthMinimum = 'Expected Income Per Month';
  String dropdownValueExpectedMaritalStatus = 'Marital Status';
  String birthdateText = "DOB";
  String selectedBirthTime = "Birthdate";





  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController alternatePhoneNumberController =
  TextEditingController();
  final TextEditingController pandAdharNumberController =
  TextEditingController();

  final TextEditingController yesPhysicalDisabilitiesController =
  TextEditingController();
  final TextEditingController personalityController = TextEditingController();
  final TextEditingController residenceAddressController =
  TextEditingController();
  final TextEditingController devakController = TextEditingController();
  final TextEditingController educationController = TextEditingController();
  final TextEditingController occupationController = TextEditingController();
  final TextEditingController incomePerMonthController = TextEditingController();
  final TextEditingController parentsFullNameController =
  TextEditingController();
  final TextEditingController parentsOccupationController =
  TextEditingController();
  final TextEditingController nativeTalukaController = TextEditingController();
  final TextEditingController familyWealthEstateController =
  TextEditingController();
  final TextEditingController surnamesRelativesController =
  TextEditingController();
  final TextEditingController mamaSurnamePlaceController =
  TextEditingController();
  final TextEditingController ifYesRelationCasteController =
  TextEditingController();
  final TextEditingController expectedEducationController =
  TextEditingController();
  final TextEditingController expectedOccupationController =
  TextEditingController();


  String errorFirstNameText = "",
      errorMiddleNameText = "",
      errorLastNameText = "",
      errorBirthdateText = "",
      errorSubCasteText = "",
      errorEmailText = "",
      errorMobileNoText = "";

  // String? selectedPan,
  //     selectedCity,
  //     selectedMaritalStatus,
  //     selectedGender,
  //     selectedSubCaste,
  //     selectedBirthDate = "Birth Date",
  //     selectedBirthTime = "Birth Time";
  // String? selectedHeight,
  //     selectedWeight,
  //     selectedBloodGroup,
  //     selectedComplexion,
  //     selectedPhysicalDisabilities,
  //     selectedSpectacles,
  //     selectedDiet,
  //     selectedLens,
  //     selectedSmoke,
  //     selectedDrink;
  //
  // String? selectedRashi,
  //     selectedNakshatra,
  //     selectedCharan,
  //     selectedNadi,
  //     selectedGan,
  //     selectedMangal,
  //     selectedBirthDistrict,
  //     selectedDevak;
  //
  // String? selectedEducationArea, selectedOccupationType, selectedOccupationPlace;
  // String? selectedFather,
  //     selectedMother,
  //     selectedBrothers,
  //     selectedMarriedBrothers,
  //     selectedSisters,
  //     selectedMarriedSisters,
  //     selectedParentsResidentCity,
  //     selectedNativeDistrict,
  //     selectedAnyIntercasteMarriageInCoreFamily;
  //
  // String? selectedPreferredCities,
  //     selectedExpectedMangal,
  //     selectedExpectedSubCaste,
  //     selectedExpectedHeight,
  //     selectedMaximumAgeDifference,
  //     selectedExpectedIncomePerMonthMinimum,
  //     selectedExpectedMaritalStatus;
  //
  DateTime selectedDate = DateTime.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1970, 8),
        lastDate: DateTime(2100));
    if (picked != null && picked != selectedDate) {
      // setState(() {
      //   selectedBirthDate = picked.day.toString() +
      //       '/' +
      //       picked.month.toString() +
      //       '/' +
      //       picked.year.toString();
      // });
    }
  }
  bool onFormOneSubmitClick() {
    if(firstNameController.text.trim().isEmpty){
      // constantStrings.CustomToast("Please enter First Name");
      return false;
    }

    if(middleNameController.text.trim().isEmpty){
      // constantStrings.CustomToast("Please enter Middle Name");
      return false;
    }

    if(lastNameController.text.trim().isEmpty){
      // constantStrings.CustomToast("Please enter Last Name");
      return false;
    }

    // if(selectedGender == null){
    //   // constantStrings.CustomToast("Please select Gender");
    //   return false;
    // }
    //
    // if(selectedBirthDate == "Birth Date"){
    //   // constantStrings.CustomToast("Please select Birth Date");
    //   return false;
    // }
    //
    // if(selectedSubCaste == null){
    //   // constantStrings.CustomToast("Please select Sub Caste");
    //   return false;
    // }

    if(emailController.text.trim().isEmpty){
      // constantStrings.CustomToast("Please enter Email");
      return false;
    }

    if(!constantStrings.isEmail(emailController.text.trim())){
      // constantStrings.CustomToast("Please Enter Valid Email");
      return false;
    }

    if(constantStrings.validateMobile(mobileNumberController.text.trim())== 1){
      // constantStrings.CustomToast("Please enter Mobile Number");
      return false;
    }

    if(constantStrings.validateMobile(mobileNumberController.text.trim())== 2){
      // constantStrings.CustomToast("Please enter Valid Mobile Number");
      return false;
    }

    if(constantStrings.validateMobile(alternateMobileNumberController.text.trim())== 1){
      // constantStrings.CustomToast("Please enter Alternate Mobile Number");
      return false;
    }

    if(constantStrings.validateMobile(alternateMobileNumberController.text.trim())== 2){
      // constantStrings.CustomToast("Please enter Valid Alternate Mobile Number");
      return false;
    }

    if(phoneNumberController.text.trim().isEmpty){
      // constantStrings.CustomToast("Please enter Phone Number");
      return false;
    }

    if(alternatePhoneNumberController.text.trim().isEmpty){
      // constantStrings.CustomToast("Please enter Alternate Phone Number");
      return false;
    }

    // if(selectedPan == null){
    //   // constantStrings.CustomToast("Please select Document Type");
    //   return false;
    // }
    //
    // if(pandAdharNumberController.text.trim().isEmpty){
    //   // constantStrings.CustomToast("Please enter Document Number");
    //   return false;
    // }
    //
    // if(selectedCity == null){
    //   // constantStrings.CustomToast("Please select Resident City");
    //   return false;
    // }
    //
    // if(selectedMaritalStatus == null){
    //   // constantStrings.CustomToast("Please select Material Status");
    //   return false;
    // }
    if(residenceAddressController.text.trim().isEmpty){
      // constantStrings.CustomToast("Please enter Resident Address");
      return false;
    }



    return true;
  }

  Widget dropdownText(String value) {
    return Text(value.toString(),
        style: const TextStyle(color: Colors.black, fontSize: 14.0));
  }
  void updateProfileDetails() async {
    final DocumentReference documentRef =
    FirebaseFirestore.instance.collection('Registered').doc('7840968487');
    final DocumentSnapshot snapshot = await documentRef.get();
    final Map<String, dynamic> existingData = {};
    existingData["newfield"]= "something";
    documentRef.update(existingData );
  }


  setGender(newValue){
    dropdownValueGender = newValue;
    update();
  }
  setSubCaste(newValue){
    dropdownValueSubCaste = newValue;
    update();
  }
  setCity(newValue){
    dropdownValueCity = newValue;
    update();
  }
  setPanAdhar(newValue){
    dropdownValuePanAdhar = newValue;
    update();
  }
  setMaritalStatus(newValue){
    dropdownValueMaritalStatus = newValue;
    update();
  }
  setHeight(newValue){
    dropdownValueHeight = newValue;
    update();
  }
  setWeight(newValue){
    dropdownValueWeight = newValue;
    update();
  }
  setBloodGroup(newValue){
    dropdownValueBloodGroup = newValue;
    update();
  }
  setComplexion(newValue){
    dropdownValueComplexion = newValue;
    update();
  }
  setPhysicalDisabilities(newValue){
    dropdownValuePhysicalDisabilities = newValue;
    update();
  }
  setDiet(newValue){
    dropdownValueDiet = newValue;
    update();
  }
  setSpectacles(newValue){
    dropdownValueSpectacles = newValue;
    update();
  }
  setLens(newValue){
    dropdownValueLens = newValue;
    update();
  }
  setSmoke(newValue){
    dropdownValueSmoke = newValue;
    update();
  }
  setDrink(newValue){
    dropdownValueDrink = newValue;
    update();
  }
  setRashi(newValue){
    dropdownValueRashi = newValue;
    update();
  }
  setNakshatra(newValue){
    dropdownValueNakshatra = newValue;
    update();
  }
  setCharan(newValue){
    dropdownValueCharan = newValue;
    update();
  }
  setNadi(newValue){
    dropdownValueNadi = newValue;
    update();
  }
  setGan(newValue){
    dropdownValueGan = newValue;
    update();
  }
  setMangal(newValue){
    dropdownValueMangal = newValue;
    update();
  }
  setBirthDistrict(newValue){
    dropdownValueBirthDistrict = newValue;
    update();
  }
  setEducationArea(newValue){
    dropdownValueEducationArea = newValue;
    update();
  }
  setOccupationType(newValue){
    dropdownValueOccupationType = newValue;
    update();
  }
  setOccupationPlace(newValue){
    dropdownValueOccupationPlace = newValue;
    update();
  }
  setFather(newValue){
    dropdownValueFather = newValue;
    update();
  }
  setMother(newValue){
    dropdownValueMother = newValue;
    update();
  }
  setBrothers(newValue){
    dropdownValueBrothers = newValue;
    update();
  }
  setMarriedBrothers(newValue){
    dropdownValueMarriedBrothers = newValue;
    update();
  }
  setSisters(newValue){
    dropdownValueSisters = newValue;
    update();
  }
  setMarriedSisters(newValue){
    dropdownValueMarriedSisters = newValue;
    update();
  }
  setParentsResidentCity(newValue){
    dropdownValueParentsResidentCity = newValue;
    update();
  }
  setNativeDistrict(newValue){
    dropdownValueNativeDistrict = newValue;
    update();
  }
  setAnyIntercasteMarriageInCoreFamily(newValue){
    dropdownValueAnyIntercasteMarriageInCoreFamily = newValue;
    update();
  }
  setPreferredCities(newValue){
    dropdownValuePreferredCities = newValue;
    update();
  }
  setExpectedMangal(newValue){
    dropdownValueExpectedMangal = newValue;
    update();
  }
  setExpectedSubCaste(newValue){
    dropdownValueExpectedSubCaste = newValue;
    update();
  }
  setExpectedHeight(newValue){
    dropdownValueExpectedSubCaste = newValue;
    update();
  }
  setMaximumAgeDifference(newValue){
    dropdownValueMaximumAgeDifference = newValue;
    update();
  }
  setExpectedIncomePerMonthMinimum(newValue){
    dropdownValueExpectedIncomePerMonthMinimum = newValue;
    update();
  }

  setExpectedMaritalStatus(newValue){
    dropdownValueExpectedMaritalStatus = newValue;
    update();
  }



}


class CompleteProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompleteProfileController());
  }
}