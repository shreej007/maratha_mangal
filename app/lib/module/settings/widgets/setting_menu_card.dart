import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/about_us/about_us_binding.dart';
import 'package:app/module/about_us/about_us_screen.dart';
import 'package:app/module/contact_us/contact_us_binding.dart';
import 'package:app/module/contact_us/contact_us_screen.dart';
import 'package:app/module/faq/faq_binding.dart';
import 'package:app/module/faq/faq_screen.dart';
import 'package:app/module/help_center/help_center_binding.dart';
import 'package:app/module/help_center/help_center_screen.dart';
import 'package:app/module/membership/membership_binding.dart';
import 'package:app/module/membership/membership_screen.dart';
import 'package:app/module/privacy_policy/privacy_policy_binding.dart';
import 'package:app/module/privacy_policy/privacy_policy_screen.dart';
import 'package:app/module/rules/rules_binding.dart';
import 'package:app/module/rules/rules_screen.dart';
import 'package:app/module/terms_and_conditions/terms_conditions_binding.dart';
import 'package:app/module/terms_and_conditions/terms_conditions_screen.dart';

class SettingMenuCard extends StatelessWidget {
  String title;
  int flag;

  SettingMenuCard(this.title, this.flag, {super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: GestureDetector(
        onTap: () {
          flag == 1
              ? Get.to(const AboutUsScreen(),binding: AboutUsBinding())
              : flag == 2
                  ? Get.to(const MembershipScreen(),binding: MembershipBinding())
                  : flag == 3
                      ? Get.to(const RulesScreen(),binding: RulesBinding())
                      : flag == 4
                          ? Get.to(const FaqScreen(),binding: FaqBinding())
                          : flag == 5
                              ? Get.to(const ContactUsScreen(),binding: ContactUsBinding())
                              : flag == 6
                                  ? Get.to(const HelpCenterScreen(),binding: HelpCenterBinding())
                                  : flag == 7
                                      ? Get.to(const TermsConditionsScreen(),binding: TermsConditionsBinding())
                                      : flag == 8
                                          ? Get.to(const PrivacyPolicyScreen(),binding: PrivacyPolicyBinding())
                                          : null;
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(
                flag == 1
                    ? CupertinoIcons.info_circle_fill
                    : flag == 2
                        ? Icons.wallet_membership
                        : flag == 3
                            ? Icons.ballot
                            : flag == 4
                                ? Icons.question_answer
                                : flag == 5
                                    ? CupertinoIcons.phone_circle_fill
                                    : flag == 6
                                        ? Icons.support_agent
                                        : flag == 7
                                            ? Icons.auto_stories
                                            : flag == 8
                                                ? Icons.privacy_tip
                                                : null,
                color: Colors.grey,
                size: 28,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text(
                title,
                style: const TextStyle(color: Colors.black, fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
