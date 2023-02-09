import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/widgets/show_image.dart';
import 'package:predoc1/widgets/show_text.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true;
  final formKey = GlobalKey<FormState>();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(
          FocusScopeNode(),
        ),
        behavior: HitTestBehavior.opaque,
        child: Container(
          decoration: MyConstant().gradienBox(),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    newImage(),
                    newAppName(),
                    newUser(),
                    newPassword(),
                    newLogIn(),
                    newCreateAccount()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row newCreateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ShowText(data: 'No Account ?'),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/createAccount'),
          child: const Text('Create Account'),
        ),
      ],
    );
  }

  Container newLogIn() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      width: 250,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: MyConstant.dark),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              String user = userController.text;
              String password = passwordController.text;
              print('## user = $user, password = $password');
              Navigator.pushNamed(context, '/select');
            }
          },
          child: Text(
            'Login',
            style: GoogleFonts.creteRound(
              color: Colors.white,
            ),
          )),
    );
  }

  Future<Null> checkAuthen() async {
    String apiCheckAuthen = '';
  }

  Container newUser() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        controller: userController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Fill Username in Blank';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.perm_identity,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'User :'),
          labelStyle: GoogleFonts.creteRound(color: Colors.green.shade800),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container newPassword() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        controller: passwordController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'PLease Fill Password in Blank';
          } else {
            return null;
          }
        },
        obscureText: statusRedEye,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock_outline,
            color: MyConstant.dark,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(
                () {
                  statusRedEye = !statusRedEye;
                },
              );
            },
            icon: statusRedEye
                ? const Icon(
                    Icons.remove_red_eye,
                    color: Colors.black,
                  )
                : const Icon(
                    Icons.remove_red_eye_outlined,
                    color: Colors.black,
                  ),
          ),
          label: const ShowText(data: 'Password :'),
          labelStyle: GoogleFonts.creteRound(color: Colors.green.shade800),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  ShowText newAppName() {
    return ShowText(
      data: MyConstant.appName,
      textStyle: GoogleFonts.abhayaLibre(
          color: Colors.green.shade800,
          fontSize: 35,
          fontWeight: FontWeight.bold),
    );
  }

  Container newImage() {
    return Container(
      width: 300,
      child: ShowImage(),
    );
  }
}
