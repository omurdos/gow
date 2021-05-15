import 'package:flutter/material.dart';
import 'package:gow/constants/constants.dart';

class SoundTrackListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 130,
          margin: EdgeInsets.symmetric(horizontal: kItemSpace),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kCardBorderRadius),
              color: Colors.black38),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.play_circle_outline,
                    size: 35,
                  ),
                  onPressed: () {}),
              SizedBox(
                height: kItemSpace,
              ),
              Text(
                "Track name",
                overflow: TextOverflow.fade,
              )
            ],
          ),
        )
      ],
    );
  }
}
