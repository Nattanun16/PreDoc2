import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:predoc1/models/user_model.dart';
import 'package:predoc1/utility/my_constant.dart';
import 'package:predoc1/utility/my_dialog.dart';
import 'package:predoc1/widgets/show_text.dart';

class NearbyHospital extends StatefulWidget {
  const NearbyHospital({Key? key}) : super(key: key);

  @override
  _NearbyHospitalState createState() => _NearbyHospitalState();
}

class _NearbyHospitalState extends State<NearbyHospital> {
  @override
  bool statusRedEye = true;
  String? typeUser;
  double? lat, lng;
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyConstant.primary,
        title: Text('Find Nearby Hospital'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(
          FocusScopeNode(),
        ),
        behavior: HitTestBehavior.opaque,
        child: SingleChildScrollView(
          child: Column(
            children: [
              newMap(),
              findHospitalbutton(),
            ],
          ),
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

  Container findHospitalbutton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      width: 250,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyConstant.dark),
        onPressed: () => findHospital(),
        child: const Text(
          'Search Hospital',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  Future<void> findHospital() async {
    Position? position = await findPostion();
    setState(
      () {
        lat = position!.latitude;
        lng = position.longitude;
        print('lat = $lat, lng = $lng');
      },
    );
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

  Container newMap() {
    return Container(
      width: 500,
      height: 500,
      child: lat == null
          ? Center(child: CircularProgressIndicator())
          : GoogleMap(
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(lat!, lng!),
                zoom: 20,
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
}