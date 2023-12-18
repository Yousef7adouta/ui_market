import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Constats/colors.dart';
import '../view_shared_widgets/container_joinus.dart';

class JoinUS extends StatelessWidget {
  const JoinUS({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 2,
                  top: MediaQuery.of(context).size.width / 50),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Image.asset(
                  "assets/images/1.jpeg",
                  height: MediaQuery.of(context).size.height / 25,
                ),
                Column(
                  children: [
                    Text(
                      "XOSIGNALS",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: logoColorBlue,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "WHERE INSIGHT COMES FROM",
                      style: TextStyle(
                          fontSize: 8.sp,
                          color: logoColorBlue,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ]),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 90),
                child: Row(
                  children: [
                    ContainerJoin(
                        widthNum: 10,
                        hightNum: 10,
                        boaderRadius: 20,
                        colorBoarder: grayColor,
                        marginNum: 5,
                        paddinNum: 5,
                        iconWedget: Icon(
                          Icons.rocket_launch,
                          color: grayColor,
                        )),
                    Text("Recieve FREE daily trading indicators"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 90),
                child: Row(
                  children: [
                    ContainerJoin(
                        widthNum: 10,
                        hightNum: 10,
                        boaderRadius: 20,
                        colorBoarder: grayColor,
                        marginNum: 5,
                        paddinNum: 5,
                        iconWedget: Icon(
                          Icons.network_cell,
                          color: grayColor,
                        )),
                    Text("Trend,resistance & support indicators"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 90),
                child: Row(
                  children: [
                    ContainerJoin(
                      widthNum: 10,
                      hightNum: 10,
                      boaderRadius: 20,
                      colorBoarder: grayColor,
                      marginNum: 5,
                      paddinNum: 5,
                      iconWedget: Icon(
                        Icons.pie_chart_rounded,
                        color: grayColor,
                      ),
                    ),
                    Text("Get access to all technical analysis"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 90),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ContainerJoin(
                        widthNum: 10,
                        hightNum: 10,
                        boaderRadius: 20,
                        colorBoarder: grayColor,
                        marginNum: 5,
                        paddinNum: 5,
                        iconWedget: Icon(
                          Icons.chat_bubble_outlined,
                          color: grayColor,
                        )),
                    Text("Chat with other users"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 90),
                child: Row(
                  children: [
                    ContainerJoin(
                        widthNum: 10,
                        hightNum: 10,
                        boaderRadius: 20,
                        colorBoarder: grayColor,
                        marginNum: 5,
                        paddinNum: 5,
                        iconWedget: Icon(
                          Icons.telegram,
                          color: grayColor,
                        )),
                    Text("Explore with other market news"),
                  ],
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 15),
                    child: Image.asset(
                      "assets/images/facebook.png",
                      height: MediaQuery.of(context).size.height / 17,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Image.asset(
                      "assets/images/google.png",
                      height: MediaQuery.of(context).size.height / 17,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "-------------------------------- or --------------------------------",
              style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "register");
                },
                child: ContainerJoin(
                    widthNum: 2,
                    hightNum: 8,
                    boaderRadius: 2,
                    colorBoarder: grayColor,
                    marginNum: 5,
                    paddinNum: 5,
                    backGroundColor: blueColor,
                    iconWedget: Center(
                        child: Text(
                      "Email",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white),
                    )))),
            Row(
              children: [
                Text(
                  "Already have an account?",
                  style:
                      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "login");
                    },
                    child: Text(
                      "Login",
                      style: (TextStyle(
                          fontSize: 18.sp, fontWeight: FontWeight.w500)),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 5),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "privacy policy",
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Terms & conditions",
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: blackColor),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 3,
                  bottom: MediaQuery.of(context).size.width / 12),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Text(
                      "Need help? chat with our support team",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 11.sp, fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: ContainerJoin(
                      paddinNum: 10,
                      marginNum: 10,
                      hightNum: 7,
                      widthNum: 7,
                      boaderRadius: 10,
                      colorBoarder: grayColor,
                      iconWedget: Icon(
                        Icons.question_mark_rounded,
                        color: blueColor,
                        size: 30.w,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ]),
      ),
    );
  }
}
