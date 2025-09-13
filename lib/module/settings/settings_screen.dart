import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app/common/constants/app_colours.dart';
import 'package:app/module/dashboard/dashboard_screen.dart';
import 'package:app/module/settings/settings_binding.dart';
import 'package:app/module/settings/widgets/setting_menu_card.dart';

class SettingsScreen extends StatefulWidget {
  @override
  SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GetBuilder<SettingsController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SettingMenuCard("About Us", 1),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                  ),
                  SettingMenuCard("Membership", 2),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                  ),
                  SettingMenuCard("Rules", 3),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                  ),
                  SettingMenuCard("FAQ's", 4),
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  //   child: Divider(
                  //     color: Colors.black,
                  //     thickness: 0.2,
                  //   ),
                  // ),
                  // SettingMenuCard("Contact Us", 5),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                  ),
                  SettingMenuCard("Help Center", 6),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                  ),
                  SettingMenuCard("Terms and Conditions", 7),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Divider(
                      color: Colors.black,
                      thickness: 0.2,
                    ),
                  ),
                  SettingMenuCard("Privacy Policy", 8)
                ],
              ),
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   onTap: controller.onBottomBarItemTap,
        //   // selectedFontSize: 2.0,
        //   showSelectedLabels: true,
        //   selectedLabelStyle: const TextStyle(fontSize: 12),
        //   unselectedLabelStyle: const TextStyle(fontSize: 12),
        //   type: BottomNavigationBarType.fixed,
        //   currentIndex: 4,
        //   items: const [
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.home,
        //           color: AppColors.textLightGrey,
        //         ),
        //         label: 'Home'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.search,
        //           color: AppColors.textLightGrey,
        //         ),
        //         label: 'Search'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.heart,
        //           color: AppColors.textLightGrey,
        //         ),
        //         label: 'Matches'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.bell,
        //           color: AppColors.textLightGrey,
        //         ),
        //         label: 'Notifications'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.gear,
        //           color: AppColors.primary,
        //         ),
        //         label: 'Settings')
        //   ],
        // ),

        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.onBottomBarItemTap,
          currentIndex: 4, // Use your dynamic index
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          selectedItemColor: AppColors.theameColorRed,
          unselectedItemColor: AppColors.COLOR_GREY,
          selectedLabelStyle: const TextStyle(fontSize: 12),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, size: 26),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search, size: 26),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart, size: 26),
              label: 'Matches',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bell, size: 26),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.gear, size: 26),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }

}
