import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Constats/colors.dart';

class ButtonShadow extends StatelessWidget {
  final String btnLabel;
  final Color textColor;
  final Icon icon;
  final Color btnColor;
  final int sizeboxWidth;
  ButtonShadow(
      {required this.btnLabel,
      required this.icon,
      required this.btnColor,
      required this.textColor,
      required this.sizeboxWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 50,
          bottom: MediaQuery.of(context).size.height / 50),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          
          width: MediaQuery.of(context).size.width * 2 / 3,
          padding: EdgeInsets.all(MediaQuery.of(context).size.width/50),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 20.0,
                blurStyle: BlurStyle.inner,
                offset: Offset(5.0, 5.0),
                color: grayColor),
          ], color: btnColor, borderRadius: BorderRadius.circular(5.r)),
          child: Expanded(
            child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    icon,
                    // Icon(
                    //   FontAwesomeIcons.trophy,
                    //   color: whiteColor,
                    // ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / sizeboxWidth,
                    ),
                     Text(
                              btnLabel,
                              style: TextStyle(color: textColor, fontSize: 20.sp),
                            ),
                            
                  ],
                ),
          ),
          ),
          ),
      
      
    );
  }
}
