import 'package:flutter/cupertino.dart';
import 'package:pay_go/Component/colors.dart';

class AppLargeButton extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  final Function()? onTap;
  final bool? isBorder;

  const AppLargeButton({Key? key,
     this.backgroundColor =Appcolor.mainColor,
     this.textColor,
     this.onTap,
     this.isBorder =false,
     required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 30,right: 30,),
        height: 60,
        width: MediaQuery.of(context).size.width-60,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 2,
            color: Appcolor.mainColor
          )
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color:textColor,

            ),
          ),
        ),
      ),
    );
  }
}
