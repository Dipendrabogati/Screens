import 'package:flutter/material.dart';

class CustomOtlnBtn extends StatelessWidget {
  const CustomOtlnBtn({super.key, required this.width, required this.height, this.color2, required this.color, required this.text});
  final double width;
  final double height;
  final Color? color2;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },child: Container(
      height: height,
      width:width,
      decoration: BoxDecoration(
        color: color2,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1,color:color
        )
      ),
      child: Center(
        child: ReusableText(text:text,
         style:appstyle(18,color,FontWeight.bold)
        ),
      ),
    ),
    );
  }
}
