import 'package:client/utils/app_constants/app_colors.dart';
import 'package:client/utils/fonts/fonts.dart';
import 'package:client/views/screens/main_screen.dart';
import 'package:client/views/widgets/custom_textfield.dart';
import 'package:client/views/widgets/universal_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmationScreen extends StatelessWidget {
  ConfirmationScreen({super.key});

  final _textFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
              right: 5,
              top: 0,
              child: SvgPicture.asset("assets/svgs/rightbackground.svg")),
          Positioned(
              bottom: 0,
              left: 0,
              child: SvgPicture.asset("assets/svgs/bottomleft.svg")),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 56.w,
                        height: 65.h,
                        child: Image.asset("assets/images/logo.png")),
                    Gap(6.h),
                    Text("MZI Clinic", style: CustomFonts.lexendDeca)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(9),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text("Tasdiqlash", style: CustomFonts.lato80024),
                    ),
                    Gap(4.w),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text("SMS kod:", style: CustomFonts.lato400),
                    ),
                    CustomTextfield(
                      hintText: "SMS kodni kiriting",
                      controller: _textFieldController,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Nomerni o’zgartirish",
                            style: CustomFonts.lexendTera),
                      ],
                    ),
                  ],
                ),
                UniversalButtonWidget(
                  function: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) => MainScreen()));
                  },
                  color: null,
                  child: Text(
                    "Tasdiqlash",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.lexendTera().fontFamily,
                        fontSize: 15.sp),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
