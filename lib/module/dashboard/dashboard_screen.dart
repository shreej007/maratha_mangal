
import 'package:app/module/login/login_binding.dart';
import 'package:app/module/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:app/common/constants/app_colours.dart';
import 'package:app/module/dashboard/dashboard_binding.dart';
import 'package:app/module/dashboard/widgets/dashboard_card.dart';
import 'package:app/module/dashboard/widgets/profile_card.dart';

import '../../common/constants/app_images.dart';
import '../search/search_binding.dart';
import '../search/search_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<DashboardScreen> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.COLOR_DROPDOWN_BACK_NEW,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    color: AppColors.theameColorRed,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.to(const LoginScreen(), binding: LoginBinding());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 4.0),
                            child: DashboardCard("Latest\nMatches", 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                          child: DashboardCard("Received\nInterests", 2),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                          child: DashboardCard("ShortListed\nMatches", 3),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 320.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 4.0),
                          child: DashboardCard("Recommended\nMatches", 4),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                          child: DashboardCard("Sent\nInterests", 5),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0, right: 8.0),
                          child: DashboardCard("Who Viewed\nMy Profile", 6),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 15.0, bottom: 15.0),
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    // textColor: Colors.white,
                    // color: AppColors.theameColorRed,
                    child: const Text(
                      "Search Profiles",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    onPressed: () {
                      Get.to(const SearchScreen(), binding: SearchBinding());
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => ActivityEditProfileScreen()),
                      // );
                    },
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(30.0),
                    // ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 220,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Best matches for you",
                                style:
                                TextStyle(color: AppColors.theameColorRed, fontFamily: 'Rubik-normal',fontSize: 14)),
                            GestureDetector(
                              onTap: () {
                                // core.storeUserListType(0);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => ActivityUserList()),
                                // );
                              },
                              child: const Text(
                                "View all",
                                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Rubik-bold'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (_listContext, index) {
                              return GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => ActivitySingleUserScreen()),
                                    // );
                                  }, child: const ProfileCard());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 220,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Newly Registered",
                                style:
                                TextStyle(color: AppColors.theameColorRed, fontFamily: 'Rubik-normal')),
                            GestureDetector(
                              onTap: () {
                                // core.storeUserListType(1);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => ActivityUserList()),
                                // );
                              },
                              child: const Text(
                                "View all",
                                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Rubik-bold'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (_listContext, index) {
                              return GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => ActivitySingleUserScreen()),
                                    // );
                                  }, child: const ProfileCard());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0)),
                  height: 220,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Profiles for you",
                                style:
                                TextStyle(color: AppColors.theameColorRed, fontFamily: 'Rubik-normal')),
                            GestureDetector(
                              onTap: () {
                                // core.storeUserListType(2);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => ActivityUserList()),
                                // );
                              },
                              child: const Text(
                                "View all",
                                style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Rubik-bold'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (_listContext, index) {
                              return GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => ActivitySingleUserScreen()),
                                    // );
                                  }, child: const ProfileCard());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   onTap: controller.onBottomBarItemTap,
        //   // selectedFontSize: 2.0,
        //   showSelectedLabels: true,
        //   currentIndex: 0,
        //   selectedLabelStyle: const TextStyle(fontSize: 12),
        //   unselectedLabelStyle: const TextStyle(fontSize: 12),
        //   type: BottomNavigationBarType.fixed,
        //   items: const [
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.home,
        //           color: AppColors.theameColorRed,
        //         ),
        //         label: 'Home'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.search,
        //           color: AppColors.COLOR_GREY,
        //         ),
        //         label: 'Search'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.heart,
        //           color: AppColors.COLOR_GREY,
        //         ),
        //         label: 'Matches'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.bell,
        //           color: AppColors.COLOR_GREY,
        //         ),
        //         label: 'Notifications'),
        //     BottomNavigationBarItem(
        //         icon: Icon(
        //           size: 26,
        //           CupertinoIcons.gear,
        //           color: AppColors.COLOR_GREY,
        //         ),
        //         label: 'Settings')
        //   ],
        // ),

        bottomNavigationBar: BottomNavigationBar(
          onTap: controller.onBottomBarItemTap,
          currentIndex: 0, // Use your dynamic index
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

      )
    );
  }
}
