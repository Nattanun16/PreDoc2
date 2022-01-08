import 'package:flutter/material.dart';
import 'package:predoc1/states/authen.dart';
import 'package:predoc1/states/create_account.dart';
import 'package:predoc1/states/disease.dart';
import 'package:predoc1/states/med10.dart';
import 'package:predoc1/states/med12.dart';
import 'package:predoc1/states/med13.dart';
import 'package:predoc1/states/med18.dart';
import 'package:predoc1/states/med19a.dart';
import 'package:predoc1/states/med19b.dart';
import 'package:predoc1/states/med2.dart';
import 'package:predoc1/states/level.dart';
import 'package:predoc1/states/med20a.dart';
import 'package:predoc1/states/med27.dart';
import 'package:predoc1/states/med28a.dart';
import 'package:predoc1/states/med30.dart';
import 'package:predoc1/states/med32a.dart';
import 'package:predoc1/states/med36.dart';
import 'package:predoc1/states/med37a.dart';
import 'package:predoc1/states/med38a.dart';
import 'package:predoc1/states/med38b.dart';
import 'package:predoc1/states/med39.dart';
import 'package:predoc1/states/med43a.dart';
import 'package:predoc1/states/med48a.dart';
import 'package:predoc1/states/med48b.dart';
import 'package:predoc1/states/med57.dart';
import 'package:predoc1/states/med59.dart';
import 'package:predoc1/states/med6.dart';
import 'package:predoc1/states/med62.dart';
import 'package:predoc1/states/med69.dart';
import 'package:predoc1/states/med8.dart';
import 'package:predoc1/states/nearby_hospital.dart';
import 'package:predoc1/states/select.dart';
import 'package:predoc1/states/service_hospital.dart';
import 'package:predoc1/states/service_user.dart';
import 'package:predoc1/states/med5.dart';
import 'package:predoc1/states/med87.dart';
import 'package:predoc1/states/t1.dart';
import 'package:predoc1/states/t16.dart';
import 'package:predoc1/states/t19.dart';
import 'package:predoc1/states/t2.dart';
import 'package:predoc1/states/t20.dart';
import 'package:predoc1/states/t23.dart';
import 'package:predoc1/states/t24.dart';
import 'package:predoc1/states/t25.dart';
import 'package:predoc1/states/t26.dart';
import 'package:predoc1/states/t3.dart';
import 'package:predoc1/states/t45.dart';
import 'package:predoc1/states/disease.dart';
import 'package:predoc1/states/t6.dart';
import 'package:predoc1/states/t9.dart';

Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => const Authen(),
  '/createAccount': (BuildContext context) => const CreateAccount(),
  '/serviceUser': (BuildContext context) => const ServiceUser(),
  '/serviceHospital': (BuildContext context) => const ServiceHospital(),
  '/med2': (BuildContext context) => const Med2(),
  '/med5': (BuildContext context) => const Med5(),
  '/med6': (BuildContext context) => const Med6(),
  '/med8': (BuildContext context) => const Med8(),
  '/med10': (BuildContext context) => const Med10(),
  '/med12': (BuildContext context) => const Med12(),
  '/med13': (BuildContext context) => const Med13(),
  '/med18': (BuildContext context) => const Med18(),
  '/med19a': (BuildContext context) => const Med19a(),
  '/med19b': (BuildContext context) => const Med19b(),
  '/med20a': (BuildContext context) => const Med20a(),
  '/med27': (BuildContext context) => const Med27(),
  '/med28a': (BuildContext context) => const Med28a(),
  '/med30': (BuildContext context) => const Med30(),
  '/med32a': (BuildContext context) => const Med32a(),
  '/med36': (BuildContext context) => const Med36(),
  '/med37a': (BuildContext context) => const Med37a(),
  '/med38a': (BuildContext context) => const Med38a(),
  '/med38b': (BuildContext context) => const Med38b(),
  '/med39': (BuildContext context) => const Med39(),
  '/med43a': (BuildContext context) => const Med43a(),
  '/med48a': (BuildContext context) => const Med48a(),
  '/med48b': (BuildContext context) => const Med48b(),
  '/med57': (BuildContext context) => const Med57(),
  '/med59': (BuildContext context) => const Med59(),
  '/med62': (BuildContext context) => const Med62(),
  '/med69': (BuildContext context) => const Med69(),
  '/med87': (BuildContext context) => const Med87(),
  '/t1': (BuildContext context) => const T1(),
  '/t2': (BuildContext context) => const T2(),
  '/t3': (BuildContext context) => const T3(),
  '/t6': (BuildContext context) => const T6(),
  '/t9': (BuildContext context) => const T9(),
  '/t16': (BuildContext context) => const T16(),
  '/t19': (BuildContext context) => const T19(),
  '/t20': (BuildContext context) => const T20(),
  '/t23': (BuildContext context) => const T23(),
  '/t24': (BuildContext context) => const T24(),
  '/t25': (BuildContext context) => const T25(),
  '/t26': (BuildContext context) => const T26(),
  '/t45': (BuildContext context) => const T45(),
  '/level': (BuildContext context) => const Level(),
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
