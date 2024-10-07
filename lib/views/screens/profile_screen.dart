import 'package:client/utils/app_constants/app_colors.dart';
import 'package:client/views/screens/change_info_screen.dart';
import 'package:client/views/screens/language_screen.dart';
import 'package:client/views/screens/sign_up_screen.dart';
import 'package:client/views/widgets/universal_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 96.w,
                height: 96.h,
                child: CircleAvatar(
                  child: Image.asset("assets/images/profile.png"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8, bottom: 22),
                child: Text(
                  "Khatamov Nuriddin",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 24,
                      color: AppColors.whiteBlack),
                ),
              ),
              UniversalButtonWidget(
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => ChangeInfoScreen()));
                },
                color: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Ma’lumotlarni o’zgartirish",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
              const Gap(6),
              UniversalButtonWidget(
                function: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => const LanguageScreen()));
                },
                color: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Tilni o’zgartirish",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
              const Gap(6),
              UniversalButtonWidget(
                function: () {},
                color: null,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Ommaviy offerta",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
              const Gap(6),
              UniversalButtonWidget(
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => SignUpScreen()));
                },
                color: AppColors.darkBlack,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Akkauntdan chiqish",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
