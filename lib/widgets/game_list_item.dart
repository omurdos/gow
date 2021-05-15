import 'package:flutter/material.dart';
import 'package:gow/constants/assets.dart';
import 'package:gow/constants/constants.dart';

class GameListItem extends StatelessWidget {
  final String imageSrc;
  final String gameName;
  final Function onTap;

  GameListItem({this.gameName, this.imageSrc, this.onTap});

  ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    this._theme = Theme.of(context);
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Stack(
          children: [
            Hero(
              tag: gameName,
              child: Container(
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kCardBorderRadius),
                    image: DecorationImage(
                        image: AssetImage(this.imageSrc), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: _theme.primaryColor.withOpacity(0.5),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(kCardBorderRadius),
                            bottomRight: Radius.circular(kCardBorderRadius),
                          )),
                      padding: EdgeInsets.all(kItemSpace),
                      child: Text(
                        gameName,
                        style: _theme.textTheme.subtitle1
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
