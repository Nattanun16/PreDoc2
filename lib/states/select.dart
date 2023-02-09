import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predoc1/utility/my_constant.dart';

class Select extends StatefulWidget {
  const Select({Key? key}) : super(key: key);

  get auth => null;

  @override
  _SelectState createState() => _SelectState();

  void onSignedOut() {}
}

class _SelectState extends State<Select> {
  @override
  _signOut() async {
    try {
      await widget.auth.signOut();
      widget.onSignedOut();
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
        behavior: HitTestBehavior.opaque,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
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
            'คุณกำลังค้นหาอะไร ?',
            style: GoogleFonts.kanit(
              color: Colors.green.shade800,
              fontSize: 18,
            ),
          ),
          diagnose(),
          hospital(),
        ],
      ),
    );
  }

  Container diagnose() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.orange.shade900),
        onPressed: () => Navigator.pushNamed(context, '/med5'),
        child: const Text(
          'ทำแบบประเมินโรคเบื้องต้นจากอาการของผู้ใช้งาน',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  Container hospital() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.orange.shade900),
        onPressed: () => Navigator.pushNamed(context, '/nearbyHospital'),
        child: const Text(
          'ค้นหาสถานพยาบาลใกล้เคียงคุณ',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
