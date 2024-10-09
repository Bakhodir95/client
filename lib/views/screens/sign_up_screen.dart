import 'package:client/utils/fonts/fonts.dart';
import 'package:client/views/screens/confirmation_screen.dart';
import 'package:client/views/widgets/custom_textfield.dart';
import 'package:client/views/widgets/universal_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Positioned(
                  child: SvgPicture.asset("assets/svgs/leftbackground.svg")),
              Positioned(
                bottom: 0,
                right: 0,
                child: SvgPicture.asset("assets/svgs/bottomright.svg"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
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
                            child: Image.asset("assets/images/logo.png"),
                          ),
                          Gap(6.h),
                          Text("MZI Clinic", style: CustomFonts.lexendDeca),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text("Ro’yhatdan o’tish",
                                style: CustomFonts.lato80024),
                          ),
                          Gap(9.h),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text("Telefon raqam:",
                                style: CustomFonts.lato400),
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
                              builder: (ctx) => ConfirmationScreen(),
                            ),
                          );
                        },
                        color: null,
                        child:
                            Text("SMS yuborish", style: CustomFonts.lexendTera),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
