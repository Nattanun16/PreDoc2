import 'package:flutter/material.dart';
import 'package:predoc1/utility/my_constant.dart';

class MapUserBadge extends StatelessWidget {
  const MapUserBadge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.only(
        top: 5,
        bottom: 5,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: Offset.zero),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage('images/markerr.png'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: MyConstant.dark,
                width: 1,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'me',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  'My Location',
                  style: TextStyle(color: MyConstant.dark),
                )
              ],
            ),
          ),
          Icon(
            Icons.location_pin,
            color: MyConstant.light,
            size: 40,
          )
        ],
      ),
    );
  }
}