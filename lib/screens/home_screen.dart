import 'package:flutter/material.dart';
import 'package:gow/constants/assets.dart';
import 'package:gow/constants/constants.dart';
import 'package:gow/providers/game_provider.dart';
import 'package:gow/repository/game_repository/game_data.dart';
import 'package:gow/screens/game_details_screen.dart';
import 'package:gow/widgets/game_list_item.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "homeScreen";

  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          OMEGA,
          height: 35,
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: AnimatedList(
            padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kItemSpace),
            initialItemCount: context.watch<GameProvider>().gamesList?.length,
            itemBuilder: (context, position, animation) {
              return ScaleTransition(
                scale: animation,
                child: GameListItem(
                  gameName:
                      context.read<GameProvider>().gamesList[position].gameName,
                  imageSrc:
                      context.read<GameProvider>().gamesList[position].imageSrc,
                  onTap: () async {
                    context.read<GameProvider>().selectedGame =
                        context.read<GameProvider>().gamesList[position];
                    Navigator.pushNamed(context, GameDetailsScreen.routeName);
                  },
                ),
              );
            }),
      ),
    );
  }
}
