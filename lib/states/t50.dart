import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

class T50 extends StatefulWidget {
  const T50({Key? key}) : super(key: key);

  @override
  _T50State createState() => _T50State();
}

class _T50State extends State<T50> {
  var medNode = t50;
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
      style: GoogleFonts.kanit(
        color: Colors.green.shade800,
        fontSize: 20,
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
      'โรคหัวใจเต้นผิดจังหวะ(หัวใจเต้นเร็ว)',
      style: GoogleFonts.kanit(
        color: Colors.red.shade800,
        fontSize: 18,
      ),
    );
  }

  Widget procedures1Text() {
    return Text(
      'วิธีการรักษาเบื้องต้น',
      style: GoogleFonts.kanit(
        color: Colors.green.shade800,
        fontSize: 20,
      ),
    );
  }

  Widget procedures2Text() {
    return Text(
      'ควรไปพบแพทย์ที่สถานพยาบาล',
      style: GoogleFonts.kanit(
        color: Colors.red.shade800,
        fontSize: 18,
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
