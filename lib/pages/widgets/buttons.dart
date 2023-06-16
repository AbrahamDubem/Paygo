import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay_go/Component/colors.dart';

class AppButtons extends StatelessWidget {
  final double? fontSize;
  final IconData icon;
  final Function()? onTap;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? textColor;
  final String? text;

  const AppButtons({Key? key,
    this.fontSize=20,
    this.textColor=Appcolor.mainColor,
    this.iconColor=Colors.white,
    this.backgroundColor=Appcolor.mainColor,
    this.text,
    required this.icon,
    this.onTap,


  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: backgroundColor,
            ),
            child: Icon(icon, size: 30, color: iconColor,),
          ),
          text!=null?Text(
            text!,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
            ),
          ):Container()
        ],
      ),
    );
  }
}
