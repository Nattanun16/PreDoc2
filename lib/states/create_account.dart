import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:predoc1/models/user_model.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/my_dialog.dart';
import 'package:predoc1/widgets/show_text.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool statusRedEye = true;
  String? typeUser;
  String? typeHospital;
  double? lat, lng;
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Container newName() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        controller: nameController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอกชื่อด้วยค่ะ';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.fingerprint,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Name :'),
          labelStyle: GoogleFonts.creteRound(),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container newEmail() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        controller: emailController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอก E-mail ด้วยค่ะ';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email_outlined,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Email :'),
          labelStyle: GoogleFonts.creteRound(),
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
        obscureText: statusRedEye,
        controller: passwordController,
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอกรหัสผ่านด้วยค่ะ';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.password_outlined,
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
          label: const ShowText(data: 'Passowrd :'),
          labelStyle: GoogleFonts.creteRound(),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  Container newAge() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'กรุณากรอกอายุด้วยค่ะ';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.calendar_today,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Age :'),
          labelStyle: GoogleFonts.creteRound(),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    findLocation();
  }

  Future<void> findLocation() async {
    Position? position = await findPostion();
    setState(
      () {
        lat = position!.latitude;
        lng = position.longitude;
        print('lat = $lat, lng = $lng');
      },
    );
  }

  Future<Position?> findPostion() async {
    Position? position;

    try {
      position = await Geolocator.getCurrentPosition();
    } catch (e) {
      return null;
    }

    return position;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => processRegister(),
            icon: Icon(Icons.cloud_upload_outlined),
            color: Colors.green.shade800,
          ),
        ],
        backgroundColor: Colors.yellow.shade50,
        title: Text('Create new Account'),
        titleTextStyle: MyConstant().h2Style(),
        leading: BackButton(color: Colors.black),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(
          FocusScopeNode(),
        ),
        behavior: HitTestBehavior.opaque,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                newName(),
                newTitle(
                  'Type User :',
                ),
                radioUser(),
                radioHospital(),
                newEmail(),
                newPassword(),
                newAge(),
                newTitle('Your Location :'),
                newMap(),
                buttonCreateAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container newMap() {
    return Container(
      width: 300,
      height: 200,
      child: lat == null
          ? Center(child: CircularProgressIndicator())
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(lat!, lng!),
                zoom: 16,
              ),
              onMapCreated: (controller) {},
              markers: <Marker>{
                Marker(
                  markerId: MarkerId('id'),
                  position: LatLng(lat!, lng!),
                  infoWindow: InfoWindow(
                      title: 'คุณอยู่ที่นี่',
                      snippet: 'lat = $lat, lng = $lng'),
                )
              },
            ),
    );
  }

  Container buttonCreateAccount() {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          processRegister();
          onPressed:
          () => Navigator.pushNamed(context, '/authen');
        },
        child: Text(
          'Create New Account',
          style: GoogleFonts.pridi(fontSize: 16),
        ),
      ),
    );
  }

  Future<void> processRegister() async {
    if (formKey.currentState!.validate()) {
      if (typeUser == null) {
        MyDialog().normalDialog(
            context, 'Type User Non ?', 'Please Choose Type User');
      } else {
        await Firebase.initializeApp().then(
          (value) async {
            print('Initial Success');
            await FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text)
                .then(
              (value) async {
                String uid = value.user!.uid;
                print('Register Success uid ==> $uid');

                UserModel model = UserModel(
                    email: emailController.text,
                    lat: lat!,
                    lng: lng!,
                    name: nameController.text,
                    password: passwordController.text,
                    typeuser: typeUser!);

                await FirebaseFirestore.instance
                    .collection('user')
                    .doc(uid)
                    .set(model.toMap())
                    .then((value) => Navigator.pop(context));
              },
            ).catchError(
              (value) {
                String title = value.code;
                String message = value.message;
                MyDialog().normalDialog(context, title, message);
              },
            );
          },
        );
      }
    }
  }

  RadioListTile<String> radioUser() {
    return RadioListTile(
      subtitle: ShowText(
        data: 'ผู้ใช้งาน',
        textStyle: GoogleFonts.kanit(color: Colors.green.shade800),
      ),
      title: ShowText(
        data: 'User',
        textStyle: GoogleFonts.creteRound(color: Colors.green.shade800),
      ),
      value: 'user',
      groupValue: typeUser,
      onChanged: (value) {
        setState(() {
          typeUser = value.toString();
        });
      },
    );
  }

  RadioListTile<String> radioHospital() {
    return RadioListTile(
      subtitle: ShowText(
        data: 'โรงพยาบาล',
        textStyle: GoogleFonts.kanit(color: Colors.green.shade800),
      ),
      title: ShowText(
        data: 'Hospital',
        textStyle: GoogleFonts.creteRound(color: Colors.green.shade800),
      ),
      value: 'hospital',
      groupValue: typeHospital,
      onChanged: (value) {
        setState(() {
          typeHospital = value.toString();
        });
      },
    );
  }

  Row newTitle(String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: ShowText(
            data: title,
            textStyle: MyConstant().h2Style(),
          ),
        ),
      ],
    );
  }
}
