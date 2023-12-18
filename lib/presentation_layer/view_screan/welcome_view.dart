import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_pro/presentation_layer/Constats/colors.dart';
import 'package:new_pro/presentation_layer/view_screan/joinus_view.dart';
import 'package:new_pro/presentation_layer/view_shared_widgets/container.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../list_containers.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int i = 1;
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.height / 27),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset(
                          "assets/images/1.jpeg",
                          height: MediaQuery.of(context).size.height / 21,
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "joinus");
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: grayColor,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: CarouselSlider(
                    items: Containarss.map((e) => ContainerWedgit(
                          index: e.index,
                          color1: e.color1,
                          textTitle: e.textTitle,
                          textDescription: e.textDescription,
                        )).toList(),
                    options: CarouselOptions(
                      
                        onPageChanged: (index, reason) {
                          
                          setState(() {
                            i = index + 1;
                            if (i <= 3) {
                               i = index + 1;
                            }
                            else{
                              Navigator.pushNamed(context, "joinus");
                            }
                          });
                        },
                        height: MediaQuery.of(context).size.height / 3,
                        enableInfiniteScroll: false,
                        enlargeCenterPage: true),
                    carouselController: buttonCarouselController,
                  ),
                  // SizedBox(height: MediaQuery.of(context).size.width/5,)
                ),
                Center(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.all(
                                MediaQuery.of(context).size.height / 20),
                            child: CircularPercentIndicator(
                              radius: 40.r,
                              progressColor: Colors.blue,
                              backgroundColor:
                                  Color.fromARGB(255, 195, 195, 202),
                              percent: i / 4,
                              animation: true,
                              lineWidth: 20.w,
                              animateFromLastPercent: true,
                              animationDuration: 1000,
                              circularStrokeCap: CircularStrokeCap.round,
                            )),
                        Padding(
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.height / 15),
                          child: IconButton(
                              onPressed: () {
                                buttonCarouselController.nextPage();
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios_outlined,
                                size: 50.w,
                              )),
                        ),
                      ]),
                )
              ])),
    );
  }
}
