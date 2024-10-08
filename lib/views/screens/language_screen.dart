import 'package:client/utils/app_constants/app_colors.dart';
import 'package:client/views/widgets/universal_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Stack(clipBehavior: Clip.none, children: [
         Positioned(
                right: 5,
                top: -70,
                child: SvgPicture.asset("assets/svgs/rightbackground.svg")),
            Positioned(
                bottom: 30,
                left: 0,
                child: SvgPicture.asset("assets/svgs/bottomleft.svg")),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tilni o’zgartirish",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                    color: AppColors.whiteBlack),
              ),
              Gap(15.h),
              UniversalButtonWidget(
                  function: () {},
                  color: null,
                  child: const Text(
                    "O’zbek",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )),
              Gap(6.h),
              UniversalButtonWidget(
                  function: () {},
                  color: null,
                  child: Text(
                    "Ruscha",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  )),
              const Gap(6),
              UniversalButtonWidget(
                  function: () {},
                  color: null,
                  child: const Text(
                    "Inglizcha",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
