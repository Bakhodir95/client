import 'package:client/utils/app_constants/app_colors.dart';
import 'package:client/views/screens/about_virus_screen.dart';
import 'package:client/views/screens/diagnosis_screen.dart';
import 'package:client/views/screens/employee_register_screen.dart';
import 'package:client/views/screens/profile_screen.dart';
import 'package:client/views/widgets/underline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => ProfileScreen()));
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 34.w,
                    height: 34.h,
                    child: CircleAvatar(
                      child: Image.asset("assets/images/profile.png"),
                    ),
                  ),
                  const Gap(5),
                  Text(
                    "Khatamov Nuriddin",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: AppColors.lightBlack,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(5),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 74.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.green,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "MZI Clinicga xush kelibsiz!",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lexend().fontFamily,
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                    ),
                  ),
                  Text(
                    "Bugun 14:00 ga ro’yhatdan o’tgansiz",
                    style: TextStyle(
                      fontFamily: GoogleFonts.lexend().fontFamily,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(19),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                "Yangiliklar:",
                style: TextStyle(
                  fontFamily: GoogleFonts.lato().fontFamily,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: AppColors.whiteBlack,
                ),
              ),
            ),
            const Gap(3),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 12.5),
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 147.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.whiteGreen,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Corona virusga davo topildi!",
                        style: TextStyle(
                          color: AppColors.whiteGrey,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                        ),
                      ),
                      const Gap(5),
                      Text(
                        "Amerikalik olimlar Corona, yani Covid-19 uchun vaksina o’ylab topishti, O’zbekiston davlat sog’liqni saqlash vazirligi O’zbekiston aholisiga ham shu vaksinani qabul qilishlarini aytishmoqda.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.whiteGrey2,
                          fontSize: 12.sp,
                        ),
                      ),
                      const Gap(30.5),
                      Center(
                          child: SvgPicture.asset("assets/svgs/pageview.svg"))
                    ],
                  ),
                ),
                Positioned(
                    right: 20,
                    bottom: 25,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const AboutVirusScreen()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "To’liq o’qish",
                            style: TextStyle(
                                color: AppColors.whiteGrey3,
                                fontWeight: FontWeight.w400,
                                fontSize: 12),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: AppColors.whiteGrey3,
                          )
                        ],
                      ),
                    )),
                Positioned(
                  top: -30.h,
                  right: 24.w,
                  child: SizedBox(
                    width: 60.w,
                    height: 60.h,
                    child: Image.asset(
                      "assets/images/virus.png",
                    ),
                  ),
                ),
              ],
            ),
            const Gap(12),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                "Qaysi kunga registratsiya qilmoqchisiz?:",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: AppColors.whiteBlack,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => EmployeesScreen()));
              },
              child: Container(
                clipBehavior: Clip.none,
                padding: const EdgeInsets.only(
                    left: 12, right: 12, top: 15, bottom: 12.5),
                alignment: Alignment.center,
                width: double.infinity,
                height: 210.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.background3,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/svgs/calendar.svg"),
                        const Gap(9),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 8.0,
                          children: List.generate(35, (index) {
                            if (index >= 31) {
                              return Container(
                                width: 38,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: AppColors.greyContainer,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Center(
                                  child: Text(
                                    '${index - 30}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ),
                              );
                            }
                            return Container(
                              width: 38,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Gap(16),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(
                "Tashxislar:",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: AppColors.whiteBlack,
                ),
              ),
            ),
            const Gap(3),
            Container(
              padding: const EdgeInsets.only(
                  left: 12, right: 12, top: 15, bottom: 12.5),
              alignment: Alignment.center,
              width: double.infinity,
              height: 132.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.whiteGreen,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const DiagnosisScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "6-Oktabr 2024",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                        ),
                        Row(
                          children: [
                            const Text(
                              "O’pka shamollashi",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w300),
                            ),
                            const Gap(8),
                            SizedBox(
                                width: 26,
                                height: 20,
                                child: Image.asset("assets/images/visible.png"))
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Underline(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "6-Oktabr 2024",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      Row(
                        children: [
                          const Text(
                            "O’pka shamollashi",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                          const Gap(8),
                          SizedBox(
                              width: 26,
                              height: 20,
                              child: Image.asset("assets/images/visible.png"))
                        ],
                      ),
                    ],
                  ),
                  const Underline(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "6-Oktabr 2024",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      Row(
                        children: [
                          const Text(
                            "O’pka shamollashi",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                          const Gap(8),
                          SizedBox(
                              width: 26,
                              height: 20,
                              child: Image.asset("assets/images/visible.png"))
                        ],
                      ),
                    ],
                  ),
                  const Underline(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "6-Oktabr 2024",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      Row(
                        children: [
                          const Text(
                            "O’pka shamollashi",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                          const Gap(8),
                          SizedBox(
                              width: 26,
                              height: 20,
                              child: Image.asset("assets/images/visible.png"))
                        ],
                      ),
                    ],
                  ),
                  const Underline(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "6-Oktabr 2024",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w300),
                      ),
                      Row(
                        children: [
                          const Text(
                            "O’pka shamollashi",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                          const Gap(8),
                          SizedBox(
                              width: 26,
                              height: 20,
                              child: Image.asset("assets/images/visible.png"))
                        ],
                      ),
                    ],
                  ),
                  const Underline(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
