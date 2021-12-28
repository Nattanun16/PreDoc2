import 'package:flutter/material.dart';
import 'package:predoc1/states/authen.dart';
import 'package:predoc1/states/create_account.dart';
import 'package:predoc1/states/days.dart';
import 'package:predoc1/states/diagnose.dart';
import 'package:predoc1/states/disease.dart';
import 'package:predoc1/states/med16.dart';
import 'package:predoc1/states/med2.dart';
import 'package:predoc1/states/level.dart';
import 'package:predoc1/states/med22.dart';
import 'package:predoc1/states/med28.dart';
import 'package:predoc1/states/med30.dart';
import 'package:predoc1/states/med6.dart';
import 'package:predoc1/states/med69.dart';
import 'package:predoc1/states/med8.dart';
import 'package:predoc1/states/nearby_hospital.dart';
import 'package:predoc1/states/select.dart';
import 'package:predoc1/states/service_hospital.dart';
import 'package:predoc1/states/service_user.dart';
import 'package:predoc1/states/med5.dart';
import 'package:predoc1/states/med30.dart';
import 'package:predoc1/states/med87.dart';
import 'package:predoc1/states/med9.dart';
import 'package:predoc1/states/med7.dart';
import 'package:predoc1/states/med16.dart';
import 'package:predoc1/states/t45.dart';
import 'package:predoc1/states/diagnose2.dart';
import 'package:predoc1/states/diagnose3.dart';
import 'package:predoc1/states/diagnose4.dart';
import 'package:predoc1/states/diagnose5.dart';
import 'package:predoc1/states/disease.dart';

Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => const Authen(),
  '/createAccount': (BuildContext context) => const CreateAccount(),
  '/serviceUser': (BuildContext context) => const ServiceUser(),
  '/serviceHospital': (BuildContext context) => const ServiceHospital(),
  '/diagnose': (BuildContext context) => const Diagnose(),
  '/diagnose2': (BuildContext context) => const Diagnose2(),
  '/diagnose3': (BuildContext context) => const Diagnose3(),
  '/diagnose4': (BuildContext context) => const Diagnose4(),
  '/diagnose5': (BuildContext context) => const Diagnose5(),
  '/med2': (BuildContext context) => const Med2(),
  '/med5': (BuildContext context) => const Med5(),
  '/med6': (BuildContext context) => const Med6(),
  '/med7': (BuildContext context) => const Med7(),
  '/med8': (BuildContext context) => const Med8(),
  '/med9': (BuildContext context) => const Med9(),
  '/med16': (BuildContext context) => const Med16(),
  '/med22': (BuildContext context) => const Med22(),
  '/med28': (BuildContext context) => const Med28(),
  '/med30': (BuildContext context) => const Med30(),
  '/med69': (BuildContext context) => const Med69(),
  '/med87': (BuildContext context) => const Med87(),
  '/t45': (BuildContext context) => const T45(),
  '/level': (BuildContext context) => const Level(),
  '/days': (BuildContext context) => const Days(),
  '/select': (BuildContext context) => const Select(),
  '/nearbyHospital': (BuildContext context) => const NearbyHospital(),
  '/disease': (BuildContext context) => const Disease(),
};

String firstPage = '/authen';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: firstPage,
    );
  }
}
