import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/common/constants/app_colours.dart';
import 'package:app/common/widgets/custom_texts.dart';
import 'package:app/module/home/home_screen.dart';
import 'package:app/module/profile/complete_profile_binding.dart';
import 'package:app/module/profile/complete_profile_screen.dart';
import 'package:app/module/registration/registration_binding.dart';
import 'package:app/module/registration/registration_screen.dart';

Widget MenuDrawer(){
  return Container(
    width: 250,
    color: AppColors.lightOrange,
    child: ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
         DrawerHeader(
          decoration: const BoxDecoration(
            color: AppColors.primaryDarkLight,
          ),
          child: Column(
            children: [
              Image.asset("assets/images/footer_logo.png", width: 150, height: 100,)
            ],
          ),
        ),
        displayMenu( "Register" ,Icons.home, (){
          Get.to(const CompleteProfileScreen(), binding: CompleteProfileBinding());

        } ),
        displayMenu( "Home" ,Icons.home, (){
          // print("----");
          // var jsonObject = {
          //   "Name":"Shreekant jagtap",
          //   "Phone":"8308602787",
          //   "Age":"31",
          // };
          // print("---json-${jsonObject}");
          // FirebaseFirestore.instance
          //     .collection('Registered').doc("8308602787").set(jsonObject);
          // print("---success");
        } ),
        displayMenu( "About Us" ,Icons.info , (){
        }),
        displayMenu( "Rules" ,Icons.rule , (){
        }),
        displayMenu( "Enroll" ,Icons.list , (){
        }),
        displayMenu( "Renew" ,Icons.update , (){
        }),
        displayMenu( "Profiles" ,Icons.featured_play_list_rounded , (){
        }),
        displayMenu( "Success Stories" ,Icons.celebration , (){
        }),
        displayMenu( "Contact Us" ,Icons.contact_mail , (){
        }),
      ],
    ),
  );
}

Widget displayMenu( name, icon, ontap) {
  return ListTile(
    leading: Icon(icon,color: AppColors.primary, size: 20,),
    minLeadingWidth: 2.0,
    horizontalTitleGap: 10.0,
    title: CustomText( text: name,textSize: 14,textAlign: TextAlign.left,textColour: AppColors.primaryBlack),
    onTap: ontap,
  );
}