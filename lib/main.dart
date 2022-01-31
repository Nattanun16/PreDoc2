import 'package:flutter/material.dart';
import 'package:predoc1/states/authen.dart';
import 'package:predoc1/states/create_account.dart';
import 'package:predoc1/states/disease.dart';
import 'package:predoc1/states/get_id.dart';
import 'package:predoc1/states/hospital1.dart';
import 'package:predoc1/states/hospital2.dart';
import 'package:predoc1/states/med10a.dart';
import 'package:predoc1/states/med10b.dart';
import 'package:predoc1/states/med10c.dart';
import 'package:predoc1/states/med12.dart';
import 'package:predoc1/states/med13.dart';
import 'package:predoc1/states/med18a.dart';
import 'package:predoc1/states/med18b.dart';
import 'package:predoc1/states/med19a.dart';
import 'package:predoc1/states/med19b.dart';
import 'package:predoc1/states/med2.dart';
import 'package:predoc1/states/level.dart';
import 'package:predoc1/states/med20a.dart';
import 'package:predoc1/states/med20b.dart';
import 'package:predoc1/states/med21.dart';
import 'package:predoc1/states/med27.dart';
import 'package:predoc1/states/med28a.dart';
import 'package:predoc1/states/med28b.dart';
import 'package:predoc1/states/med30.dart';
import 'package:predoc1/states/med31.dart';
import 'package:predoc1/states/med32a.dart';
import 'package:predoc1/states/med32b.dart';
import 'package:predoc1/states/med36.dart';
import 'package:predoc1/states/med37a.dart';
import 'package:predoc1/states/med37b.dart';
import 'package:predoc1/states/med38.dart';
import 'package:predoc1/states/med38a.dart';
import 'package:predoc1/states/med38b.dart';
import 'package:predoc1/states/med39.dart';
import 'package:predoc1/states/med43a.dart';
import 'package:predoc1/states/med43b.dart';
import 'package:predoc1/states/med45.dart';
import 'package:predoc1/states/med46a.dart';
import 'package:predoc1/states/med46b.dart';
import 'package:predoc1/states/med48a.dart';
import 'package:predoc1/states/med48b.dart';
import 'package:predoc1/states/med50.dart';
import 'package:predoc1/states/med57.dart';
import 'package:predoc1/states/med59.dart';
import 'package:predoc1/states/med6.dart';
import 'package:predoc1/states/med62.dart';
import 'package:predoc1/states/med69.dart';
import 'package:predoc1/states/med70.dart';
import 'package:predoc1/states/med8.dart';
import 'package:predoc1/states/med80.dart';
import 'package:predoc1/states/med82.dart';
import 'package:predoc1/states/med91.dart';
import 'package:predoc1/states/med93.dart';
import 'package:predoc1/states/med95.dart';
import 'package:predoc1/states/nearby_hospital.dart';
import 'package:predoc1/states/select.dart';
import 'package:predoc1/states/service_hospital.dart';
import 'package:predoc1/states/service_user.dart';
import 'package:predoc1/states/med5.dart';
import 'package:predoc1/states/med87.dart';
import 'package:predoc1/states/t1.dart';
import 'package:predoc1/states/t10.dart';
import 'package:predoc1/states/t11.dart';
import 'package:predoc1/states/t12.dart';
import 'package:predoc1/states/t13.dart';
import 'package:predoc1/states/t14.dart';
import 'package:predoc1/states/t15.dart';
import 'package:predoc1/states/t16.dart';
import 'package:predoc1/states/t17.dart';
import 'package:predoc1/states/t18.dart';
import 'package:predoc1/states/t19.dart';
import 'package:predoc1/states/t2.dart';
import 'package:predoc1/states/t20.dart';
import 'package:predoc1/states/t21.dart';
import 'package:predoc1/states/t22.dart';
import 'package:predoc1/states/t23.dart';
import 'package:predoc1/states/t24.dart';
import 'package:predoc1/states/t25.dart';
import 'package:predoc1/states/t26.dart';
import 'package:predoc1/states/t27.dart';
import 'package:predoc1/states/t28.dart';
import 'package:predoc1/states/t29.dart';
import 'package:predoc1/states/t3.dart';
import 'package:predoc1/states/t30.dart';
import 'package:predoc1/states/t31.dart';
import 'package:predoc1/states/t32.dart';
import 'package:predoc1/states/t33.dart';
import 'package:predoc1/states/t34.dart';
import 'package:predoc1/states/t35.dart';
import 'package:predoc1/states/t36.dart';
import 'package:predoc1/states/t37.dart';
import 'package:predoc1/states/t38.dart';
import 'package:predoc1/states/t39.dart';
import 'package:predoc1/states/t4.dart';
import 'package:predoc1/states/t40.dart';
import 'package:predoc1/states/t41.dart';
import 'package:predoc1/states/t42.dart';
import 'package:predoc1/states/t43.dart';
import 'package:predoc1/states/t44.dart';
import 'package:predoc1/states/t45.dart';
import 'package:predoc1/states/disease.dart';
import 'package:predoc1/states/t46.dart';
import 'package:predoc1/states/t47.dart';
import 'package:predoc1/states/t48.dart';
import 'package:predoc1/states/t49.dart';
import 'package:predoc1/states/t5.dart';
import 'package:predoc1/states/t50.dart';
import 'package:predoc1/states/t6.dart';
import 'package:predoc1/states/t7.dart';
import 'package:predoc1/states/t8.dart';
import 'package:predoc1/states/t9.dart';

Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => const Authen(),
  '/getid': (BuildContext context) => const GetID(),
  '/createAccount': (BuildContext context) => const CreateAccount(),
  '/serviceUser': (BuildContext context) => const ServiceUser(),
  '/serviceHospital': (BuildContext context) => const ServiceHospital(),
  '/med2': (BuildContext context) => const Med2(),
  '/med5': (BuildContext context) => const Med5(),
  '/med6': (BuildContext context) => const Med6(),
  '/med8': (BuildContext context) => const Med8(),
  '/med10a': (BuildContext context) => const Med10a(),
  '/med10b': (BuildContext context) => const Med10b(),
  '/med10c': (BuildContext context) => const Med10c(),
  '/med12': (BuildContext context) => const Med12(),
  '/med13': (BuildContext context) => const Med13(),
  '/med18a': (BuildContext context) => const Med18a(),
  '/med18b': (BuildContext context) => const Med18b(),
  '/med19a': (BuildContext context) => const Med19a(),
  '/med19b': (BuildContext context) => const Med19b(),
  '/med20a': (BuildContext context) => const Med20a(),
  '/med20b': (BuildContext context) => const Med20b(),
  '/med21': (BuildContext context) => const Med21(),
  '/med27': (BuildContext context) => const Med27(),
  '/med28a': (BuildContext context) => const Med28a(),
  '/med28b': (BuildContext context) => const Med28b(),
  '/med30': (BuildContext context) => const Med30(),
  '/med31': (BuildContext context) => const Med31(),
  '/med32a': (BuildContext context) => const Med32a(),
  '/med32b': (BuildContext context) => const Med32b(),
  '/med36': (BuildContext context) => const Med36(),
  '/med37a': (BuildContext context) => const Med37a(),
  '/med37b': (BuildContext context) => const Med37b(),
  '/med38': (BuildContext context) => const Med38(),
  '/med38a': (BuildContext context) => const Med38a(),
  '/med38b': (BuildContext context) => const Med38b(),
  '/med39': (BuildContext context) => const Med39(),
  '/med43a': (BuildContext context) => const Med43a(),
  '/med43b': (BuildContext context) => const Med43b(),
  '/med45': (BuildContext context) => const Med45(),
  '/med46a': (BuildContext context) => const Med46a(),
  '/med46b': (BuildContext context) => const Med46b(),
  '/med48a': (BuildContext context) => const Med48a(),
  '/med48b': (BuildContext context) => const Med48b(),
  '/med50': (BuildContext context) => const Med50(),
  '/med57': (BuildContext context) => const Med57(),
  '/med59': (BuildContext context) => const Med59(),
  '/med62': (BuildContext context) => const Med62(),
  '/med69': (BuildContext context) => const Med69(),
  '/med70': (BuildContext context) => const Med70(),
  '/med80': (BuildContext context) => const Med80(),
  '/med82': (BuildContext context) => const Med82(),
  '/med87': (BuildContext context) => const Med87(),
  '/med91': (BuildContext context) => const Med91(),
  '/med93': (BuildContext context) => const Med93(),
  '/med95': (BuildContext context) => const Med95(),
  '/t1': (BuildContext context) => const T1(),
  '/t2': (BuildContext context) => const T2(),
  '/t3': (BuildContext context) => const T3(),
  '/t4': (BuildContext context) => const T4(),
  '/t5': (BuildContext context) => const T5(),
  '/t6': (BuildContext context) => const T6(),
  '/t7': (BuildContext context) => const T7(),
  '/t8': (BuildContext context) => const T8(),
  '/t9': (BuildContext context) => const T9(),
  '/t10': (BuildContext context) => const T10(),
  '/t11': (BuildContext context) => const T11(),
  '/t12': (BuildContext context) => const T12(),
  '/t13': (BuildContext context) => const T13(),
  '/t14': (BuildContext context) => const T14(),
  '/t15': (BuildContext context) => const T15(),
  '/t16': (BuildContext context) => const T16(),
  '/t17': (BuildContext context) => const T17(),
  '/t18': (BuildContext context) => const T18(),
  '/t19': (BuildContext context) => const T19(),
  '/t20': (BuildContext context) => const T20(),
  '/t21': (BuildContext context) => const T21(),
  '/t22': (BuildContext context) => const T22(),
  '/t23': (BuildContext context) => const T23(),
  '/t24': (BuildContext context) => const T24(),
  '/t25': (BuildContext context) => const T25(),
  '/t26': (BuildContext context) => const T26(),
  '/t27': (BuildContext context) => const T27(),
  '/t28': (BuildContext context) => const T28(),
  '/t29': (BuildContext context) => const T29(),
  '/t30': (BuildContext context) => const T30(),
  '/t31': (BuildContext context) => const T31(),
  '/t32': (BuildContext context) => const T32(),
  '/t33': (BuildContext context) => const T33(),
  '/t34': (BuildContext context) => const T34(),
  '/t35': (BuildContext context) => const T35(),
  '/t36': (BuildContext context) => const T36(),
  '/t37': (BuildContext context) => const T37(),
  '/t38': (BuildContext context) => const T38(),
  '/t39': (BuildContext context) => const T39(),
  '/t40': (BuildContext context) => const T40(),
  '/t41': (BuildContext context) => const T41(),
  '/t42': (BuildContext context) => const T42(),
  '/t43': (BuildContext context) => const T43(),
  '/t44': (BuildContext context) => const T44(),
  '/t45': (BuildContext context) => const T45(),
  '/t46': (BuildContext context) => const T46(),
  '/t47': (BuildContext context) => const T47(),
  '/t48': (BuildContext context) => const T48(),
  '/t49': (BuildContext context) => const T49(),
  '/t50': (BuildContext context) => const T50(),
  '/level': (BuildContext context) => const Level(),
  '/select': (BuildContext context) => const Select(),
  '/nearbyHospital': (BuildContext context) => const NearbyHospital(),
  '/disease': (BuildContext context) => const Disease(),
  //'/hospital1': (BuildContext context) => const Hospital1(),
  '/hospital2': (BuildContext context) => const Hospital2(),
};

String firstPage = '/hospital2';

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
     debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home:  Hospital2(),
    );
  }
}
