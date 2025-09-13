import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstantStrings {

  bool isEmail(String em) {
    String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(em);
  }

  int validateMobile(String value) {
    String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return 1;//'Please enter mobile number';
    }
    else if (!regExp.hasMatch(value)) {
      return 2;//'Please enter valid mobile number';
    }
    return 0;
  }

  
  


  static const listPanAdhar = [
    'PAN or ADHAR',
    'PAN Number',
    'Adhar Number',
    'Driving License Number',
    'Password Number'
  ];
  static const listGender = [
    'Gender',
    'Male',
    'Female'
  ];

  static const listMaritialStatus = [
    'Marital Status',
    'Unmarried',
    'Widow',
    'Widower',
    'Divorcee',
    'Seperated'
  ];
  static const listExpectedMaritialStatus = [
    'Unmarried',
    'Widow',
    'Widower',
    'Divorcee',
    'Seperated',
    'Does Not Matter'
  ];

  static const listBloodGroup = [
    'Blood Group',
    'A+',
    'A-',
    'AB+',
    'AB-',
    'B+',
    'B-',
    'O+',
    'O-',
    'Dont Know',
  ];

  static const listYesNo = ['No', 'Yes'];
  static const listSmoke = ['Smoke','No', 'Yes', 'Occasionally'];
  static const listDrink = ['Drink','No', 'Yes', 'Occasionally'];

  static const listDiet = ['Diet','Vegetarian', 'Non-Vegetarian'];
  static const listPhysicalDisabilities = ['Physical Disabilities','No', 'Yes'];
  static const listSpectacles = ['Spectacles','No', 'Yes'];
  static const listLens = ['Lens','No', 'Yes'];
  static const listFather = ['Father','No', 'Yes'];
  static const listMother = ['Mother','No', 'Yes'];

  static const listRashi = [
    'Rashi',
    'Unspecified',
    'Mesh (Aries)',
    'Vrishabh (Taurus)',
    'Mithun (Gemini)',
    'Karka (Cancer)',
    'Simha (Leo)',
    'Kanya (Virgo)',
    'Tula (Libra)',
    'Vrischika (Scorpio)',
    'Dhanu (Sagittarious)',
    'Makar (Capricorn)',
    'Kumbha (Aquarious)',
    'Meen (Pisces)',
  ];

  static const listNakshatra = [
    'Nakshatra',
    'Unspecified',
    'Ashwini',
    'Ardra',
    'Aslesha',
    'Anuradha',
    'Bharani',
    'Chitra',
    'Dhanishta',
    'Hasta',
    'Jyeshta',
    'Krittika',
    'Moola',
    'Magha',
    'Mrigasira',
    'Pushya',
    'Purva Phalgini',
    'Purva Bhadra',
    'Purva Shadha',
    'Punarvasu',
    'Rohini',
    'Swati',
    'Revati',
    'Shattarka',
    'Shravan',
    'Uttara Phalguni',
    'Uttara Bhadra',
    'Uttara Shadha',
    'Vishakha',
  ];

  static const listCharan = ['Charan','1', '2', '3', '4'];

  static const listNadi = ['Nadi','Adhya', 'Madhya', 'Antya'];

  static const listGan = ['Gan','Unspecified', 'Dev Gan', 'Manushya Gan', 'Rakshas Gan'];

  static const listMangal = ['Mangal','No', 'Yes', 'Saumya', 'Nirdosh', 'Dont Know'];

  static const listComplexion = [
    'Complexion',
    'FAIR',
    'GORA',
    'SAWALA',
    'GAVHAL',
    'NIMGORA',
    'BLACK',
    'GORA,SMART',
    'FAIR,SMART',
    'GAVHAL,SMART',
  ];

  static const listHeights = [
    'Height',
    'Below 4ft',
    '4ft 6in',
    '4ft 7in',
    '4ft 8in',
    '4ft 9in',
    '4ft 10in',
    '4ft 11in',
    '5ft',
    '5ft 1in',
    '5ft 2in',
    '5ft 3in',
    '5ft 4in',
    '5ft 5in',
    '5ft 6in',
    '5ft 7in',
    '5ft 8in',
    '5ft 9in',
    '5ft 10in',
    '5ft 11in',
    '6ft',
    '6ft 1in',
    '6ft 2in',
    '6ft 3in',
    '6ft 4in',
    '6ft 5in',
    '6ft 6in',
    '6ft 7in',
    '6ft 8in',
    '6ft 9in',
    '6ft 10in',
    '6ft 11in',
    '7ft',
    'Above 7ft',
  ];

  static const listWeights = [
    'Weight',
    '41 kg',
    '42 kg',
    '43 kg',
    '44 kg',
    '45 kg',
    '46 kg',
    '47 kg',
    '48 kg',
    '49 kg',
    '50 kg',
    '51 kg',
    '52 kg',
    '53 kg',
    '54 kg',
    '55 kg',
    '56 kg',
    '57 kg',
    '58 kg',
    '59 kg',
    '60 kg',
    '61 kg',
    '62 kg',
    '63 kg',
    '64 kg',
    '65 kg',
    '66 kg',
    '67 kg',
    '68 kg',
    '69 kg',
    '70 kg',
    '71 kg',
    '72 kg',
    '73 kg',
    '74 kg',
    '75 kg',
    '76 kg',
    '77 kg',
    '78 kg',
    '79 kg',
    '80 kg',
    '81 kg',
    '82 kg',
    '83 kg',
    '84 kg',
    '85 kg',
    '86 kg',
    '87 kg',
    '88 kg',
    '89 kg',
    '90 kg',
    '91 kg',
    '92 kg',
    '93 kg',
    '94 kg',
    '95 kg',
    '96 kg',
    '97 kg',
    '98 kg',
    '99 kg',
    '100 kg',
    '101 kg',
    '102 kg',
    '103 kg',
    '104 kg',
    '105 kg',
    '106 kg',
    '107 kg',
    '108 kg',
    '109 kg',
    '110 kg',
    '111 kg',
    '112 kg',
    '113 kg',
    '114 kg',
    '115 kg',
    '116 kg',
    '117 kg',
    '118 kg',
    '119 kg',
    '120 kg',
    '121 kg',
    '122 kg',
    '123 kg',
    '124 kg',
    '125 kg',
    '126 kg',
    '127 kg',
    '128 kg',
    '129 kg',
    '130 kg',
    '132 kg',
    '131 kg',
    '132 kg',
    '133 kg',
    '134 kg',
    '135 kg',
    '136 kg',
    '137 kg',
    '138 kg',
    '139 kg',
    '140 kg',
  ];

  static const listCity = [
    'Select City',
    'Ahmednagar',
    'Akola',
    'Amravati',
    'Aurangabad',
    'Bhandara',
    'Beed',
    'Buldhana',
    'Chandrapur',
    'Dhule',
    'Gadchiroli',
    'Gondia',
    'Hingoli',
    'Jalgaon',
    'Jalna',
    'Kolhapur',
    'Latur',
    'Mumbai City',
    'Mumbai suburban',
    'Nandurbar',
    'Nanded',
    'Nagpur',
    'Nashik',
    'Osmanabad',
    'Parbhani',
    'Pune',
    'Raigad',
    'Ratnagiri',
    'Sindhudurg',
    'Sangli',
    'Solapur',
    'Satara',
    'Thane',
    'Wardha',
    'Washim',
    'Yavatmal',
  ];

  static const listEducationArea = [
    'Education Area',
    '10th to 12th',
    '12th to Graduate',
    'Post - Graduate',
    'Doctor',
    'Engineer'
  ];

  static const listOccupationType = [
    'Occupation Type',
    'No Service or Pursuing Education',
    'Private Service',
    'Own Business or Own Practice',
    'Government Service'
  ];

  static const listNoOfBrothers = [
    'Brothers',
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  static const listNoOfMarriedBrothers = [
    'Married Brothers',
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  static const listNoOfSisters = [
    'Sisters',
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  static const listNoOfMarriedSisters = [
    'Married Sisters',
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];


  static const listSubCaste = [
    'Sub Caste',
    '96 Kuli',
    'Deshmukh Maratha',
    'Kunbi',
    'Tirale Kunbi',
    'Malvani Maratha',
    'Patil Maratha'
  ];

  static const listExpectedSubCaste = [
    'Sub Caste',
    '96 Kuli',
    'Deshmukh Maratha',
    'Kunbi',
    'Tirale Kunbi',
    'Malvani Maratha',
    'Patil Maratha'
    'Does Not Matter',
  ];

  static const listMinAgeDifference = [
    'Maximum Age Difference (in Years)',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15'
  ];

  static const listExpectedIncome = [
    'Expected Income Per Month',
    '10k',
    '20k',
    '30k',
    '40k',
    '50k',
    '60k',
    '70k',
    '80k',
    '90k',
    '1 Lakh',
    '1 Lakh - 1.5 Lakh',
    '1.5 Lakh - 2 Lakh',
    '2 Lakh +',
  ];

  // void CustomToast(String message){
  //   Fluttertoast.showToast(
  //       msg: message,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.CENTER,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.grey,
  //       textColor: Colors.white,
  //       fontSize: 16.0);
  // }
  //
  // void CustomToastBottom(String message){
  //   Fluttertoast.showToast(
  //       msg: message,
  //       toastLength: Toast.LENGTH_SHORT,
  //       gravity: ToastGravity.BOTTOM,
  //       timeInSecForIosWeb: 1,
  //       backgroundColor: Colors.grey,
  //       textColor: Colors.white,
  //       fontSize: 16.0);
  // }
}
