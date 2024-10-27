import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiapp/utils/app_constants.dart';
import 'package:taxiapp/views/otp_verification_screen.dart';
import 'package:taxiapp/widgets/pinput_widget.dart';
import 'package:taxiapp/widgets/text_widget.dart';

Widget otpVerificationWidget() {
  return Directionality(
    textDirection: TextDirection.rtl,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(text: AppConstants.phoneVerification),
          textWidget(
              text: AppConstants.enterOtp,
              fontSize: 22,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 40,
          ),


          Container(

              width: Get.width,
              height: 50,
              child: RoundedWithShadow()),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  children: [
                    TextSpan(
                      text: AppConstants.resendCode + " ",
                    ),
                    TextSpan(
                        text: "10 ثواني",
                        style: TextStyle(fontWeight: FontWeight.bold)),

                  ]),
            ),
          )
        ],
      ),
    ),
  );
}