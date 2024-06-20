import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

class T18 extends StatefulWidget {
  const T18({Key? key}) : super(key: key);

  @override
  _T18State createState() => _T18State();
}

class _T18State extends State<T18> {
  var medNode = t18;
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
          findhospital1(),
          findhospital2(),
          successButton(),
        ],
      ),
    );
  }

  Widget symptoms1Text() {
    return Text(
      'โรคที่คุณมีโอกาสจะเป็น :',
      style: GoogleFonts.sarabun(
        color: Colors.green.shade800,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }

 /* Widget symptoms2Text() {
    return Text(
      medNode.get_id().toString(),
      style: MyConstant().h2Style(),
    );
  }*/

  Widget symptoms3Text() {
    return Text(
      'โรคคาวาซากิ',
      style: GoogleFonts.sarabun(
        color: Colors.red.shade800,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget procedures1Text() {
    return Text(
      'วิธีการรักษาเบื้องต้น',
      style: GoogleFonts.sarabun(
        color: Colors.green.shade800,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget procedures2Text() {
    return Text(
      'ควรไปพบแพทย์ที่สถานพยาบาล',
      style: GoogleFonts.sarabun(
        color: Colors.red.shade800,
        fontSize: 18,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Row findhospital1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: const Text(
            'โรงพยาบาลมหาวิทยาลัยนเรศวร',
          ),
        ),
      ],
    );
  }

  Row findhospital2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/'),
          child: const Text(
            'โรงพยาบาลสมเด็จพระยุพราชนครไทย จังหวัดพิษณุโลก',
          ),
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
