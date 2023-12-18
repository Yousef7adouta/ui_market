import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_pro/presentation_layer/Constats/colors.dart';

class MyTextField extends StatelessWidget {
  final TextInputType Type;
  final bool Ispassword;
  final String hint;
  final Icon iconx;
  MyTextField({
    super.key,
    required this.Type,
    required this.Ispassword,
    required this.hint,
    required this.iconx,
  });

  @override
  Widget build(BuildContext context) {
return TextField(
  keyboardType: Type,
  obscureText: Ispassword,
  
  decoration: InputDecoration(
    enabledBorder:UnderlineInputBorder(borderSide: BorderSide(width: 2.w,style: BorderStyle.solid,color: blackColor )),
    border: InputBorder.none,
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(width: 2.w,style: BorderStyle.solid,color: blackColor )),
    prefixIconColor:  Color.fromARGB(164, 107, 107, 240),
    hintText: hint,
    filled: false,
    icon:iconx 
    

  ),
);
  }
}
