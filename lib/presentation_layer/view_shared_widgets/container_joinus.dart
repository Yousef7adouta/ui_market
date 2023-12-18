import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constats/colors.dart';

class ContainerJoin extends StatelessWidget {
 final  Color backGroundColor;
  final double? widthNum;
  final double? hightNum;
  final double? paddinNum;
  final double? marginNum;
  final double boaderRadius;
  final Color colorBoarder;
  final Widget iconWedget;
  ContainerJoin(
      {super.key,
      this.widthNum,
      this.hightNum,
      required this.boaderRadius,
      required this.colorBoarder,
      this.marginNum,
      this.paddinNum,
      this.backGroundColor=const Color.fromARGB(0, 255, 255, 255),
      required this.iconWedget});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.all(marginNum!.w),
      padding: EdgeInsets.all(paddinNum!.w),
      width: MediaQuery.of(context).size.width / widthNum!,
      height: MediaQuery.of(context).size.width / hightNum!,
      decoration: BoxDecoration(
        // boxShadow:  [
        //             BoxShadow(
        //               color: Colors.grey,
        //               offset: const Offset(
        //                 5.0,
        //                 5.0,
        //               ),
        //               blurRadius: 10.0,
        //               spreadRadius: 2.0,
        //             ), //BoxShadow
        //             BoxShadow(
        //               color: Colors.white,
        //               offset: const Offset(0.0, 0.0),
        //               blurRadius: 0.0,
        //               spreadRadius: 0.0,
        //             ), //BoxShadow
        //           ] ,
        color: backGroundColor,
        border: Border.all(
          color: colorBoarder,
        ),
        borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.width / boaderRadius),
      ),
      child: iconWedget,
    );
  }
}
