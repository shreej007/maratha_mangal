
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/module/rules/rules_binding.dart';
import 'package:app/module/rules/widgets/bullet_string_view.dart';

class RulesScreen extends StatefulWidget {
  const RulesScreen({Key? key}) : super(key: key);

  @override
  RulesState createState() => RulesState();
}

class RulesState extends State<RulesScreen>{

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RulesController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Rules"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Column(
              children: [
                BulletStringView(
                    "सदर संकेतस्थाळावर फक्त मराठा समाजाच्या वधूवरांची नोंदणी केली जाते.",
                    ""),
                BulletStringView(
                    "आपण घेतलेल्या स्थळांना आपला इंटरेस्ट एस.एम.एस. व इ-मेल ने पाठवला जातो.",
                    ""),
                BulletStringView(
                    "एस.एम.एस. व इ-मेल ने मॅचिंग स्थळे पाठवली जातात.", ""),
                BulletStringView(
                    "या संकेतस्थाळावर संपूर्ण महाराष्ट्रातील बहुसंख्य मराठा उच्चशिक्षित स्थळे नोंदविली आहेत.",
                    ""),
                BulletStringView(
                    "एकदा भरलेली फी कोणत्याही सबबीखाली परत मिळणार नाही.", ""),
                BulletStringView(
                    "नाव नोंदणीसाठी संस्थेचा रेजिस्ट्रेशन फॉर्म फोटोसहित संकेतस्थळावरून भरून द्यावा.",
                    ""),
                BulletStringView(
                    "नाव नोंदणी केल्यावर सभासदांनी, गेल्या वर्षभरात नोंदणी केलेल्या स्थळातून आपल्या स्थळास अनुरूप असलेल्या स्थळांची माहिती घेऊन संबंधितांशी संपर्क करावा.",
                    ""),
                BulletStringView(
                    "आपण संपर्क केलेल्या सभासदांना आपला नोंदणी क्रमांक सांगितल्यास ते आपली माहिती व फोटो संकेतस्थळावर पाहू शकतात.",
                    ""),
                BulletStringView(
                    "एका सभासदाला दर आठ दिवसातून त्याचे स्थळाला मॅच होणारे जास्तीत जास्त दहा बायोडाटे घेता येतात.",
                    ""),
                BulletStringView(
                    "विवाहयोग जुळून आल्यावर त्या संबंधीची माहिती कार्यलयास कळविणे.",
                    ""),
                BulletStringView(
                    "आपण घेतलेल्या स्थळांच्या माहितीची खातरजमा आपले नातलग, मित्र मंडळींमार्फत करून घ्यावी. भविष्यात काही प्रश्न उपस्थित झाल्यास त्यास संस्था जबाबदार राहणार नाही. ती जबाबदारी सभासदांची आहे.",
                    ""),
                BulletStringView(
                    "नाव नोंदणी नंतर विवाह जमेलच किंवा अमुक दिवसात विवाह जमेल याची खात्री किंवा हमी संस्था देऊ शकत नाही.",
                    ""),
                BulletStringView(
                    "पालकांनी मुला/मुलींचा बायोडाटा पाहून त्यांची शैक्षणिक पात्रता, आर्थिक कुवत, शारीरिक अनुरूपता व अपेक्षा लक्षात घेऊन त्याप्रमाणे स्थळे घ्यावीत.",
                    ""),
                BulletStringView(
                    "संस्थेकडून नेलेल्या माहितीचा कोणीही गैरवापर करू नये. तसे आढळल्यास संबंधित सभासदाचे सभासदत्व त्वरित रद्द केले जाईल.",
                    ""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
