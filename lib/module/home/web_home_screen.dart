import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:app/common/constants/app_utils.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../common/constants/app_colours.dart';
import '../../common/constants/app_constants.dart';
import '../../common/widgets/custom_message_layout.dart';
import '../../common/widgets/custom_text_button.dart';
import '../../common/widgets/custom_texts.dart';
import 'homeUtils.dart';
Widget webHomeScreen(){
  return Scaffold(
    appBar: AppBar(
      backgroundColor: AppColors.primaryWhite,
      leading: Container(
        color: AppColors.primaryWhite,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/footer_logo.png"),
        ),
      ),
      leadingWidth: 200,
      title:
      Column(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.start,
          //   children: [
          //     CustomText(text: "someting")
          //   ],
          // ),
          LayoutBuilder(
            builder: (BuildContext context, constraint) {
              return Container(
                width: constraint.maxWidth,
                color: AppColors.primaryWhite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Container(
                    //   color: AppColors.primaryWhite,
                    //   child: Image.asset("assets/images/footer_logo.png", width: 150, height: 100,),
                    // ),
                    Expanded(child: showMenuOptions(constraint.maxWidth)),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    ),
    body: LayoutBuilder( builder: (BuildContext context, constraint){
      return contentPages(constraint.maxHeight*0.8);
    })
  );
}

Widget contentPages(imageHeight) {
  ScrollController _controller = ScrollController();

  return LayoutBuilder(builder: (context, constraints){
    return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width:  MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Image.asset("assets/images/ganpati.png",
                height:imageHeight,
                width: constraints.maxWidth,
                fit: BoxFit.fill,),
              getProfileCarousel(constraints, context),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CustomTextBold(text: "How it Works?", textColour: AppColors.primaryDark,textSize: 16,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CustomText(text: "फक्त तीन सोपी पावलं तुम्हाला तुमच्या अपेक्षेप्रमाणे स्थळे शोधण्यासाठी मदत करू शकतील.",
                          textColour: AppColors.primaryBlack,textSize: 13,),
                      ),
                      getOnboardLayout(constraints),
                    ],
                  ),
                ),
              ),
              getAdsLayout(constraints,context, _controller),
              Container(
                width: constraints.maxWidth,
                height:  constraints.maxHeight * 0.7,
                color: Colors.transparent,
                margin: const EdgeInsets.only(top:10, bottom: 20),
                padding: const EdgeInsets.all(20.0),
                alignment: Alignment.topLeft,
                child: statusBars(constraints)
              ),
               Container(
                color: AppColors.primaryBlack,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    socialMediaLinks(),
                    bottomNavLayout(constraints),
                  ],
                ),

              )
            ],
          ),
        ));
  });

}

 Widget statusBars(constraint) {
  return Column(
      children: [
    CustomText(text: "Current Status:",textColour: AppColors.primaryDark,textSize: 16,),
    Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 5 , right: 5, bottom: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: constraint.maxWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                circularPercentage(80 , 10 ,"80" , "Registration this week",AppColors.primaryDarkLight, AppColors.primaryBlack, 0.8,constraint.maxHeight*0.3,constraint.maxWidth*0.3),
                circularPercentage(80 , 10 ,"20" , "Subscription this week",AppColors.errorRed, AppColors.primaryBlack, 0.2,constraint.maxHeight*0.3,constraint.maxWidth*0.3),
                circularPercentage(80 , 10 ,"30" , "Total Grooms",AppColors.lightBlack, AppColors.primaryBlack, 0.3,constraint.maxHeight*0.3,constraint.maxWidth*0.3),
                circularPercentage(80 , 10 ,"40" , "Total Brides",Colors.green, AppColors.primaryBlack, 0.4,constraint.maxHeight*0.3,constraint.maxWidth*0.3),
              ],
            ),
          ),
        ),
      ),
    ),

  ]);
}

Widget bottomNavLayout(constraint) {
  return Container(
    height: constraint.maxHeight*0.6,
    child: Row(
      mainAxisAlignment:  MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(image:AssetImage("assets/images/footer_logo.png") , width: 100, height: 100,  ),
              SizedBox( width: 200, child: CustomText(textAlign: TextAlign.left, textSize: 12, text: "Maratha Mangal, the leading Marathi Matrimony service provider for the Marathi community has the network in all over Maharashtra with a well mannered and traditional associates to assist you in search for a partner.")),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: constraint.maxHeight*0.3,
            padding: EdgeInsets.only(top:20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox( width: 200, child: CustomTextBold(textAlign: TextAlign.left, textSize: 12, text: "Contact Us", textColour: AppColors.primaryWhite,), ),
                SizedBox( width: 200, child: CustomText(textAlign: TextAlign.left, textSize: 12, text: "Bibwewadi, Pune 411037")),
                SizedBox( width: 200, child: CustomText(textAlign: TextAlign.left, textSize: 12, text: "+91 7888036366", textColour: AppColors.errorRed,)),
                SizedBox( width: 200, child: CustomText(textAlign: TextAlign.left, textSize: 12, text: "info@marathamangal.com",textColour:AppColors.errorRed)),
              ]
              ,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: constraint.maxHeight*0.5,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container( width: 200, child: CustomTextBold(textAlign: TextAlign.left, textSize: 12, text: "Information", textColour: AppColors.primaryWhite,), ),
                  showMenuAndroidOptions()
                ]
            ),
          ),
        ),
        Expanded(
          child: Container(
            height:  constraint.maxHeight*0.3,
            padding: EdgeInsets.only(top:10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container( width: 200, child: CustomTextBold(textAlign: TextAlign.left, textSize: 12, text: "Free Membership for a Year", textColour: AppColors.primaryWhite,), ),
                  Container( width: 200, child: CustomText(textAlign: TextAlign.left, textSize: 12, text: "Not a Member Yet?", ), ),
                  CustomTextButton(onPressed: (){}, ButtonTextValue: " Register Now (Free)", isButtonDisable: false)
                ]
            ),
          ),
        )
      ],
    ),
  );
}

Widget getOnboardLayout(constraints) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(width: constraints.maxWidth*0.3,height: constraints.maxHeight * 0.8,child: CustomMessageLayout(animationString: "assets/images/onboarding_one.jpg", data_heading: 'Register', data_body: 'आपल्या संपूर्ण माहितीसह मंगल मराठा वर आपले प्रोफाईल तयार करा.', imageType: 'JPEG',width: constraints.maxWidth*0.2,height: constraints.maxHeight * 0.5,)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(width: constraints.maxWidth*0.3,height: constraints.maxHeight * 0.8,child: CustomMessageLayout(animationString: "assets/images/onboarding_two.jpg", data_heading: 'Find Your Best Match', data_body: "आपल्या अपेक्षेप्रमाणे स्थळे शोधण्यासाठी उपलब्ध असलेले विविध सर्च पर्याय वापरा.", imageType: 'JPEG',width: constraints.maxWidth*0.2,height: constraints.maxHeight * 0.5,)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(width: constraints.maxWidth*0.3,height: constraints.maxHeight * 0.8,child: CustomMessageLayout(animationString: "assets/images/onboarding_three.jpg", data_heading: "Send Response", data_body: "योग्य वाटणाऱ्या स्थळांना फोन किंवा ई-मेल ने संपर्क करा.", imageType: 'JPEG',width: constraints.maxWidth*0.2,height: constraints.maxHeight* 0.5,)),
        ), ],
    ),
  );
}

Widget getAdsLayout(constraints, context, _controller ) {
  return Scrollbar(
    thickness: 5, //width of scrollbar
    radius: Radius.circular(10), //corner radius of scrollbar
    scrollbarOrientation: ScrollbarOrientation.bottom,
    controller:_controller ,
    child: Container(
      width: constraints.maxWidth,
      color: AppColors.searchGrey,
      margin: EdgeInsets.only(top:10),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CustomTextBold(text: "Know about us a little more?", textColour: AppColors.primaryDark,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomText(text: "A short details :  ",
              textColour: AppColors.primaryBlack,textSize: 13,),
          ),
          SingleChildScrollView(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(constraints, "Enroll", "Description long body jnjknkjbkbkb b knknknnkbhjbhjbjhn", context,constraints.maxWidth*0.25 , constraints.maxHeight*0.7),
                detailsCard( constraints,"Success Stories", "You can add/update your photo instantly through this option very easily. Your photo will be added/updated on website instantly after submission of photo. For this option you need only your registered email ID & registration ID." ,context,constraints.maxWidth*0.25 , constraints.maxHeight*0.7),
                detailsCard(constraints, "Magazine" ,"This is listing of grooms & brides who are happily married through us & enjoying their married life. Due to our private guidelines, we have not given their photograph & contact details online. Around 24000 weddings are settled through us as yet." ,context,constraints.maxWidth*0.25 , constraints.maxHeight*0.7),
                detailsCard(constraints, "Magazine" ,"This is listing of grooms & brides who are happily married through us & enjoying their married life. Due to our private guidelines, we have not given their photograph & contact details online. Around 24000 weddings are settled through us as yet." ,context,constraints.maxWidth*0.25 , constraints.maxHeight*0.7),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget getProfileCarousel( constraints, context ) {
  return Container(
    margin: EdgeInsets.all(15),
    width: constraints.maxWidth*0.98,
    decoration: BoxDecoration(
        color: AppColors.searchGrey,
        border: Border.all(width: 1, color: AppColors.searchGrey,),
        borderRadius: BorderRadius.circular(10),
        boxShadow:[BoxShadow(
          spreadRadius: 1,
          color: AppColors.searchGrey,
          blurRadius: 2
        )],
    ),
    child: CarouselSlider(
      options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          viewportFraction: MediaQuery.of(context).size.width < 600 ? 0.6 : 0.2,
          height:  MediaQuery.of(context).size.height*0.5
      ),
      items: AppConstants().demoCandidates.map((item) =>
          Container(
              decoration: BoxDecoration(
                  color: AppColors.primaryWhite,
                  border: Border.all(width: 1, color: AppColors.primaryWhite),
                  borderRadius: BorderRadius.circular(10)
              ),
              alignment: Alignment.center,
              margin: EdgeInsets.all(5),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: CircleAvatar(
                      radius: constraints.maxWidth * 0.03,
                      backgroundColor: AppColors.lightestGrey,
                      child: ClipOval(
                          child: Icon(
                              Icons.person_rounded,
                              size: constraints.maxWidth * 0.04,
                              color: AppColors.primaryDark
                          )),
                    ),
                  ),
                  Expanded(child: labelValueRow("Name", item.name)),
                  Expanded(child: labelValueRow("DOB", item.dob)),
                  Expanded(child: labelValueRow("Height", item.height.toString())),
                  Expanded(child: labelValueRow("Occupation", item.occupation)),
                  Expanded(child: labelValueRow("Education", item.education)),
                  Expanded(child: labelValueRow("Location", item.location)),

                ],
              )
          )).toList(),
    ),
  );
}