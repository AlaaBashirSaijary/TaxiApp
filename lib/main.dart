import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:taxiapp/splashScreen.dart';
import 'package:taxiapp/views/add_payment_card_screen.dart';
import 'package:taxiapp/views/add_payment_screen.dart';
import 'package:taxiapp/views/decision_screen/decission_screen.dart';
 import 'package:firebase_core/firebase_core.dart';
import 'package:taxiapp/views/decision_screen/decission_screen.dart';
import 'package:taxiapp/views/driver/car_registration/car_registration_template.dart';
import 'package:taxiapp/views/driver/car_registration/pages/vehical_type_page.dart';
import 'package:taxiapp/views/driver/profile_setup.dart';
import 'package:taxiapp/views/driver/verification_pending_screen.dart';
import 'package:taxiapp/views/home.dart';
import 'package:taxiapp/views/login_screen.dart';
import 'package:taxiapp/views/my_profile.dart';
import 'package:taxiapp/views/payment.dart';
import 'package:taxiapp/views/profile_settings.dart';
import 'controller/auth_controller.dart';
import 'firebase_options.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
     AuthController authController = Get.put(AuthController());
    authController.decideRoute();
    final textTheme = Theme.of(context).textTheme;

    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //textTheme: GoogleFonts.poppinsTextTheme(textTheme),
      ),
      home:   Directionality(textDirection: TextDirection.rtl,
      child: ProfileSettingScreen()),
    );
  }
}
