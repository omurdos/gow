import 'package:flutter/material.dart';
import 'package:gow/constants/assets.dart';
import 'package:gow/constants/constants.dart';

class DeveloperListItem extends StatelessWidget {
  final String name;
  final String title;
  const DeveloperListItem({this.name, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kItemSpace),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Image.asset(SANTA_MONIKA_STUDIO ,height: 30,),
          ),
          SizedBox(
            height: kItemSpace * 2,
          ),
          Text(name),
          SizedBox(
            height: kItemSpace,
          ),
          Text(title),
        ],
      ),
    );
  }
}
