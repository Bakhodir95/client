import 'package:client/utils/app_constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class DiagnosisScreen extends StatelessWidget {
  const DiagnosisScreen({super.key});

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
        child: Column(
          children: [
            Text(
              "1 Yanvarda qo’yilgan tashxis",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 24.sp,
                  color: AppColors.whiteBlack),
            ),
            const Gap(15),
            Text(
              "Amerikalik olimlar Corona, yani Covid-19 uchun vaksina o’ylab topishti, O’zbekiston davlat sog’liqni saqlash vazirligi O’zbekiston aholisiga ham shu vaksinani qabul qilishlarini aytishmoqda.  Amerikalik olimlar Corona, yani Covid-19 uchun vaksina o’ylab topishti, O’zbekiston davlat sog’liqni saqlash vazirligi O’zbekiston aholisiga ham shu vaksinani qabul qilishlarini aytishmoqda.",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14.sp,
                  color: AppColors.whiteGrey3),
            ),
            const Gap(20),
            Container(
              width: double.infinity,
              height: 234.h,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset("assets/images/hands.png"),
            ),
            Gap(36.h),
            Container(
              width: double.infinity,
              height: 33.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.whiteGrey4,
              ),
              child: Center(
                child: Text(
                  "Keyingi tashrif vaqti: 23-Avgust 2024",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: AppColors.whiteGrey3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
