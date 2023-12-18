import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_pro/presentation_layer/Constats/colors.dart';

class ListTileWidget extends StatelessWidget {
  final String textTile;
  final Icon iconTile;
  final Color colorText ;
  ListTileWidget({required this.textTile, required this.iconTile, this.colorText=Colors.grey});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: iconTile,
      title: Text(
        textTile,
        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold,color: colorText),
      ),
    );
  }
}
