import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_pro/presentation_layer/Constats/colors.dart';
import 'package:new_pro/presentation_layer/view_shared_widgets/button_shadow_view.dart';

import '../view_shared_widgets/list_tile.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int currentPage = 0;
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Drawer(
          width: MediaQuery.of(context).size.width * 3 / 4,
          child: Column(children: [
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  child: UserAccountsDrawerHeader(
                    otherAccountsPictures: [
                      Expanded(
                          child: Center(
                              child: Image.asset("assets/images/1.jpeg")))
                    ],
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color.fromARGB(255, 137, 129, 168),
                          Color.fromARGB(255, 94, 81, 107),
                        ],
                      ),
                    ),
                    currentAccountPicture: CircleAvatar(
                        radius: 150,
                        backgroundImage: AssetImage("assets/images/egypt.png")),
                    accountEmail: Text(""),
                    accountName: Row(children: [
                      Text("Youssef",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 15.sp.sp,
                          )),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: whiteColor,
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 4,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ButtonShadow(
                          btnLabel: "Unlock all features",
                          icon: Icon(
                            FontAwesomeIcons.trophy,
                            color: whiteColor,
                          ),
                          btnColor: blueColor,
                          textColor: whiteColor,
                          sizeboxWidth: 30,
                        ),
                        ListTileWidget(
                            textTile: "Technical Overview",
                            iconTile: Icon(Icons.analytics_outlined)),
                        ListTileWidget(
                            textTile: "Win Ratio",
                            iconTile: Icon(Icons.percent)),
                        ListTileWidget(
                            textTile: "Potenial Result",
                            iconTile: Icon(Icons.calculate)),
                        ListTileWidget(
                            textTile: "Past Results",
                            iconTile: Icon(Icons.access_time_filled)),
                        Text(
                          "__________________________________",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        ListTileWidget(
                            textTile: "Refer Frinds to Become VIP",
                            colorText: blueColor,
                            iconTile: Icon(
                              Icons.person_add_alt_1,
                              color: blueColor,
                            )),
                        ListTileWidget(
                            textTile: "Share the App",
                            iconTile: Icon(Icons.mobile_screen_share)),
                        ListTileWidget(
                            textTile: "Rate and Review Us",
                            iconTile: Icon(Icons.star_rate_rounded)),
                        ListTileWidget(
                            textTile: "Contact us",
                            iconTile: Icon(Icons.email)),
                        Text(
                          "__________________________________",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        ListTileWidget(
                            textTile: "View Tutorial",
                            iconTile: Icon(Icons.school_rounded)),
                        ListTileWidget(
                            textTile: "Live Support",
                            iconTile: Icon(Icons.wechat_outlined)),
                        ListTileWidget(
                            textTile: "Edit my preferences",
                            iconTile: Icon(Icons.edit)),
                        ListTileWidget(
                            textTile: "Manage Notification",
                            iconTile: Icon(Icons.notifications_sharp)),
                        ListTileWidget(
                            textTile: "Dark Mode",
                            iconTile: Icon(Icons.nights_stay)),
                        Text(
                          "__________________________________",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        ListTileWidget(
                            textTile: "About Us",
                            iconTile: Icon(Icons.info_rounded)),
                        ListTileWidget(
                            textTile: "Discover our other apps",
                            iconTile: Icon(Icons.search)),
                        ListTileWidget(
                            textTile: "Terms and Conditions",
                            iconTile: Icon(Icons.insert_drive_file_outlined)),
                        ListTileWidget(
                            textTile: "Risk Warning & Disclosure",
                            iconTile: Icon(Icons.warning_rounded)),
                        Text(
                          "__________________________________",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        ListTileWidget(
                            textTile: "Log Out",
                            iconTile: Icon(Icons.exit_to_app_rounded)),
                        Text(
                          "__________________________________",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.solidPaperPlane,
                                    color: grayDarkColor,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: grayDarkColor,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.linkedinIn,
                                    color: grayDarkColor,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FontAwesomeIcons.twitter,
                                    color: grayDarkColor,
                                  )),
                            ],
                          ),
                        ),
                        Text(
                          "__________________________________",
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height / 50,
                              bottom: MediaQuery.of(context).size.height / 50),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width * 2 / 3,
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 50),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 20.0,
                                        blurStyle: BlurStyle.inner,
                                        offset: Offset(5.0, 5.0),
                                        color: grayColor),
                                  ],
                                  color: blueColor,
                                  borderRadius: BorderRadius.circular(5.r)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Sign Up With Our Sponsored Brand",
                                      style: TextStyle(
                                          color: whiteColor, fontSize: 20.sp),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ),
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 85),
              child: Container(
                  width: MediaQuery.of(context).size.width / 8,
                  decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.circular(90.r)),
                  child: Icon(Icons.diamond_outlined)),
            )
          ],
          leading: IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: Icon(
              Icons.more_vert_rounded,
              color: blackColor,
              size: 25.sp,
            ),
          ),
          backgroundColor: whiteColor,
          elevation: 0,
          title: Center(
            child: Text(
              "Dashboard",
              style: TextStyle(color: blackColor, fontSize: 25.sp),
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
          indicatorColor: const Color.fromARGB(155, 241, 241, 241),
          destinations: const <Widget>[
            NavigationDestination(
                icon: Icon(
                  Icons.sensors,
                  size: 30,
                  color: grayColor,
                ),
                selectedIcon: Icon(Icons.sensors, color: blueColor, size: 30),
                label: ''),
            NavigationDestination(
                icon: Icon(Icons.notifications_active,
                    color: grayColor, size: 30),
                selectedIcon: Icon(Icons.notifications_active,
                    color: blueColor, size: 30),
                label: ''),
            NavigationDestination(
                icon: Icon(
                  FontAwesomeIcons.diceD6,
                  size: 50,
                  color: grayColor,
                ),
                selectedIcon:
                    Icon(FontAwesomeIcons.diceD6, color: blueColor, size: 50),
                label: ''),
            NavigationDestination(
                icon:
                    Icon(FontAwesomeIcons.compass, color: grayColor, size: 30),
                selectedIcon:
                    Icon(FontAwesomeIcons.compass, color: blueColor, size: 30),
                label: ''),
            NavigationDestination(
                icon: Icon(FontAwesomeIcons.solidComments,
                    color: grayColor, size: 30),
                selectedIcon: Icon(FontAwesomeIcons.solidComments,
                    color: blueColor, size: 30),
                label: ''),
          ],
          backgroundColor:const Color.fromARGB(155, 241, 241, 241),
        ),
        body: <Widget>[
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: const Text('Page 1'),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text('Page 2'),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text('Page 3'),
          ),
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: const Text('Page 1'),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text('Page 2'),
          ),
        ][currentPage],
      ),
    );
  }
}
