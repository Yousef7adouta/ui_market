import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_pro/presentation_layer/view_shared_widgets/container_joinus.dart';
import 'package:new_pro/presentation_layer/view_shared_widgets/textfield_view.dart';

import '../Constats/colors.dart';

class RegiserPage extends StatefulWidget {
  const RegiserPage({super.key});

  @override
  State<RegiserPage> createState() => _RegiserPageState();
}

class _RegiserPageState extends State<RegiserPage> {
  bool checkclicked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.w, left: 10.w),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
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
                        top: MediaQuery.of(context).size.width / 15,
                        left: MediaQuery.of(context).size.width / 15),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios_new_rounded)),
                        Padding(
                            padding: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width / 4,
                            ),
                            child: Text(
                              "Sign up",
                              style: TextStyle(fontSize: 20.sp),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 10),
                    child: Column(
                      children: [
                        MyTextField(
                          iconx: Icon(
                            Icons.person,
                            size: 30.w,
                          ),
                          Type: TextInputType.name,
                          Ispassword: false,
                          hint: "Full Name",
                        ),
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
                  Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 25),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 50),
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      checkclicked = !checkclicked;
                                    });
                                  },
                                  child: checkclicked
                                      ? ContainerJoin(
                                          boaderRadius: 100,
                                          widthNum: 20,
                                          hightNum: 20,
                                          marginNum: 10,
                                          paddinNum: 0,
                                          colorBoarder: blackColor,
                                          iconWedget: Icon(
                                            Icons.check,
                                            size: 15.h,
                                            color: blueColor,
                                          ))
                                      : ContainerJoin(
                                          boaderRadius: 100,
                                          widthNum: 20,
                                          hightNum: 20,
                                          marginNum: 10,
                                          paddinNum: 0,
                                          colorBoarder: Colors.red,
                                          iconWedget: Icon(
                                            Icons.check,
                                            size: 0.h,
                                          ))),
                              Text("I have read and accept the"),
                              Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Text("Terms & Conditions"))),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width / 50),
                          child: Row(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      checkclicked = !checkclicked;
                                    });
                                  },
                                  child: checkclicked
                                      ? ContainerJoin(
                                          boaderRadius: 100,
                                          widthNum: 20,
                                          hightNum: 20,
                                          marginNum: 10,
                                          paddinNum: 0,
                                          colorBoarder: blackColor,
                                          iconWedget: Icon(
                                            Icons.check,
                                            size: 15.h,
                                            color: blueColor,
                                          ))
                                      : ContainerJoin(
                                          boaderRadius: 100,
                                          widthNum: 20,
                                          hightNum: 20,
                                          marginNum: 10,
                                          paddinNum: 0,
                                          colorBoarder: Colors.red,
                                          iconWedget: Icon(
                                            Icons.check,
                                            size: 0.h,
                                          ))),
                              Text("I have read and accept the"),
                              TextButton(
                                  onPressed: () {},
                                  child: Text("Privacy Policy")),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.of(context).size.width / 50,
                              right: MediaQuery.of(context).size.width / 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      checkclicked = !checkclicked;
                                    });
                                  },
                                  child: checkclicked
                                      ? ContainerJoin(
                                          boaderRadius: 100,
                                          widthNum: 20,
                                          hightNum: 20,
                                          marginNum: 10,
                                          paddinNum: 0,
                                          colorBoarder: blackColor,
                                          iconWedget: Icon(
                                            Icons.check,
                                            size: 15.h,
                                            color: blueColor,
                                          ))
                                      : ContainerJoin(
                                          boaderRadius: 100,
                                          widthNum: 20,
                                          hightNum: 20,
                                          marginNum: 10,
                                          paddinNum: 0,
                                          colorBoarder: Colors.red,
                                          iconWedget: Icon(
                                            Icons.check,
                                            size: 0.h,
                                          ))),
                              Stack(children: [
                                Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Text(
                                        "I hereby consent to the collection, storage and proccessing of my personal data in accordance with your ")),
                                Positioned(
                                    right: 17.w,
                                    bottom: -15.w,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text("Privacy Policy")))
                              ]),
                              // TextButton(onPressed: (){}, child: Text("Privacy Policy")),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {},
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
                            "Create account",
                            style:
                                TextStyle(fontSize: 18.sp, color: Colors.white),
                          )))),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 5),
                    child: Row(
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "login");
                            },
                            child: Text(
                              "Login",
                              style: (TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500)),
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
