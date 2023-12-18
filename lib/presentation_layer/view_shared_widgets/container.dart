import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_pro/presentation_layer/Constats/colors.dart';

class ContainerWedgit extends StatelessWidget {
  final Color color1;
  final String textTitle;
  final String textDescription;
  final int index;

  ContainerWedgit(
      {super.key,
      required this.color1,
      required this.textTitle,
      required this.textDescription,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(5),
      // padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: color1),
      child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                textTitle,
                style: TextStyle(
                    fontSize: 25.sp,
                    color: blueColor,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 16,
              ),
              Text(
                textDescription,
                style: TextStyle(
                    fontSize: 15.sp,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              )
            ]),
            
      
    );
  }
}
