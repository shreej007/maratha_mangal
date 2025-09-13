
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_stepper/stepper.dart';
import 'package:app/common/constants/app_colours.dart';
import 'package:app/common/constants/app_strings.dart';
import 'package:app/common/widgets/custom_dropdown.dart';
import 'package:app/common/widgets/mm_custome_text_field.dart';
import 'package:app/module/dashboard/dashboard_binding.dart';
import 'package:app/module/dashboard/dashboard_screen.dart';
import 'package:app/module/profile/ConstantStrings.dart';
import 'package:app/module/profile/complete_profile_binding.dart';
import 'package:app/module/registration/widgets/ButtonSaveNextRed.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  CompleteProfileState createState() => CompleteProfileState();
}

class CompleteProfileState extends State<CompleteProfileScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      border: const Border(
        left: BorderSide(color: AppColors.COLOR_TEXT_FEILD_BORDER, width: 1.0),
        right:
        BorderSide(width: 1.0, color: AppColors.COLOR_TEXT_FEILD_BORDER),
        top: BorderSide(width: 1.0, color: AppColors.COLOR_TEXT_FEILD_BORDER),
        bottom:
        BorderSide(width: 1.0, color: AppColors.COLOR_TEXT_FEILD_BORDER),
      ),
    );
    
    return GetBuilder<CompleteProfileController>(
      builder: (controller) => Scaffold(
        // backgroundColor: AppColors.COLORcontroller.DROPDOWNcontroller.BACKcontroller.NEW,
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text("Complete Profile"),
          ),
          body: Column(
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: ImageStepper(
                  images: const [
                    // NetworkImage(
                    // 'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885controller.controller.340.jpg'),
                    // Image.asset(),
                    // Image(image: ''),
                    AssetImage('assets/images/MMheartNew.jpg'),
                    AssetImage('assets/images/MMheartNew.jpg'),
                    AssetImage('assets/images/MMheartNew.jpg'),
                    AssetImage('assets/images/MMheartNew.jpg'),
                    AssetImage('assets/images/MMheartNew.jpg'),
                    AssetImage('assets/images/MMheartNew.jpg'),
                    AssetImage('assets/images/MMheartNew.jpg'),
                    // AssetImage('assets/images/MMcontroller.three.jpg'),
                    // AssetImage('assets/images/sapta.jpg'),
                    // AssetImage('assets/images/one.png'),
                    // AssetImage('assets/images/two.png'),
                    // AssetImage('assets/images/newcontroller.one.png'),
                    // AssetImage('assets/images/saptacontroller.new.jpg'),
                    // AssetImage('assets/images/saptpadicontroller.one.png'),
                  ],

                  activeStepBorderPadding: 5.0,
                  stepRadius: 35,
                  lineColor: AppColors.COLOR_PINK_EXPRESS,
                  activeStepBorderColor: Colors.transparent,
                  // controller.activeStep property set to controller.activeStep variable defined above.
                  activeStep: controller.activeStep,
                  // bound receives value from upperBound.
                  // upperBound: (bound) => upperBound = bound,
                  // This ensures step-tapping updates the controller.activeStep.
                  onStepReached: (index) {
                    setState(() {
                      controller.activeStep = index;
                    });
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                // height: 45,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child:
                        Icon(Icons.person, color: Colors.white, size: 25.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                            controller.activeStep == 0
                                ? "Basic Information"
                                : controller.activeStep == 1
                                ? "Physical Attributes"
                                : controller.activeStep == 2
                                ? "Horoscope Details"
                                : controller.activeStep == 3
                                ? "Educational / Professional Details"
                                : controller.activeStep == 4
                                ? "Family Background"
                                : controller.activeStep == 5
                                ? "Expectations"
                                : controller.activeStep == 6
                                ? "Profile Photos"
                                : "",
                            style:
                            const TextStyle(color: Colors.white, fontSize: 20.0)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            controller.activeStep == 0
                                ? Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: MmCustomTextField("First Name", controller.firstNameController,
                                      keyboardType: TextInputType.text,
                                      textCapitalization: TextCapitalization.words,
                                      errorText: controller.errorFirstNameText),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField("Middle Name", controller.middleNameController,
                                      keyboardType: TextInputType.text,
                                      textCapitalization: TextCapitalization.words,
                                      errorText: controller.errorMiddleNameText),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField("Last Name", controller.lastNameController,
                                      keyboardType: TextInputType.text,
                                      textCapitalization: TextCapitalization.words,
                                      errorText: controller.errorLastNameText),
                                ),

                                // Padding(
                                //   padding: const EdgeInsets.only(top: 0.0),
                                //   child: CustomDropDown( dropdownValue: controller.dropdownValueGender,
                                //     dropdownList: ConstantStrings.listGender,
                                //     onChangedClick: (val){
                                //       controller.setGender(val);
                                //     },
                                //   ),
                                // ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0,left: 4,right: 4),
                                  child: GestureDetector(
                                    onTap: () async {
                                      final date = await showDatePicker(
                                          context: context,
                                          firstDate: DateTime(1960),
                                          initialDate: DateTime.now(),
                                          lastDate: DateTime(2100));
                                      if (date != null) {
                                        setState(() {
                                          controller.birthdateText = date.day.toString() +
                                              " - " +
                                              date.month.toString() +
                                              " - " +
                                              date.year.toString();
                                        });
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          border: Border.all(color: AppColors.COLOR_TEXT_FEILD_BORDER),
                                          borderRadius: BorderRadius.circular(5.0)),
                                      height: 50.0,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            " ${controller.birthdateText}" ,
                                            style: const TextStyle(
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueSubCaste,
                                    dropdownList: ConstantStrings.listSubCaste,
                                    onChangedClick: (val){
                                      controller.setSubCaste(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueMaritalStatus,
                                    dropdownList: ConstantStrings.listMaritialStatus,
                                    onChangedClick: (val){
                                      controller.setMaritalStatus(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueHeight,
                                    dropdownList: ConstantStrings.listHeights,
                                    onChangedClick: (val){
                                      controller.setHeight(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueWeight,
                                    dropdownList: ConstantStrings.listWeights,
                                    onChangedClick: (val){
                                      controller.setWeight(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueBloodGroup,
                                    dropdownList: ConstantStrings.listBloodGroup,
                                    onChangedClick: (val){
                                      controller.setBloodGroup(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueComplexion,
                                    dropdownList: ConstantStrings.listComplexion,
                                    onChangedClick: (val){
                                      controller.setComplexion(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValuePhysicalDisabilities,
                                    dropdownList: ConstantStrings.listPhysicalDisabilities,
                                    onChangedClick: (val){
                                      controller.setPhysicalDisabilities(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: MmCustomTextField("If Yes, Please Specify", controller.yesPhysicalDisabilitiesController,
                                      keyboardType: TextInputType.text),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueDiet,
                                    dropdownList: ConstantStrings.listDiet,
                                    onChangedClick: (val){
                                      controller.setDiet(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueSpectacles,
                                    dropdownList: ConstantStrings.listSpectacles,
                                    onChangedClick: (val){
                                      controller.setSpectacles(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueLens,
                                    dropdownList: ConstantStrings.listLens,
                                    onChangedClick: (val){
                                      controller.setLens(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: MmCustomTextField("Personality", controller.personalityController,
                                      keyboardType: TextInputType.text),
                                ),


                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      // if (onFormOneSubmitClick()) {
                                        setState(() {
                                          controller.activeStep = controller.activeStep + 1;
                                        });
                                      // }
                                    },
                                    child: ButtonSaveNextRed("Save & Next"),
                                  ),
                                )
                              ],
                            )
                                : controller.activeStep == 1
                                ? Column(
                              children: [


                                //
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 0.0),
                                //   child: MmCustomTextField("Mobile", controller.mobileNumberController,
                                //       keyboardType: TextInputType.number,
                                //       errorText: controller.errorMobileNoText),
                                // ),
                                //
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 0.0),
                                //   child: MmCustomTextField("Alternate Mobile Number", controller.alternateMobileNumberController,
                                //       keyboardType: TextInputType.number),
                                // ),
                                //
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 0.0),
                                //   child: MmCustomTextField("Phone Number", controller.phoneNumberController,
                                //       keyboardType: TextInputType.number),
                                // ),
                                //
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 0.0),
                                //   child: MmCustomTextField("Alternate Phone Number", controller.alternatePhoneNumberController,
                                //       keyboardType: TextInputType.number),
                                // ),
                                //
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 0.0),
                                //   child: CustomDropDown( dropdownValue: controller.dropdownValuePanAdhar,
                                //     dropdownList: ConstantStrings.listPanAdhar,
                                //     onChangedClick: (val){
                                //       controller.setPanAdhar(val);
                                //     },
                                //   ),
                                // ),
                                //
                                //
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 4.0),
                                //   child: MmCustomTextField("Alternate Phone Number", controller.alternatePhoneNumberController,
                                //       keyboardType: TextInputType.number),
                                // ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField("PAN or ADHAR Number",
                                      controller.pandAdharNumberController),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField("Residence Address", controller.residenceAddressController,
                                      keyboardType: TextInputType.text),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: MmCustomTextField("Email", controller.emailController,
                                      keyboardType: TextInputType.text,
                                      errorText: controller.errorEmailText),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField("Mobile", controller.mobileNumberController,
                                      keyboardType: TextInputType.number,
                                      errorText: controller.errorMobileNoText),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField("Mobile Number ||", controller.alternateMobileNumberController,
                                      keyboardType: TextInputType.number),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField("Phone Number |", controller.phoneNumberController,
                                      keyboardType: TextInputType.number),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField("Phone Number ||", controller.phoneNumberController,
                                      keyboardType: TextInputType.number),
                                ),

                                // Padding(
                                //   padding: const EdgeInsets.only(top: 0.0),
                                //   child: MmCustomTextField("Upload ID Proof", controller.pandAdharNumberController),
                                // ),
                                //
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 0.0),
                                //   child: CustomDropDown( dropdownValue: controller.dropdownValueCity,
                                //     dropdownList: ConstantStrings.listCity,
                                //     onChangedClick: (val){
                                //       controller.setCity(val);
                                //     },
                                //   ),
                                // ),



                                // Padding(
                                //   padding: const EdgeInsets.only(top: 4.0),
                                //   child: CustomDropDown( dropdownValue: controller.dropdownValueLens,
                                //     dropdownList: ConstantStrings.listLens,
                                //     onChangedClick: (val){
                                //       controller.setLens(val);
                                //     },
                                //   ),
                                // ),
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 4.0),
                                //   child: CustomDropDown( dropdownValue: controller.dropdownValueSmoke,
                                //     dropdownList: ConstantStrings.listSmoke,
                                //     onChangedClick: (val){
                                //       controller.setSmoke(val);
                                //     },
                                //   ),
                                // ),
                                //
                                // Padding(
                                //   padding: const EdgeInsets.only(top: 4.0),
                                //   child: CustomDropDown( dropdownValue: controller.dropdownValueDrink,
                                //     dropdownList: ConstantStrings.listDrink,
                                //     onChangedClick: (val){
                                //       controller.setDrink(val);
                                //     },
                                //   ),
                                // ),



                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        controller.activeStep = controller.activeStep + 1;
                                      });
                                    },
                                    child: ButtonSaveNextRed(
                                        "Save & Next"),
                                  ),
                                )
                              ],
                            )
                                : controller.activeStep == 2
                                ? Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueRashi,
                                    dropdownList: ConstantStrings.listRashi,
                                    onChangedClick: (val){
                                      controller.setDrink(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueNakshatra,
                                    dropdownList: ConstantStrings.listNakshatra,
                                    onChangedClick: (val){
                                      controller.setNakshatra(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueCharan,
                                    dropdownList: ConstantStrings.listCharan,
                                    onChangedClick: (val){
                                      controller.setCharan(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueNadi,
                                    dropdownList: ConstantStrings.listNadi,
                                    onChangedClick: (val){
                                      controller.setNadi(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueGan,
                                    dropdownList: ConstantStrings.listGan,
                                    onChangedClick: (val){
                                      controller.setGan(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueMangal,
                                    dropdownList: ConstantStrings.listMangal,
                                    onChangedClick: (val){
                                      controller.setMangal(val);
                                    },
                                  ),
                                ),



                                // Padding(
                                //   padding:
                                //   const EdgeInsets.only(top: 8.0, left: 4, right: 4),
                                //   child: Container(
                                //     height: 50.0,
                                //     width: MediaQuery.of(context)
                                //         .size
                                //         .width,
                                //     decoration: boxDecoration,
                                //     child: Padding(
                                //       padding:
                                //       const EdgeInsets.all(8.0),
                                //       child: GestureDetector(
                                //           onTap: () {
                                //             controller.selectDate(context);
                                //           },
                                //           child: Align(
                                //             alignment: Alignment
                                //                 .centerLeft,
                                //             child: controller.dropdownText("${controller.selectedBirthTime}"),
                                //           )),
                                //     ),
                                //   ),
                                // ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueBirthDistrict,
                                    dropdownList: ConstantStrings.listCity,
                                    onChangedClick: (val){
                                      controller.setBirthDistrict(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField("Devak", controller.devakController,
                                      keyboardType: TextInputType.text),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        controller.activeStep = controller.activeStep + 1;
                                      });
                                    },
                                    child: ButtonSaveNextRed(
                                        "Save & Next"),
                                  ),
                                )
                              ],
                            )
                                : controller.activeStep == 3
                                ? Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueEducationArea,
                                    dropdownList: ConstantStrings.listEducationArea,
                                    onChangedClick: (val){
                                      controller.setEducationArea(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: MmCustomTextField("Education", controller.educationController,
                                      keyboardType: TextInputType.text),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueOccupationType,
                                    dropdownList: ConstantStrings.listOccupationType,
                                    onChangedClick: (val){
                                      controller.setOccupationType(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: MmCustomTextField("Occupation", controller.occupationController,
                                      keyboardType: TextInputType.text),
                                ),



                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: MmCustomTextField(
                                      "Income (Per month)",
                                      controller.incomePerMonthController),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        controller.activeStep =
                                            controller.activeStep + 1;
                                      });
                                    },
                                    child: ButtonSaveNextRed(
                                        "Save & Next"),
                                  ),
                                )
                              ],
                            )
                                : controller.activeStep == 4
                                ? Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueFather,
                                    dropdownList: ConstantStrings.listFather,
                                    onChangedClick: (val){
                                      controller.setFather(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueMother,
                                    dropdownList: ConstantStrings.listMother,
                                    onChangedClick: (val){
                                      controller.setMother(val);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueBrothers,
                                    dropdownList: ConstantStrings.listNoOfBrothers,
                                    onChangedClick: (val){
                                      controller.setBrothers(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueMarriedBrothers,
                                    dropdownList: ConstantStrings.listNoOfMarriedBrothers,
                                    onChangedClick: (val){
                                      controller.setMarriedBrothers(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueSisters,
                                    dropdownList: ConstantStrings.listNoOfSisters,
                                    onChangedClick: (val){
                                      controller.setSisters(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueMarriedSisters,
                                    dropdownList: ConstantStrings.listNoOfMarriedSisters,
                                    onChangedClick: (val){
                                      controller.setMarriedSisters(val);
                                    },
                                  ),
                                ),




                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: MmCustomTextField(
                                      "Parent's Full Name",
                                      controller.parentsFullNameController),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField(
                                      "Parent's Occupation",
                                      controller.parentsOccupationController),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: CustomDropDown(
                                    dropdownValue: controller.dropdownValueParentsResidentCity,
                                    dropdownList: ConstantStrings.listCity,
                                    onChangedClick: (val){
                                      controller.setParentsResidentCity(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField(
                                      "Surnames of Relatives",
                                      controller.surnamesRelativesController),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField(
                                      "Family Wealth / Estate",
                                      controller.familyWealthEstateController),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: MmCustomTextField(
                                      "Mama’s Surname and Place",
                                      controller.mamaSurnamePlaceController),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueAnyIntercasteMarriageInCoreFamily,
                                    dropdownList: ConstantStrings.listYesNo,
                                    onChangedClick: (val){
                                      controller.setAnyIntercasteMarriageInCoreFamily(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top:4.0),
                                  child: MmCustomTextField(
                                      "If Yes (Relation and Caste)",
                                      controller.ifYesRelationCasteController),
                                ),

                                Padding(
                                  padding:
                                  const EdgeInsets.all(
                                      8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        controller.activeStep =
                                            controller.activeStep + 1;
                                      });
                                    },
                                    child:
                                    ButtonSaveNextRed(
                                        "Save & Next"),
                                  ),
                                )
                              ],
                            )
                                : controller.activeStep == 5
                                ? Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueExpectedMangal,
                                    dropdownList: ConstantStrings.listMangal,
                                    onChangedClick: (val){
                                      controller.setExpectedMangal(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueExpectedSubCaste,
                                    dropdownList: ConstantStrings.listSubCaste,
                                    onChangedClick: (val){
                                      controller.setExpectedSubCaste(val);
                                    },
                                  ),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueExpectedHeight,
                                    dropdownList: ConstantStrings.listHeights,
                                    onChangedClick: (val){
                                      controller.setExpectedHeight(val);
                                    },
                                  ),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueMaximumAgeDifference,
                                    dropdownList: ConstantStrings.listMinAgeDifference,
                                    onChangedClick: (val){
                                      controller.setMaximumAgeDifference(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top:4.0),
                                  child: MmCustomTextField(
                                      "Expected Education",
                                      controller.expectedEducationController),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:0.0),
                                  child: MmCustomTextField(
                                      "Expected Occupation",
                                      controller.expectedOccupationController),
                                ),


                                Padding(
                                  padding: const EdgeInsets.only(top: 0.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueExpectedIncomePerMonthMinimum,
                                    dropdownList: ConstantStrings.listExpectedIncome,
                                    onChangedClick: (val){
                                      controller.setExpectedIncomePerMonthMinimum(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: CustomDropDown( dropdownValue: controller.dropdownValueExpectedMaritalStatus,
                                    dropdownList: ConstantStrings.listMaritialStatus,
                                    onChangedClick: (val){
                                      controller.setExpectedMaritalStatus(val);
                                    },
                                  ),
                                ),

                                Padding(
                                  padding:
                                  const EdgeInsets
                                      .all(8.0),
                                  child:
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        controller.activeStep =
                                            controller.activeStep +
                                                1;
                                      });
                                    },
                                    child: ButtonSaveNextRed(
                                        "Save & Next"),
                                  ),
                                )
                              ],
                            )
                                : Column(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets
                                      .all(8.0),
                                  child: Container(
                                    height: 45.0,
                                    width:
                                    MediaQuery.of(context).size.width,
                                    decoration: boxDecoration,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: GestureDetector(
                                          onTap:
                                              () {
                                            controller.selectDate(context);
                                          },
                                          child:
                                          Align(
                                            alignment:
                                            Alignment.centerLeft,
                                            child: controller.dropdownText(
                                                "Upload Your First Profile Photo"),
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 45.0,
                                    width:
                                    MediaQuery.of(context).size.width,
                                    decoration: boxDecoration,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                      GestureDetector(
                                          onTap:
                                              () {
                                            controller.selectDate(context);
                                          },
                                          child:
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: controller.dropdownText(
                                                "Upload Your Second Profile Photo"),
                                          )),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      // controller.updateProfileDetails();
                                      Get.to(const DashboardScreen(),binding: DashboardBinding());
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          color: AppColors.theameColorRed,
                                          borderRadius: BorderRadius.circular(5.0)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Center(
                                          child: Text(
                                              "Submit",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ))
    );
  }
}
