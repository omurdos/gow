import 'package:flutter/material.dart';
import 'package:gow/constants/constants.dart';

class TitledDivider extends StatelessWidget {
  final String title;

  TitledDivider({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kItemSpace),
      child: Row(
        children: [
          Text(title),
          SizedBox(width: kItemSpace,),
          Expanded(child: Divider( color: Colors.white,)),
        ],
      ),
    );
  }
}
