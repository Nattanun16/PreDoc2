import 'package:flutter/material.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

class T43 extends StatefulWidget {
  const T43({Key? key}) : super(key: key);

  @override
  _T43State createState() => _T43State();
}

class _T43State extends State<T43> {
  var medNode = t43;
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
          symptoms1Text(),
          symptoms3Text(),
          procedures1Text(),
          procedures2Text(),
          successButton(),
        ],
      ),
    );
  }

  Widget symptoms1Text() {
    return Text(
      'โรคที่คุณมีโอกาสจะเป็น :',
      style: MyConstant().h2Style(),
    );
  }

/*  Widget symptoms2Text() {
    return Text(
      medNode.get_id().toString(),
      style: MyConstant().h2Style(),
    );
  }*/

  Widget symptoms3Text() {
    return Text(
      'ไข้อิดำอิแดง',
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
