import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:taxiapp/utils/app_constants.dart';
import 'package:taxiapp/views/otp_verification_screen.dart';
import 'package:taxiapp/widgets/text_widget.dart';

Widget loginWidget(CountryCode countryCode, Function onCountryChange,Function onSubmit) {
  return Directionality(
     textDirection: TextDirection.rtl,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          textWidget(text: AppConstants.helloNiceToMeetYou),
          textWidget(
              text: AppConstants.getMovingWithGreenTaxi,
              fontSize: 22,
              fontWeight: FontWeight.bold),
          const SizedBox(
            height: 40,
          ),
          Container(
            width: double.infinity,
            height: 55,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      spreadRadius: 3,
                      blurRadius: 3)
                ],
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () => onCountryChange(),
                      child: Container(
                        child: Row(
                          children: [
                            const SizedBox(width: 5),

                            Expanded(
                              child: Container(
                               // child: countryCode.flagImage,
                              ),
                            ),

                            textWidget(text: countryCode.dialCode),

                            // const SizedBox(width: 10,),

                            Icon(Icons.keyboard_arrow_down_rounded)
                          ],
                        ),
                      ),
                    )),
                Container(
                  width: 1,
                  height: 55,
                  color: Colors.black.withOpacity(0.2),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      onSubmitted: (String? input)=> onSubmit(input),
                      decoration: InputDecoration(
                          hintStyle:TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal),
                          hintText: AppConstants.enterMobileNumber,
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  children: [
                    TextSpan(
                      text: AppConstants.byCreating + " ",
                    ),
                    TextSpan(
                        text: AppConstants.termsOfService + " ",
                        style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                    TextSpan(
                      text: "and ",
                    ),
                    TextSpan(
                        text: AppConstants.privacyPolicy + " ",
                        style: TextStyle(fontWeight: FontWeight.bold)
                        ),
                  ]),
            ),
          )
        ],
      ),
    ),
  );
}