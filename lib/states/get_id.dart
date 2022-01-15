import 'package:flutter/material.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/decision_tree.dart';

class GetID extends StatefulWidget {
  const GetID({Key? key}) : super(key: key);

  @override
  _GetIDState createState() => _GetIDState();
}

class _GetIDState extends State<GetID> {
  var medNode = t50;
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[symptoms2Text()],
      ),
    );
  }

  Widget symptoms2Text() {
    return Text(
      medNode.get_id().toString(),
      style: MyConstant().h2Style(),
    );
  }
}
