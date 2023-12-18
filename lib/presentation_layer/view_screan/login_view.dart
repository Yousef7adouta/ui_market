import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constats/colors.dart';
import '../view_shared_widgets/container_joinus.dart';
import '../view_shared_widgets/textfield_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.w, left: 10.w),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
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
              Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / 7),
                  child: Text(
                    "Log in",
                    style: TextStyle(fontSize: 25.sp),
                  )),
              Padding(
                padding: REdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 6.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 15),
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
              ),
              Text(
                "----------------------- or -----------------------",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.width / 10),
                child: Column(
                  children: [
                    MyTextField(
                      iconx: Icon(
                        Icons.email,
                        size: 30.w,
                      ),
                      Type: TextInputType.emailAddress,
                      Ispassword: false,
                      hint: "Email",
                    ),
                    MyTextField(
                      iconx: Icon(
                        Icons.lock,
                        size: 30.w,
                      ),
                      Type: TextInputType.emailAddress,
                      Ispassword: true,
                      hint: "Password",
                    ),
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "dashboard");
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
                        "Login",
                        style: TextStyle(fontSize: 18.sp, color: Colors.white),
                      )))),
              TextButton(onPressed: () {}, child: Text("I forget my password")),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 5),
                child: Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "register");
                        },
                        child: Text(
                          "Sign up",
                          style: (TextStyle(
                              fontSize: 18.sp, fontWeight: FontWeight.w500)),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 2.5,
                    top: MediaQuery.of(context).size.width / 28),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
