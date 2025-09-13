
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/privacy_policy/privacy_policy_binding.dart';
import 'package:app/module/rules/widgets/bullet_string_view.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  PrivacyPolicyState createState() => PrivacyPolicyState();
}

class PrivacyPolicyState extends State<PrivacyPolicyScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PrivacyPolicyController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Privacy Policy"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  BulletStringView(
                      "Welcome to Maratha Mangal To use the Maratha Mangal Site, you must Register as a member of the Site ('Member') and agree to be bound by these Terms of Use ('Agreement'). If you wish to become a Member and communicate with other Members and make use of the service ('Service'), read these Terms of Use and follow the instructions in the Registration process. This Agreement sets out the legally binding terms for your membership. This Agreement may be modified by Maratha Mangal from time to time effective upon notice to you as a Member. Whenever there is a change in the Terms of Use, Maratha Mangal will intimate you of such change. Your continued use of the Site under such change will constitute deemed acceptance of such changes.",""),
                  BulletStringView(
                      "Maratha Mangal is an online portal endeavouring constantly to provide you with premium online matrimonial services and it is designed to provide an easy way for our members to meet each other on the Web.",""),
                  BulletStringView(
                      "This privacy statement is common to all the matrimonial sites operated under Maratha Mangal. Since we are strongly committed to your right to privacy, we have drawn out a privacy statement about the information we collect from you.",""),
                  BulletStringView(
                      "All rights are reserved. All the information and material presented on Maratha Mangal is owned and controlled by Maratha Mangal. Any kind of reproduction, publication or copying of the material or the commercial use of information found on Maratha Mangal is prohibited without the express consent of Maratha Mangal online matrimonial service. Being an online matrimonial service we have to gather certain information from our essential members, to enable us to provide you with profiles that match your requirement. The information collected on Maratha Mangal cannot be used by anyone to ascertain the identity of a particular individual Maratha Mangal collects information like name, address, contact, numbers, email, age, gender, personal characteristics, etc. are required to be put for the other members to see who are searching for brides and groom. Though the members can see this information they cannot use it to ascertain the identity of any particular individual.",""),
                  BulletStringView(
                      "Survey information collected is used to monitor or improve the site usage experience. While Maratha Mangal takes care to prevent site misuse, we strongly recommend you establish the authenticity and intent of members before giving out personally identifiable information in your messages. We use your server, IP address, and browser-type related information in the general administration of our website.",""),
                  BulletStringView(
                      "We display your online status just to enable visitors to contact you immediately. This site uses cookies to deliver various services and to keep track of your personal preferences. A cookie is a small text file that can be entered into the memory of your browser to help a website recognize repeat users; facilitate the user's ongoing access to and use of the site; allow a site to track usage behaviour compile aggregate data for content improvements, and undertake targeted advertising. A cookie is also used to save your login and password to facilitate your access to this site.",""),
                  BulletStringView(
                      "Except in jurisdictions where such provisions are restricted, in no event will Maratha Mangal be liable to you or any third person for any indirect, consequential, exemplary, incidental, special or punitive damages, including also lost profits arising from your use of the Site or the Maratha Mangal Service, even if Maratha Mangal has been advised of the possibility of such damages. Notwithstanding anything to the contrary contained herein, Maratha Mangal, liability to you for any cause whatsoever, and regardless of the form of the action, will at all times be limited to the amount paid, if any, by you to Maratha Mangal, for the Service during the term of membership.",""),
                  BulletStringView(
                      "We do not trade, rent or sell your private information to anyone unless required by the law. We share your private information with our paid registered members. Maratha Mangal may display your pics uploaded on the site to promote the site either online or offline. Maratha Mangal may update this policy from time to time.",""),
                  BulletStringView(
                      "If you have any questions about this privacy statement please email us at info@marathamangal.com",""),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
