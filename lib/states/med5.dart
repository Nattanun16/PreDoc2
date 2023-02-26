import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

// เจ็บหน้าอก

class Med5 extends StatefulWidget {
  const Med5({Key? key}) : super(key: key);

  @override
  _Med5State createState() => _Med5State();
}

class _Med5State extends State<Med5> {
  var medNode = med5;
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
            'คุณมีอาการ' + 'เจ็บหน้าอก' + 'หรือไม่?',
            style: GoogleFonts.sarabun(
              color: Colors.green.shade800,
              fontSize: 23,
              fontWeight: FontWeight.w700,
            ),
          ),
          Image.asset(
            'images/chestpain.png',
            width: 450,
            height: 200,
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
      margin: const EdgeInsets.symmetric(vertical: 25),
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
