import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/my_dialog.dart';
import 'package:predoc1/widgets/show_text.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String? typeUser;
  double? lat, lng;
  final formKey = GlobalKey<FormState>();

  Container newName() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: const EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
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
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container newPassword() {
    return Container(
      decoration: MyConstant().whiteBox(),
      margin: EdgeInsets.only(top: 16),
      width: 250,
      child: TextFormField(
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
          label: ShowText(data: 'Passowrd :'),
          border: OutlineInputBorder(),
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
            Icons.password_outlined,
            color: MyConstant.dark,
          ),
          label: ShowText(data: 'Age :'),
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
          ),
        ],
        backgroundColor: MyConstant.primary,
        title: Text('Create new Account'),
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
                newTitle('Type User :'),
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
        },
        child: Text('Create New Account'),
      ),
    );
  }

  void processRegister() {
    if (formKey.currentState!.validate()) {
      if (typeUser == null) {
        MyDialog().normalDialog(context, 'Type User Non ?', 'Please Choose Type User');
      } else {
      }
    }
  }

  Container radioUser() {
    return Container(
      width: 250,
      child: RadioListTile(
        subtitle: ShowText(data: 'ผู้ใช้งาน'),
        title: ShowText(
          data: 'User',
        ),
        value: 'user',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value.toString();
          });
        },
      ),
    );
  }

  Widget radioHospital() {
    return Container(
      child: RadioListTile(
        subtitle: ShowText(data: 'โรงพยาบาล'),
        title: ShowText(
          data: 'Hospital',
        ),
        value: 'user',
        groupValue: typeUser,
        onChanged: (value) {
          setState(() {
            typeUser = value.toString();
          });
        },
      ),
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
