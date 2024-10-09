import 'package:client/utils/app_constants/app_colors.dart';
import 'package:client/utils/fonts/fonts.dart';
import 'package:client/views/widgets/custom_textfield.dart';
import 'package:client/views/widgets/universal_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ChangeInfoScreen extends StatelessWidget {
  ChangeInfoScreen({super.key});
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();

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
      body: SingleChildScrollView(
        child: Stack(children: [
          Positioned(
              right: 10,
              top: -50,
              child: SvgPicture.asset("assets/svgs/rightbackground.svg")),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: SvgPicture.asset("assets/svgs/bottomleft.svg"),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Ma’lumotlarni o’zgartirish",
                      style: CustomFonts.lato80024),
                  const Gap(15),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      "Ism:",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppColors.whiteBlack),
                    ),
                  ),
                  CustomTextfield(
                    hintText: "Ism",
                    controller: _firstNameController,
                  ),
                  const Gap(25),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      "Familiya:",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppColors.whiteBlack),
                    ),
                  ),
                  CustomTextfield(
                    hintText: "Familiya",
                    controller: _lastNameController,
                  ),
                  const Gap(25),
                  Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: Text(
                      "Telefon raqam:",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: AppColors.whiteBlack),
                    ),
                  ),
                  CustomTextfield(
                    hintText: "Telefon raqam",
                    controller: _phoneController,
                  ),
                  const Gap(25),
                  UniversalButtonWidget(
                      function: () {},
                      color: null,
                      child: Text(
                        "Tasdiqlash",
                        style: CustomFonts.lexendTera,
                      ))
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
