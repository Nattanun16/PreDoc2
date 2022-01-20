import 'package:flutter/material.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';
import 'package:predoc1/widgets/show_text.dart';

class T2 extends StatefulWidget {
  const T2({Key? key}) : super(key: key);

  @override
  _T2State createState() => _T2State();
}

class _T2State extends State<T2> {
  var medNode = t2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        behavior: HitTestBehavior.opaque,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                margin: const EdgeInsets.symmetric(vertical: 150),
                child: content()),
          ),
        ),
      ),
    );
  }

  Widget content() {
    return Center(
      child: Column(
<<<<<<< HEAD
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          symptoms1Text(),
          symptoms3Text(),
=======
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          symptoms1Text(),
          symptoms2Text(),
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
          procedures1Text(),
          procedures2Text(),
          findhospital1(),
          findhospital2(),
<<<<<<< HEAD
=======
          findhospital3(),
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
          successButton(),
        ],
      ),
    );
  }

  Widget symptoms1Text() {
<<<<<<< HEAD
=======
    return Text(
      'โรคที่คุณมีโอกาสจะเป็น :',
      style: MyConstant().h2Style(),
    );
  }

  Widget symptoms2Text() {
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
    return Text(
      'ซิกัวเทอร่า',
      style: MyConstant().h2Style(),
    );
  }

<<<<<<< HEAD
  /* Widget symptoms2Text() {
=======
  /*Widget symptoms3Text() {
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
    return Text(
      medNode.get_id().toString(),
      style: MyConstant().h2Style(),
    );
  }*/

  Widget procedures1Text() {
    return Text(
<<<<<<< HEAD
      'โรคกระดูกพรุน',
=======
      'วิธีการรักษาเบื้องต้น',
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
      style: MyConstant().h2Style(),
    );
  }

<<<<<<< HEAD
  Widget procedures1Text() {
    return Text(
      'วิธีการรักษาเบื้องต้น',
=======
  Widget procedures2Text() {
    return Text(
      'ควรไปพบแพทย์ที่สถานพยาบาล',
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
      style: MyConstant().h2Style(),
    );
  }

<<<<<<< HEAD
  Widget procedures2Text() {
    return Text(
      'ควรไปพบแพทย์ที่สถานพยาบาล',
      style: MyConstant().h2Style(),
    );
  }

  Row findhospital1() {
=======
  Row findhospital1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: const Text(
            'โรงพยาบาลค่ายสมเด็จพระนเรศวรมหาราช',
          ),
        ),
      ],
    );
  }

  Row findhospital2() {
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
<<<<<<< HEAD
          child: const Text(
            'โรงพยาบาลมหาวิทยาลัยนเรศวร',
          ),
=======
          child: const Text('โรงพยาบาลจิตเวชพิษณุโลก'),
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
        ),
      ],
    );
  }

<<<<<<< HEAD
  Row findhospital2() {
=======
  Row findhospital3() {
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
<<<<<<< HEAD
          child: const Text(
            'โรงพยาบาลสมเด็จพระยุพราชนครไทย จังหวัดพิษณุโลก',
          ),
=======
          child: const Text('โรงพยาบาลพุทธชินราช พิษณุโลก'),
>>>>>>> 5dfe16f9e685f5b33ab5d08071965d2bd974d08a
        ),
      ],
    );
  }

  Container successButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/select'),
        child: const Text(
          'เสร็จสิ้น',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
