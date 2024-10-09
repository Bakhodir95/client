import 'package:client/utils/app_constants/app_colors.dart';
import 'package:client/views/widgets/universal_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class EmployeesScreen extends StatelessWidget {
  const EmployeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void showDialogBusy() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            content: const SizedBox(
              height: 138,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bu vaqt band!",
                    style: TextStyle(
                      color: AppColors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            actions: [
              UniversalButtonWidget(
                function: () {
                  Navigator.pop(context);
                },
                color: null,
                child: const Text(
                  'Boshqa vaqtni tanlash',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    void showDialogFree() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            content: const SizedBox(
              height: 138,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bu vaqt bo’sh",
                    style: TextStyle(
                      color: AppColors.green,
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            actions: [
              UniversalButtonWidget(
                function: () {
                  Navigator.pop(context);
                },
                color: null,
                child: const Text(
                  'Shu vaqtni band qilish',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              UniversalButtonWidget(
                function: () {
                  Navigator.pop(context);
                },
                color: AppColors.blackContainer,
                child: const Text(
                  'Boshqa vaqtni tanlash',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Stack(children: [
        Positioned(
            right: 5,
            top: -50,
            child: SvgPicture.asset("assets/svgs/rightbackground.svg")),
        Positioned(
            bottom: 30,
            left: 0,
            child: SvgPicture.asset("assets/svgs/bottomleft.svg")),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 6),
                child: Text(
                  "1 Yanvarda uchun ro’yhat",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 22.sp,
                      color: AppColors.whiteBlack),
                ),
              ),
              Gap(15.h),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  "Farmonov Abdug’ani Shokirovich | Stomatolog",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      color: AppColors.whiteGrey2),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                width: double.infinity,
                height: 180.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.background3,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gap(9.h),
                    Wrap(
                      spacing: 18.0,
                      runSpacing: 8.0,
                      children: List.generate(8, (index) {
                        if (index == 2 || index == 7) {
                          return InkWell(
                            onTap: showDialogBusy,
                            child: Container(
                              width: 140.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                color: AppColors.greyContainer,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Center(
                                child: Text(
                                  '${(index + 9.00).toStringAsFixed(2)} - ${(index + 10.00).toStringAsFixed(2)}',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.whiteGreen2),
                                ),
                              ),
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: showDialogFree,
                          child: Container(
                              width: 140.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Center(
                                child: Text(
                                  '${(index + 9.00).toStringAsFixed(2)} - ${(index + 10.00).toStringAsFixed(2)}',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              )),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Gap(15.h),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  "Farmonov Abdug’ani Shokirovich | Stomatolog",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.sp,
                      color: AppColors.whiteGrey2),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                width: double.infinity,
                height: 180.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.background3,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gap(9.h),
                    Wrap(
                      spacing: 18.0,
                      runSpacing: 8.0,
                      children: List.generate(8, (index) {
                        if (index == 2 || index == 7) {
                          return InkWell(
                            onTap: showDialogBusy,
                            child: Container(
                              width: 140.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                color: AppColors.greyContainer,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Center(
                                child: Text(
                                  '${(index + 9.00).toStringAsFixed(2)} - ${(index + 10.00).toStringAsFixed(2)}',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.whiteGreen2),
                                ),
                              ),
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: showDialogFree,
                          child: Container(
                              width: 140.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Center(
                                child: Text(
                                  '${(index + 9.00).toStringAsFixed(2)} - ${(index + 10.00).toStringAsFixed(2)}',
                                  style: TextStyle(fontSize: 12.sp),
                                ),
                              )),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
