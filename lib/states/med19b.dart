import 'package:flutter/material.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

// เวียนศีรษะ

class Med19b extends StatefulWidget {
  const Med19b({Key? key}) : super(key: key);

  @override
  _Med19bState createState() => _Med19bState();
}

class _Med19bState extends State<Med19b> {
  var medNode = med19b;
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
            'คุณมีอาการ'+'เวียนศีรษะ'+'หรือไม่?',
            style: MyConstant().h2Style(),
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
      onPressed: () =>
          Navigator.pushNamed(context, '/select'),
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
        onPressed: () => Navigator.pushNamed(context, '/'+medNode.right.label),
        child: const Text(
          'ใช่',
          style: TextStyle(fontSize: 20),
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
        onPressed: () => Navigator.pushNamed(context, '/'+medNode.left.label),
        child: const Text(
          'ไม่ใช่',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}