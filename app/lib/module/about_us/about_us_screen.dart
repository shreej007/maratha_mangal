
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/common/constants/app_colours.dart';
import 'package:app/common/constants/app_images.dart';
import 'package:app/module/about_us/about_us_binding.dart';
import 'package:app/module/about_us/widgets/terms_description_view.dart';
import 'package:app/module/onboarding/onboarding_screen.dart';
import 'package:app/module/splash/splash_binding.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  AboutUsState createState() => AboutUsState();
}

class AboutUsState extends State<AboutUsScreen>{

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AboutUsController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("About Us"),
        ),
        body: SingleChildScrollView(
      child: Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TermsDescriptionView(
                "Maratha Mangal, the leading Marathi Matrimony service provider for the Marathi community has the network in all over Maharashtra with a well mannered and traditional associates to assist you in search for a partner."),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.1),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(0.0, 1.0),
                      ),
                    ],
                  ),
                  // color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.support_agent,
                                color: AppColors.theameColorRed,
                                size: 24.0,
                              ),
                            ),
                            Text(
                              "Customer Support",
                              style: TextStyle(
                                  color: AppColors.theameColorRed, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 2.0),
                          child: Text("Call Us Between 10 AM to 6 PM",
                              style: TextStyle(color: Colors.black)),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 8.0, top: 15.0),
                          child: RichText(
                            text: const TextSpan(
                              text: '',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Phone number: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(text: ' +91 7888036366'),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                          child: RichText(
                            text: const TextSpan(
                              text: '',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Email Us: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(text: 'info@marathamangal.com'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.1),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(0.0, 1.0),
                      ),
                    ],
                  ),
                  // color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.gps_fixed,
                                color: AppColors.theameColorRed,
                                size: 24.0,
                              ),
                            ),
                            Text(
                              "Our Address",
                              style: TextStyle(
                                  color: AppColors.theameColorRed, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 2.0),
                          child: Text("Our offices are located in the Pune",
                              style: TextStyle(color: Colors.black)),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 8.0, top: 15.0),
                          child: RichText(
                            text: const TextSpan(
                              text: '',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Address: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(text: ' Pune, Maharashtra'),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 0.1),
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0,
                        offset: Offset(0.0, 1.0),
                      ),
                    ],
                  ),
                  // color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(
                                Icons.message,
                                color: AppColors.theameColorRed,
                                size: 24.0,
                              ),
                            ),
                            Text(
                              "Other Enquiries",
                              style: TextStyle(
                                  color: AppColors.theameColorRed, fontSize: 16.0),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0, top: 2.0),
                          child: Text(
                              "Please contact us at the email below for all other inquiries.",
                              style: TextStyle(color: Colors.black)),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 8.0, top: 15.0),
                          child: RichText(
                            text: const TextSpan(
                              text: '',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Email Us: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold)),
                                TextSpan(text: 'enquiry@marathamangal.com'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ),
    ),
      ),
    );
  }
}
