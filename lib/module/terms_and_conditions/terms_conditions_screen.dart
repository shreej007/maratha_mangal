
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/about_us/widgets/terms_description_view.dart';
import 'package:app/module/contact_us/contact_us_binding.dart';
import 'package:app/module/help_center/help_center_binding.dart';
import 'package:app/module/rules/widgets/bullet_string_view.dart';
import 'package:app/module/terms_and_conditions/terms_conditions_binding.dart';
import 'package:app/module/terms_and_conditions/widgets/terms_title_view.dart';
class TermsConditionsScreen extends StatefulWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  TermsConditionsState createState() => TermsConditionsState();
}

class TermsConditionsState extends State<TermsConditionsScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TermsConditionsController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text("Terms and Conditions"),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  TermsDescriptionView(
                      "Welcome to marathamangal.com In order to use the marathamangal.com Site, you must Register as a member of the Site ('Member') and agree to be bound by these Terms of Use ('Agreement'). If you wish to become a Member and communicate with other Members and make use of the service ('Service'), read these Terms of Use and follow the instructions in the Registration process. This Agreement sets out the legally binding terms for your membership. This Agreement may be modified by marathamangal.com from time to time effective upon notice to you as a Member. Whenever there is a change in the Terms of Use, marathamangal.com will intimate you of such change. Your continued use of the Site pursuant to such change will constitute deemed acceptance of such changes."),
                  TermsTitleView("Eligibility:"),
                  TermsDescriptionView(
                      "You must be minimum of 18 years of age for Bride and 21 years of age for Groom or over to Register as a member of marathamangal.com or use this Site. Membership to the Site is void where prohibited. Your use of this Site represents and warrants that you have the right, authority, and capacity to enter into this Agreement and to abide by all of the terms and conditions of this Agreement."),
                  TermsDescriptionView(
                      "This site is not meant to encourage and/or promote any illicit sexual relations or extramarital affairs. If marathamangal.com discovers or becomes aware that any member is using this site to promote or engage or indulge in illicit sexual relations or extra marital affairs his/her membership will be terminated forthwith without any refund and without any liability to marathamangal.com discretion to terminate shall be final and binding."),
                  TermsTitleView("Term:"),
                  TermsDescriptionView(
                      "This Agreement will remain in full force and effect while you use the Site and/or are a Member of marathamangal.com. You are able to terminate your membership at any time, for any reason by informing marathamangal.com in writing to terminate your Membership."),
                  TermsDescriptionView(
                      "In the event you terminate your membership for any reasons, you will not be entitled to a refund of any unutilized subscription fees. marathamangal.com may terminate your access to the Site and/or your membership for any reason which shall be effective upon sending notice of termination to you at the email address you provide in your application for membership or such other email address as you may later provide to marathamangal.com. If marathamangal.com terminates your membership because of your breaching the Agreement, you will not be entitled to any refund of any unused Subscription fees. Even after this Agreement is terminated, certain provisions will remain in effect including sections 4, 5, 7, 9 -12, inclusive, of this Agreement."),

                  //
                  TermsTitleView("Non-Commercial Use by Members:"),
                  TermsDescriptionView(
                      "The marathamangal.com Site is for the personal use of individual members only, and may not be used in connection with any commercial endeavours. This includes providing links to other websites, whether deemed competitive to marathamangal.com or otherwise. Organizations, companies, and/or businesses may not become Members of marathamangal.com and should not use the marathamangal.com Service or Site for any purpose. Illegal and/or unauthorized uses of the Site, including unauthorized framing of or linking to the Site will be investigated, and appropriate legal action will be taken, including without limitation, civil, criminal, and injunctive redress."),

                  TermsTitleView("Other Terms of Use by Members:"),
                  TermsDescriptionView(
                      "You cannot engage in advertising to, or solicitation of, other Members to buy or sell any products or services through the Service. You will not transmit any chain letters or junk email to other marathamangal.com Members. Although marathamangal.com cannot monitor the conduct of its Members on themarathamangal.com Site, it is strictly consider a violation of this Agreement to use any information obtained from the Service in order to harass, abuse, or harm another person, or in order to contact, advertise to, solicit, or sell to any Member without their prior explicit consent. In order to protect marathamangal.com and/or our Members from any abuse/misuse, marathamangal.com reserves the right to restrict the number of communications/profile contacts & responses/emails which a Member may send to other Member(s) in any 24-hour period to a number which marathamangal.com deems appropriate in its sole discretion. You will not send any messages to other Members that are obscene, lewd, licentious, and defamatory, promote hatred and/or are racial or abusive in any manner. Transmission of any such messages shall constitute a breach of this Agreement and marathamangal.com shall be entitled to terminate your membership forthwith. marathamangal.com reserves the right to screen messages that you may send to other Member(s) and also, regulate the number of your chat sessions in its sole discretion. You may not use any automated processes, including IRC Bots, EXE's, CGI or any other programs/scripts to view content on or communicate/contact/respond/interact with marathamangal.com and/or its Members."),

                  TermsTitleView("Content Posted on the Site:"),
                  TermsDescriptionView(
                      "marathamangal.com owns and retains all proprietary rights, including without limitation, all intellectual property rights in the marathamangal.com Site and the marathamangal.com Service. The Site contains the copyrighted material, trademarks, and other proprietary information of marathamangal.com and its licensors. Except for that information which is in the public domain or for which you have been given express permission by marathamangal.com, you may not copy, modify, publish, transmit, distribute, perform, display, or sell any such proprietary information. All lawful, legal and non-objectionable messages (in the sole discretion of marathamangal.com, content and/or other information, content or material that you post on the forum boards shall become the property of marathamangal.com. marathamangal.com reserves the right to scrutinize all such information, content and/or material posted on the forum boards and shall have the exclusive right to either remove, edit and/or display such information, material and/or content"),
                  TermsDescriptionView(
                      "You understand and agree that marathamangal.com may delete any content, messages, photos or profiles (collectively, 'Content') that in the sole judgment of marathamangal.com violates this Agreement or which might be offensive, illegal, defamatory, obscene, libellous, or that might violate the rights, harm, or threaten the safety of other marathamangal.com Members."),
                  TermsDescriptionView(
                      "You are solely responsible for the Content that you publish or display (hereinafter, 'post') on the Site through the marathamangal.com Service, or transmit to other marathamangal.com Members. marathamangal.com reserves the right to verify the authenticity of Content posted on the Site. In exercising this right, marathamangal.com may ask you to provide any documentary or another form of evidence supporting the Content you post on the Site. If you fail to produce such evidence, or if such evidence does not in the reasonable the opinion of marathamangal.com establish or justify the claim, marathamangal.com may, in its sole discretion, terminate your Membership without a refund of your subscription fees."),
                  TermsDescriptionView(
                      "By posting Content to any public area of marathamangal.com, you automatically grant, and you represent and warrant that you have the right to grant, to marathamangal.com, and other marathamangal.com Members, an irrevocable, perpetual, non-exclusive, fully-paid, worldwide license to use, copy, perform, display, and distribute such information and content and to prepare derivative works of, or incorporate into other works, such information and content, and to grant and authorize sublicenses of the foregoing. The following is a partial list of the kind of Content that is illegal or prohibited on the Site. marathamangal.com will investigate and take appropriate legal action in its sole discretion against anyone who violates this provision, including without limitation, removing the offending communication from the Service and the Site and terminating the Membership of such violators without a refund. It includes (but is not limited to) Content that:"),
                  TermsDescriptionView(
                      "Newly the created profile will be checked for correctness and will be immediately activated after quality declaration verify by marathamangal.com."),
                  TermsDescriptionView(
                      "marathamangal.com reserves the rights to discontinue, deactivate, or terminate profile if the profile in terms of bad manners and the profile contents are not acceptable if it contains violent language or wrong material."),
                  TermsDescriptionView(
                      "You are only liable for your connections with other members through marathamangal.com."),
                  TermsDescriptionView(
                      "Contact information of the member’s profile will display only to paid members. Free membership is for a limited time. marathamangal.com reserves right to discontinue free membership at any time."),
                  TermsDescriptionView(
                      "Members agree that they are legally eligible to get married as far as the age is concerned. marathamangal.com will not be responsible for misuse of any facility/service it provides, which is in violation of the local government laws."),
                  TermsDescriptionView(
                      "Every the member submitting his/her matrimonial profile is required to give all the facts essential for establishing a marital relation. Concealing facts relevant to marriage could result in loss or damage to any individual and for which, marathamangal.com cannot be held responsible in any which way."),
                  TermsDescriptionView(
                      "marathamangal.com in no way guarantees the genuineness of the information provided by its members."),
                  TermsDescriptionView(
                      "Members will not have any claim against marathamangal.com for any time delay in posting their information into marathamangal.com website due to any technical reasons."),
                  TermsDescriptionView(
                      "marathamangal.com is not liable for damages caused due to incorrectness of the information provided by its members regarding the religion, caste or creed or any other personal information. If the members’ profile is deemed to be unfit, marathamangal.com has the right to delete, alter or refuse the same at any point of time without any notice."),
                  TermsDescriptionView(
                      "marathamangal.com cannot be held responsible for any loss or damage resulting from discontinuation of the service. marathamangal.com will also not be responsible for any damage caused due to others accessing members profile."),
                  TermsDescriptionView(
                      "marathamangal.com cannot guarantee that you as an applicant will receive responses and hence cannot be held responsible for no replies. In this case, we cannot give any refunds or credits."),
                  BulletStringView(
                      "marathamangal.com is not legally responsible for any delay in operation due to technical or other reasons.",
                      "terms"),
                  BulletStringView(
                      "Harasses or advocates harassment of another person;",
                      "terms"),
                  BulletStringView(
                      "Involves the transmission of 'junk mail', 'chain letters', or unsolicited mass mailing or 'spamming';",
                      "terms"),
                  BulletStringView(
                      "Promotes information that the person posting it is aware that it is false, misleading or promotes illegal activities or conduct that is abusive, threatening, obscene, defamatory or libellous;",
                      "terms"),
                  BulletStringView(
                      "Promotes an illegal or unauthorized copy of another person's copyrighted work, such as providing pirated computer programs or links to them, providing information to circumvent manufacture-installed copy-protect devices, or providing pirated music or links to pirated music files;",
                      "terms"),
                  BulletStringView(
                      "Contains restricted or password-only access pages, or hidden pages or images (those not linked to or from another accessible page) ;",
                      "terms"),
                  BulletStringView(
                      "Displays pornographic or sexually explicit material of any kind;",
                      "terms"),
                  BulletStringView(
                      "Provides material that exploits people under the age of 18 years in a sexual or violent manner, or solicits personal information from anyone under the age of 18 years;",
                      "terms"),
                  BulletStringView(
                      "Provides instructional information about illegal activities such as making or buying illegal weapons, violating someone's privacy, or providing or creating computer viruses;",
                      "terms"),
                  BulletStringView(
                      "Solicits passwords or personal identifying information for commercial or unlawful purposes from other users / Members; and",
                      "terms"),
                  BulletStringView(
                      "Engages in commercial activities and/or sales without the prior written consent marathamangal.com Such as contests, sweepstakes, barter, advertising, and pyramid schemes.",
                      "terms"),
                  BulletStringView(
                      "Encourages, invites or solicits extra marital affairs.",
                      "terms"),
                  BulletStringView(
                      "You must use themarathamangal.com Service in a manner consistent with any and all applicable local, state, and federal laws and regulations.",
                      "terms"),
                  BulletStringView(
                      "You are not permitted to create multiple profiles. If marathamangal.com is aware that you have created multiple profiles, your membership will be liable to be terminated forthwith without any refund of subscription fees.",
                      "terms"),
                  TermsDescriptionView(
                      "If at any time marathamangal.com is of the view in its sole discretion that your profile contains any information or material or content which is objectionable, unlawful or illegal, marathamangal.com has the right in its sole discretion to either forthwith terminate your membership without refund of your subscription fees or delete such objectionable, illegal or unlawful information, material or content from your profile and allow you to continue as a Member."),

                  TermsTitleView("Copyright Policy:"),
                  TermsDescriptionView(
                      "You may not post, distribute, or reproduce in any way any copyrighted material, trademarks, or other proprietary information without obtaining the prior written consent of the owner of such proprietary rights. Without limiting the foregoing, if you believe that your work has been copied and posted on the Site through the marathamangal.com Service in a way that constitutes copyright infringement, please provide our Copyright Agent with the following information: an electronic or physical signature of the person authorized to act on behalf of the owner of the copyright interest; a description of the copyrighted work that you claim has been infringed; a description of where the material that you claim is infringing is located on the Site; your address, telephone number, and email address; a written statement by you that you have a good faith belief that the disputed use is not authorized by the copyright owner, its agent, or the law; and where applicable a copy of the registration certificate proving registration of copyright or any another applicable intellectual property right; a statement by you, made under a penalty of perjury, that the above information in your Notice is accurate and that you are the copyright owner or authorized to act on the copyright owner's behalf. marathamangal.com Copyright Agent for Notice of claims of copyright infringement can be reached by writing to the Web team Private Limited, Nashik office address located under the contact us section on the site."),

                  TermsTitleView("Members Disputes:"),
                  TermsDescriptionView(
                      "a) Your Interaction with other Members & Member Disputes You is solely responsible for your advertisement/communications with other marathamangal.com Members. marathamangal.com reserves right, but has no obligation, to monitor disputes between you and other Members. marathamangal.com also reserves the right to take appropriate action against errant members. However, marathamangal.com is not obliged to share such action another member, including complainants. marathamangal.com expressly disclaims any responsibility or liability for any transaction or interactions between the members inter-section"),
                  TermsDescriptionView(
                      "b) Mention your marital status at as actual like divorcee, Widow/Widower, separated, unmarried etc."),
                  TermsDescriptionView(
                      "c) Registered member totally responsible for their marital status updated."),
                  TermsDescriptionView(
                      "d) In the case of a divorcee, the member should be asked respective document of complete information of divorcee procedure and then go for further information and process for matchmaking."),
                  TermsDescriptionView(
                      "e) In case of widow/widower, you initially verify the death certificate of husband or wife then go for further information and process for matchmaking."),
                  TermsDescriptionView(
                      "f) If the member gets married then he/she should give information to marathamangal.com to delete the profile."),

                  TermsTitleView("Privacy:"),
                  TermsDescriptionView(
                      "Use of the marathamangal.com Site and/or the marathamangal.com Service is governed by the marathamangal.com Privacy Policy."),

                  TermsTitleView("Disclaimers:"),
                  TermsDescriptionView(
                      "marathamangal.com is not responsible for any incorrect or inaccurate Content posted on the Site or in connection with the marathamangal.com Service, whether caused by users visiting the site, Members or by any of the equipment or programming associated with or utilized in the Service, nor for the conduct of any user and/or Member of the marathamangal.com Service whether online or offline. marathamangal.com assumes no responsibility for any error, omission, interruption, deletion, defect, delay in operation or transmission, communications line failure, theft or destruction or unauthorized access to, or alteration of, user and/or Member communications. marathamangal.com is not responsible for any problems or technical malfunction of any telephone network or lines, computer on-line systems, servers or providers, computer equipment, software, failure of email or players on account of technical problems or traffic congestion on the Internet or at any website or combination thereof, including injury or damage to users and/or Members or to any other person's computer related to or resulting from participating or downloading materials in connection with the marathamangal.com Site and/or in connection with the marathamangal.com Service. Under no circumstances will marathamangal.com be responsible for any loss or damage to any person resulting from anyone's use of the Site or the Service and/or any Content posted on the marathamangal.com Site or transmitted to marathamangal.com Members. The exchange of profile(s) through or by marathamangal.com should not in any way is construed as an offer and/or recommendation from/by marathamangal.com. marathamangal.com shall not be responsible for any loss or damage to any individual arising out of, or subsequent to, relations established pursuant to the use of marathamangal.com. The Site and the Service are provided 'AS-IS AVAILABLE BASIS' and marathamangal.com expressly disclaims any warranty of fitness for a particular purpose or non-infringement. marathamangal.com cannot guarantee and does not promise any specific results from use of the Site and/or the marathamangal.com Service."),
                  TermsTitleView("Limitation of Liability:"),
                  TermsDescriptionView(
                      "Except in jurisdictions where such provisions are restricted, in no event will marathamangal.com be liable to you or any the third person for any indirect, consequential, exemplary, incidental, special or punitive damages, including also lost profits arising from your use of the Site or the marathamangal.com Service, even if marathamangal.com has been advised of the possibility of such damages. Notwithstanding anything to the contrary contained herein, marathamangal.com, liability to you for any cause whatsoever, and regardless of the form of the action, will at all times be limited to the amount paid, if any, by you to marathamangal.com, for the Service during the term of membership."),

                  TermsTitleView("Dispute:"),
                  TermsDescriptionView(
                      "If there is any dispute about or involving the Site and/or the Service, by using the Site, you agree that the dispute will be governed by the laws of India. You agree to the exclusive jurisdiction to the courts of Pune, Maharashtra India. 423203"),

                  TermsTitleView("Indemnity:"),
                  TermsDescriptionView(
                      "You agree to indemnify and hold marathamangal.com, its subsidiaries, directors, affiliates, officers, agents, and other partners and employees, harmless from any loss, liability, claim, or demand, including reasonable attorney's fees, made by any third party due to or arising out of your use of the Service in violation of this Agreement and/or arising from a breach of these Terms of Use and/or any breach of your representations and warranties set forth above. Other. By becoming a Member of the Site / marathamangal.com Service, you agree to receive certainly specific emails from marathamangal.com. This Agreement, accepted upon use of the Site and further affirmed by becoming a Member of the marathamangal.com Service contains the entire agreement between you and marathamangal.com regarding the use of the Site and/or the Service. If any provision of this Agreement is held invalid, the remainder of this The agreement shall continue in full force and effect. You are under an obligation to report any misuse or abuse of the Site. If you notice any abuse or misuse of the Site or anything which is in violation of this Agreement, you shall forthwith report such violation to marathamangal.com by writing to Customer Care. On receipt of such complaint, marathamangal.com may investigate such complaint and if necessary may terminate the membership of the Member is responsible for such violation abuse or misuse without any refund of the subscription fee. Any false complaint made by a Member shall make such Member liable for termination of his / her membership without any refund of the subscription fee."),

                  TermsTitleView("Verification Process:"),
                  TermsDescriptionView(
                      "marathamangal.com has provided the verification score to all the members depend on their document submission status. In this case, marathamangal.com treats Verification score as a document submission score. marathamangal.com never guaranty for the authenticity and reliability of the documents. “marathamangal.com always suggesting to users after finding the match profiles on our website, please don’t trust fully on the information provided on the website. Try to get the maximum information on your own. marathamangal.com never respond to any wrong information provided by the user on the website”"),

                  TermsTitleView("After Marriage:"),
                  TermsDescriptionView(
                      "After marriage, if there will be any dispute or any a condition which leads to break the relationship of the concerned member’s it will consider as their personal issues. marathamangal.com will not responsible in any manner in any condition for this issue other:"),
                  TermsDescriptionView(
                      "By becoming a Member of the Site / marathamangal.com Service, you agree to receive certain specific emails from marathamangal.com."),
                  TermsDescriptionView(
                      "This Agreement, accepted upon use of the Site and further affirmed by becoming a Member of the marathamangal.com Service, contains the entire agreement between you and marathamangal.com regarding the use of the Site and/or the Service. If any provision of this The agreement is held invalid, the remainder of this Agreement shall continue in full force and effect."),
                  TermsDescriptionView(
                      "You are under an obligation to report any misuse or abuse of the Site. If you notice any abuse or misuse of the Site or anything which is in violation of this Agreement, you shall forthwith report such violation to marathamangal.com by writing to Customer Care. On receipt of such complaint, marathamangal.com may investigate such complaint and if necessary may terminate the membership of the Member responsible for such violation abuse or misuse without any refund of the subscription fee. Any false complaint made by a Member shall make such Member liable for termination of his / her membership without any refund of the subscription fees."),

                  TermsTitleView("Contact Limit Specifications:"),
                  TermsDescriptionView(
                      "Whatever Contact limits allowed to the member as per membership plan, the member can see the match Profiles/Contacts of same specified caste."),

                  TermsTitleView("Provide Valid Information:"),
                  TermsDescriptionView(
                      "For membership of Bride (Female), it is intimated to the Bride & their Parents to put the contact number/details of their Parents only to avoid any misuse."),

                  TermsTitleView("Limited Data:"),
                  TermsDescriptionView(
                      "Member can select/search Bride & Groom from available data only. Apart from these available data, we are not responsible to provide more data."),

                  TermsTitleView("Misuse:"),
                  TermsDescriptionView(
                      "If any member doing misuse of membership Profile data then his/her profile will be deleted immediately without any intimation."),

                  TermsTitleView("Fees:"),
                  TermsDescriptionView("Subscriptions Fees are not Refundable."),
                  TermsDescriptionView(
                      "Please contact us with any questions regarding this Agreement."),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}
