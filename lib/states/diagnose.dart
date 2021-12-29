import 'package:flutter/material.dart';
import 'package:predoc1/states/med2.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

class Diagnose extends StatefulWidget {
  const Diagnose({Key? key}) : super(key: key);

  @override
  _DiagnoseState createState() => _DiagnoseState();
}

class _DiagnoseState extends State<Diagnose> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        behavior: HitTestBehavior.opaque,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                backButton(context),
                content(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'คุณมีอาการอย่างไร',
            style: MyConstant().h2Style(),
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: pageButton()),
          med1Button(),
          med2Button(),
          med5Button(),
          med6Button(),
          med7Button(),
          mednumbButton(),
          med9Button(),
          med13Button(),
          med14Button(),
          med15Button(),
          med16Button(),
          med17Button(),
          med18Button(),
          med19Button(),
          med20Button(),
          med21Button(),
        ],
      ),
    );
  }

  Row pageButton() {
    return Row(
      children: <Widget>[
        backpageButton(context),
        page1(),
        page2(),
        page3(),
        page4(),
        page5(),
        Expanded(child: nextpageButton(context)),
      ],
    );
  }

  TextButton page1() {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, '/diagnose'),
      child: Text(
        '1',
        style: MyConstant().h3Style(),
      ),
    );
  }

  TextButton page2() {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, '/diagnose2'),
      child: Text(
        '2',
        style: MyConstant().h4Style(),
      ),
    );
  }

  TextButton page3() {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, '/diagnose3'),
      child: Text(
        '3',
        style: MyConstant().h4Style(),
      ),
    );
  }

  TextButton page4() {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, '/diagnose4'),
      child: Text(
        '4',
        style: MyConstant().h4Style(),
      ),
    );
  }

  TextButton page5() {
    return TextButton(
      onPressed: () => Navigator.pushNamed(context, '/diagnose5'),
      child: Text(
        '5',
        style: MyConstant().h4Style(),
      ),
    );
  }

  IconButton backpageButton(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.navigate_before,
        size: 16,
      ),
      onPressed: () => Navigator.pushNamed(context, '/diagnose5'),
    );
  }

  IconButton nextpageButton(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.navigate_next,
        size: 16,
      ),
      onPressed: () => Navigator.pushNamed(context, '/diagnose2'),
    );
  }

  IconButton backButton(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.navigate_before,
        size: 36.0,
      ),
      onPressed: () => Navigator.pushNamed(context, '/select'),
    );
  }

  Container med1Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'หน้ามืด',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// ปวดหัว
  Container med2Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'ปวดหัว',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// เจ็บหน้าอก
  Container med5Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'เจ็บหน้าอก',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  // กล้ามเนื้ออ่อนแรง
  Container med6Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'กล้ามเนื้ออ่อนแรง',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// ปากเบี้ยว/หน้าเบี้ยว
  Container med7Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'ปากเบี้ยว/หน้าเบี้ยว',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// ชา
  Container mednumbButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/' + med5.left.label),
        child: const Text(
          'ชา',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// ปวดท้อง
  Container med9Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/med9'),
        child: const Text(
          'ปวดท้อง',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// ท้องอืด
  Container med13Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'ท้องอืด',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// ท้องผูก
  Container med14Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'ท้องผูก',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// จุกเสียด
  Container med15Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'จุกเสียด',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// ท้องเสีย
  Container med16Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'ท้องเสีย',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// แน่นท้อง
  Container med17Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'แน่นท้อง',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// อ่อนเพลีย
  Container med18Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'อ่อนเพลีย',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// เวียนศรีษะ
  Container med19Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'เวียนศรีษะ',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// ไอแห้ง
  Container med20Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'ไอแห้ง',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

// ไอมีเสมหะ
  Container med21Button() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/level'),
        child: const Text(
          'ไอมีเสมหะ',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
