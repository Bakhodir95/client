import 'package:client/utils/app_constants/app_colors.dart';
import 'package:client/utils/fonts/fonts.dart';
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
      body: Stack(clipBehavior: Clip.none, children: [
        Positioned(
            right: 5,
            top: -50,
            child: SvgPicture.asset("assets/svgs/rightbackground.svg")),
        Positioned(
            bottom: 30,
            left: 1,
            child: SvgPicture.asset("assets/svgs/bottomleft.svg")),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Tilni o’zgartirish",
                style: CustomFonts.lexendTera,
              ),
              Gap(15.h),
              UniversalButtonWidget(
                  function: () {},
                  color: null,
                  child: Text(
                    "O’zbek",
                    style: CustomFonts.lexendTera,
                  )),
              Gap(6.h),
              UniversalButtonWidget(
                  function: () {},
                  color: null,
                  child: Text(
                    "Ruscha",
                    style: CustomFonts.lexendTera,
                  )),
              const Gap(6),
              UniversalButtonWidget(
                  function: () {},
                  color: null,
                  child: Text(
                    "Inglizcha",
                    style: CustomFonts.lexendTera,
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
