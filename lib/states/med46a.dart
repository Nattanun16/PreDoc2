import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

// เบื่ออาหาร

class Med46a extends StatefulWidget {
  const Med46a({Key? key}) : super(key: key);

  @override
  _Med46aState createState() => _Med46aState();
}

class _Med46aState extends State<Med46a> {
  var medNode = med46a;
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
            'คุณมีอาการ' + 'เบื่ออาหาร' + 'หรือไม่?',
            style: GoogleFonts.sarabun(
              color: Colors.green.shade800,
              fontSize: 23,
              fontWeight: FontWeight.w700,
            ),
          ),
          YesButton(),
          NoButton(),
        ],
      ),
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

// ปวดหัวครึ่งซีก
  Container YesButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 48),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () =>
            Navigator.pushNamed(context, '/' + medNode.right.label),
        child: const Text(
          'ใช่',
          style: TextStyle(fontSize: 21),
        ),
      ),
    );
  }

// ปวดหัวทั้งซ้ายและขวา
  Container NoButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0.25),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => Navigator.pushNamed(context, '/' + medNode.left.label),
        child: const Text(
          'ไม่ใช่',
          style: TextStyle(fontSize: 21),
        ),
      ),
    );
  }
}
