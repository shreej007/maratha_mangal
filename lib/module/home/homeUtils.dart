import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../common/constants/app_colours.dart';
import '../../common/constants/app_constants.dart';
import '../../common/widgets/custom_circular_button.dart';
import '../../common/widgets/custom_text_button.dart';
import '../../common/widgets/custom_texts.dart';

Widget socialMediaLinks(){
  return Container(
    color: AppColors.lightBlack,
    child: SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.call, color: Colors.black45,size: 20,), hoverColor: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.telegram_sharp,color: Colors.black45,size: 20,), hoverColor: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.call, color: Colors.black45,size: 20,),hoverColor: Colors.white,),
          IconButton(onPressed: (){}, icon: Icon(Icons.telegram_sharp,color: Colors.black45,size: 20,),hoverColor: Colors.white,),
          // IconButton(onPressed: (){}, icon:Image.asset("assets/images/facebook.png", width:10, height: 10,)),
          // IconButton(onPressed: (){}, icon: Image.asset("assets/images/instagram.png", width:10, height: 10,)),
          // IconButton(onPressed: (){}, icon:Image.asset("assets/images/google.png", width:10, height: 10,)),
          // IconButton(onPressed: (){}, icon:Image.asset("assets/images/linkedin.png", width:10, height: 10,)),
          // IconButton(onPressed: (){}, icon: Image.asset("assets/images/pinterest.png", width:10, height: 10,)),
          // IconButton(onPressed: (){}, icon: Image.asset("assets/images/twitter.png", width:10, height: 10,)),
          // IconButton(onPressed: (){}, icon:Image.asset("assets/images/youtube.png", width:10, height: 10,)),
        ],
      ),
    ),
  );
}

Widget showMenuOptions(maxWidth){
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(text: "Home", textColour: AppColors.primary, textSize: 12,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(text: "Rules" ,textColour: AppColors.primary, textSize: 12,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(text: "Enroll",textColour: AppColors.primary, textSize: 12,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(text: "Renew" ,textColour: AppColors.primary, textSize: 12,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(text: "Profiles",textColour: AppColors.primary, textSize: 12,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(text: "About Us" ,textColour: AppColors.primary, textSize: 12,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(text: "Contact us",textColour: AppColors.primary, textSize: 12,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(text: "Success Stories",textColour: AppColors.primary, textSize: 12,),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: CustomText(text: "Login" ,textColour: AppColors.primary, textSize: 12,),
        ),
      ],
    ),
  );
}

Widget showMenuAndroidOptions(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CustomText(text: "Home", textColour: AppColors.textDarkGrey, textSize: 12,),
      CustomText(text: "Rules" ,textColour: AppColors.textDarkGrey, textSize: 12,),
      CustomText(text: "Enroll",textColour: AppColors.textDarkGrey, textSize: 12,),
      CustomText(text: "Renew" ,textColour: AppColors.textDarkGrey, textSize: 12,),
      CustomText(text: "Profiles",textColour: AppColors.textDarkGrey, textSize: 12,),
      CustomText(text: "About Us" ,textColour: AppColors.textDarkGrey, textSize: 12,),
      CustomText(text: "Contact us",textColour: AppColors.textDarkGrey, textSize: 12,),
      CustomText(text: "Success Stories",textColour: AppColors.textDarkGrey, textSize: 12,),
      CustomText(text: "Login" ,textColour: AppColors.textDarkGrey, textSize: 12,),
    ],
  );
}

Widget detailsCard(constraints,title, desc , context , width , height){
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Card(
      child: Container(
        width: width,
        height: height,
        margin:const EdgeInsets.all(10.0) ,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Icon(Icons.app_registration_rounded),
            CustomText(text: title, textAlign: TextAlign.center, textSize: 13,textColour: AppColors.primaryBlack,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(color: AppColors.primary, height: 1,),
            ),
            Expanded( flex: 2,child: CustomText(text: desc,textSize: 12,textColour: AppColors.primaryBlack,textAlign: TextAlign.left,)),
            CustomCircularButton(ButtonTextValue:"Read more" , onPressed: (){}, isButtonDisable:false)
          ],
        ),
      ),
    ),
  );
}

Widget circularPercentage( radius, lineWidth, percentage,desc , barColor, textColor, barPercent,height, width){
  return CircularPercentIndicator(
    radius:radius,
    lineWidth: lineWidth,
    animation: true,
    percent: barPercent,
    center:  CustomText(text:percentage,textSize: 14,textColour: textColor?? AppColors.primaryBlack,
    ),
    footer: Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(10.0),
      child: CustomText(text: desc,textSize: 14,textColour: textColor?? AppColors.primaryBlack,
      ),
    ),
    circularStrokeCap: CircularStrokeCap.round,
    progressColor: barColor ??AppColors.primaryDarkLight,
  );
}

Widget labelValueRow( label, value) {
  return Container(
    width: 120,
    margin: EdgeInsets.only(left: 10),
    padding: EdgeInsets.all(2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTextBold(
          text: "$label: ",
          textAlign: TextAlign.left,
          textColour:
          AppColors.primaryBlack,
          textSize: 12,
        ),
        Expanded(
          child: CustomText(
            text: value,
            textAlign: TextAlign.left,
            textColour:
            AppColors.primaryBlack,
            textSize: 12,
            maxline: 1,
          ),
        ),
      ],
    ),
  );
}
//
// Widget getProfileCarousel( constraints, context ) {
//   return Container(
//     margin: EdgeInsets.all(15),
//     width: constraints.maxWidth*0.98,
//     decoration: BoxDecoration(
//         color: AppColors.lightOrange,
//         border: Border.all(width: 1, color: AppColors.lightOrange),
//         borderRadius: BorderRadius.circular(10)
//     ),
//     child: CarouselSlider(
//       options: CarouselOptions(
//           autoPlay: true,
//           aspectRatio: 2.0,
//           enlargeCenterPage: true,
//           viewportFraction: MediaQuery.of(context).size.width < 600 ? 0.6 : 0.2,
//           height: kIsWeb ? MediaQuery.of(context).size.height*0.5 :MediaQuery.of(context).size.height*0.3
//       ),
//       items: AppConstants().demoCandidates.map((item) =>
//           Container(
//               decoration: BoxDecoration(
//                   color: AppColors.primaryWhite,
//                   border: Border.all(width: 1, color: AppColors.primaryWhite),
//                   borderRadius: BorderRadius.circular(10)
//               ),
//               alignment: Alignment.center,
//               margin: EdgeInsets.all(5),
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     flex: 3,
//                     child: CircleAvatar(
//                       radius: kIsWeb? constraints.maxWidth * 0.03 :MediaQuery.of(context).size.width*0.1,
//                       backgroundColor: AppColors.lightestGrey,
//                       child: ClipOval(
//                           child: Icon(
//                               Icons.person_rounded,
//                               size: kIsWeb? constraints.maxWidth * 0.04 :MediaQuery.of(context).size.width*0.1,
//                               color: AppColors.primaryDark
//                           )),
//                     ),
//                   ),
//                   Expanded(child: labelValueRow("Name", item.name)),
//                   Expanded(child: labelValueRow("DOB", item.dob)),
//                   Expanded(child: labelValueRow("Height", item.height.toString())),
//                   Expanded(child: labelValueRow("Occupation", item.occupation)),
//                   Expanded(child: labelValueRow("Education", item.education)),
//                   Expanded(child: labelValueRow("Location", item.location)),
//
//                 ],
//               )
//           )).toList(),
//     ),
//   );
// }



