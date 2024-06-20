import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';
//import 'package:predoc1/widgets/show_text.dart';

class T45 extends StatefulWidget {
  const T45({Key? key}) : super(key: key);

  @override
  _T45State createState() => _T45State();
}

class _T45State extends State<T45> {
  var medNode = t45;
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

  /* Widget show() {
    return Align(
      alignment: Alignment.centerLeft,
      child: content(),
    );
  }*/

  Widget content() {
    return Column(
      children: <Widget>[
        symptoms1Text(),
        symptoms2Text(),
        procedures1Text(),
        procedures2Text(),
        findhospital1(),
        findhospital2(),
        findhospital3(),
        Align(alignment: Alignment.bottomCenter, child: successButton()),
      ],
    );
  }

  Widget symptoms1Text() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'โรคที่คุณมีโอกาสจะเป็น :',
          style: GoogleFonts.sarabun(
            color: Colors.green.shade800,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget symptoms2Text() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'ซิกัวเทอร่า',
          style: GoogleFonts.sarabun(
            color: Colors.red.shade800,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  /*Widget symptoms3Text() {
    return Text(
      medNode.get_id().toString(),
      style: MyConstant().h2Style(),
    );
  }*/

  Widget procedures1Text() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'วิธีการรักษาเบื้องต้น',
          style: GoogleFonts.sarabun(
            color: Colors.green.shade800,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget procedures2Text() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'ควรไปพบแพทย์ที่สถานพยาบาล',
          style: GoogleFonts.sarabun(
            color: Colors.red.shade800,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Row findhospital1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/hospital2'),
          child: const Text(
            'โรงพยาบาลค่ายสมเด็จพระนเรศวรมหาราช',
          ),
        ),
      ],
    );
  }

  Row findhospital2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: const Text('โรงพยาบาลจิตเวชพิษณุโลก'),
        ),
      ],
    );
  }

  Row findhospital3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: const Text('โรงพยาบาลพุทธชินราช พิษณุโลก'),
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
        style: ElevatedButton.styleFrom(backgroundColor: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/select'),
        child: const Text(
          'เสร็จสิ้น',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
