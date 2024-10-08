import 'package:client/utils/app_constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class AboutVirusScreen extends StatefulWidget {
  const AboutVirusScreen({super.key});

  @override
  State<AboutVirusScreen> createState() => _AboutVirusScreenState();
}

class _AboutVirusScreenState extends State<AboutVirusScreen> {
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
              right: 0,
              top: -70,
              child: SvgPicture.asset("assets/svgs/rightbackground.svg")),
          Positioned(
              bottom: -30,
              left: 0,
              child: SvgPicture.asset("assets/svgs/bottomleft.svg")),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 6),
                child: Text(
                  "Corona virusga davo\ntopildi!",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 22.sp,
                      color: AppColors.whiteBlack),
                ),
              ),
              Gap(15.h),
              Center(
                child: SizedBox(
                    width: 136.w,
                    height: 138.h,
                    child: Image.asset("assets/images/virus.png")),
              ),
              Text(
                "Amerikalik olimlar Corona, yani Covid-19 uchun vaksina o’ylab topishti, O’zbekiston davlat sog’liqni saqlash vazirligi O’zbekiston aholisiga ham shu vaksinani qabul qilishlarini aytishmoqda.  Amerikalik olimlar Corona, yani Covid-19 uchun vaksina o’ylab topishti, O’zbekiston davlat sog’liqni saqlash vazirligi O’zbekiston aholisiga ham shu vaksinani qabul qilishlarini aytishmoqda.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: AppColors.whiteGrey3),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
