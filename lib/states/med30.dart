import 'package:flutter/material.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

// อาเจียน

class Med30 extends StatefulWidget {
  const Med30({Key? key}) : super(key: key);

  @override
  _Med30State createState() => _Med30State();
}

class _Med30State extends State<Med30> {
  var medNode = med30;
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
            'คุณมีอาการ' + 'อาเจียน' + 'หรือไม่?',
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
      onPressed: () => Navigator.pushNamed(context, '/select'),
    );
  }

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
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

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
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}