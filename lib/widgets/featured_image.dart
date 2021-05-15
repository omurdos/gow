import 'package:flutter/cupertino.dart';
import 'package:gow/providers/game_provider.dart';
import 'package:provider/provider.dart';

class FeaturedImage extends StatelessWidget {
  const FeaturedImage();

  @override
  Widget build(BuildContext context) {
    return Consumer<GameProvider>(
      builder: (context, gameProvider, child) {
        return Hero(
            tag: gameProvider.selectedGame.gameName,
            child: Image.asset(
              gameProvider.selectedGame.imageSrc,
              fit: BoxFit.cover,
            ));
      },
    );
  }
}
