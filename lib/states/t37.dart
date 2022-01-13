import 'package:flutter/material.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

class T37 extends StatefulWidget {
  const T37({Key? key}) : super(key: key);

  @override
  _T37State createState() => _T37State();
}

class _T37State extends State<T37> {
  var medNode = t37;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        behavior: HitTestBehavior.opaque,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(margin: const EdgeInsets.symmetric(vertical: 150),child: content()),
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          disease1Text(),
          disease2Text(),
          symptoms1Text(),
          symptoms2Text(),
          symptoms3Text(),
          symptoms4Text(),
          symptoms5Text(),
          procedures1Text(),
          procedures2Text(),
          successButton(),
        ],
      ),
    );
  }

  Widget disease1Text() {
    return Text(
      'ปวดท้อง',
      style: MyConstant().h2Style(),
    );
  }

  Widget disease2Text() {
    return Text(
      'ปวดท้องแบบเกร็ง',
      style: MyConstant().h2Style(),
    );
  }

  Widget symptoms1Text() {
    return Text(
      'โรคที่คุณมีโอกาสจะเป็น :',
      style: MyConstant().h2Style(),
    );
  }

  Widget symptoms2Text() {
    return Text(
      medNode.get_id().toString(),
      style: MyConstant().h2Style(),
    );
  }

  Widget symptoms3Text() {
    return Text(
      'อาหารเป็นพิษ',
      style: MyConstant().h2Style(),
    );
  }

  Widget symptoms4Text() {
    return Text(
      'ไข้เลือดออก',
      style: MyConstant().h2Style(),
    );
  }

  Widget symptoms5Text() {
    return Text(
      'ไทฟอยด์',
      style: MyConstant().h2Style(),
    );
  }

  Widget procedures1Text() {
    return Text(
      'วิธีการรักษาเบื้องต้น',
      style: MyConstant().h2Style(),
    );
  }

  Widget procedures2Text() {
    return Text(
      'ควรไปพบแพทย์ที่สถานพยาบาล',
      style: MyConstant().h2Style(),
    );
  }

  Container successButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/nearbyHospital'),
        child: const Text(
          'เสร็จสิ้น',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
