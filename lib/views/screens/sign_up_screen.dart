import 'package:client/utils/app_constants/app_colors.dart';
import 'package:client/views/screens/confirmation_screen.dart';
import 'package:client/views/widgets/custom_textfield.dart';
import 'package:client/views/widgets/universal_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(child: SvgPicture.asset("assets/svgs/leftbackground.svg")),
          Positioned(
              bottom: 0,
              right: 0,
              child: SvgPicture.asset("assets/svgs/bottomright.svg")),
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
                    Text(
                      "MZI Clinic",
                      style: TextStyle(
                        fontFamily: GoogleFonts.lexendDeca().fontFamily,
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp,
                        color: AppColors.lightBlack,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        "Ro’yhatdan o’tish",
                        style: TextStyle(
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.w700,
                            fontSize: 22.sp,
                            color: AppColors.whiteBlack),
                      ),
                    ),
                    Gap(9.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        "Telefon raqam:",
                        style: TextStyle(
                            fontFamily: GoogleFonts.lato().fontFamily,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: AppColors.whiteBlack),
                      ),
                    ),
                    CustomTextfield(
                      hintText: "Telefon raqam",
                      controller: _textFieldController,
                    ),
                  ],
                ),
                UniversalButtonWidget(
                    function: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => ConfirmationScreen()));
                    },
                    color: null,
                    child: Text(
                      "SMS yuborish",
                      style: TextStyle(
                          fontFamily: GoogleFonts.lexendTera().fontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
