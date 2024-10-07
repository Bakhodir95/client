import 'package:client/utils/app_constants/app_colors.dart';
import 'package:client/views/widgets/custom_textfield.dart';
import 'package:client/views/widgets/universal_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp,
                        color: AppColors.lightBlack),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(9),
                  Text(
                    "Ro’yhatdan o’tish",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22.sp,
                        color: AppColors.whiteBlack),
                  ),
                  Gap(4.w),
                  Text(
                    "Telefon raqam:",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: AppColors.whiteBlack),
                  ),
                  const CustomTextfield(),
                ],
              ),
              UniversalButtonWidget(
                  function: () {},
                  child: Text(
                    "SMS yuborish",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
