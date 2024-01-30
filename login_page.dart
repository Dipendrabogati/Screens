import 'package:flutter/material.dart';
import 'package:whatsapp_clone/demo_file.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Image.network('src'),
              ),
              HeightSpacer(20),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left:16),
                child: ReusableText("Please enter your phone number ",
                 style:appstyle(17,AppConsts.kLight,FontWeight.w600),
                ),
              ),
              HeightSpacer(20),
              Center(
                child: CustomTextField(),
              ),
              HeightSpacer(20),
              CustomOtlnBtn(
                  width: AppConsts.kWidth*0.9,
                  height: AppConsts.kHeight*0.07,
                  color: AppConsts.kBkDark,
                  color2: AppConsts.kLight,
                  text: "Send Code"
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Custom Text Widget
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.keyboardType,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.hintStyle,
    this.controller,
    this.onChanged
  });
  
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppConsts.kWidth*0.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon,
          prefixIcon:prefixIcon,
          suffixIconColor: AppConsts.kBkDark,
          hintStyle: hintStyle,
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(color: Colors.red,width: 0.5),
          )
        ),
      ),
    );
  }
}


