import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gow/constants/assets.dart';
import 'package:gow/constants/constants.dart';
import 'package:gow/providers/game_provider.dart';
import 'package:gow/widgets/developer_list_item.dart';
import 'package:gow/widgets/featured_image.dart';
import 'package:gow/widgets/soundtrack_list_item.dart';
import 'package:gow/widgets/titled_divider.dart';
import 'package:provider/provider.dart';

class GameDetailsScreen extends StatefulWidget {
  static String routeName = "gameDetailsScreen";

  @override
  _GameDetailsScreenState createState() => _GameDetailsScreenState();
}

class _GameDetailsScreenState extends State<GameDetailsScreen> {
  ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: FeaturedImage(),
              title: Text(
                context.watch<GameProvider>().selectedGame.gameName,
                style: _theme.textTheme.headline6,
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: kItemSpace * 3,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text("IGN"),
                              SizedBox(
                                height: kItemSpace,
                              ),
                              Text(context
                                      .watch<GameProvider>()
                                      .selectedGame
                                      .ignScore
                                      .toString() +
                                  "/10"),
                            ],
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 2.0,
                          ),
                          Column(
                            children: [
                              Text("Metascore"),
                              SizedBox(
                                height: kItemSpace,
                              ),
                              Text(context
                                      .watch<GameProvider>()
                                      .selectedGame
                                      .metaScore
                                      .toString() +
                                  "%"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: kItemSpace * 3,
                    ),
                    Text(
                      context.watch<GameProvider>().selectedGame.about,
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    TitledDivider(title: "Platforms"),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text("PS2, PS3, PS4"),
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    TitledDivider(title: "Studio"),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            SANTA_MONIKA_STUDIO,
                            height: 70,
                          ),
                        ),
                        SizedBox(
                          height: kItemSpace * 2,
                        ),
                        Text("Santa Monika Studio")
                      ],
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    TitledDivider(title: "Team"),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Container(
                      height: 180,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: context
                            .watch<GameProvider>()
                            .selectedGame
                            .developers
                            .length,
                        itemBuilder: (context, position) {
                          return DeveloperListItem(
                            name: context
                                .watch<GameProvider>()
                                .selectedGame
                                .developers[position]
                                .name,
                            title: context
                                .watch<GameProvider>()
                                .selectedGame
                                .developers[position]
                                .title,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    TitledDivider(title: "Trailer"),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(kCardBorderRadius),
                              image: DecorationImage(
                                  image: AssetImage(TRAILER_IMAGE),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                            height: 180,
                            width: double.infinity,
                            child: Align(
                              alignment: Alignment.center,
                              child: IconButton(
                                icon: Icon(
                                  Icons.play_circle_outline,
                                  size: 35,
                                ),
                                onPressed: () {},
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    TitledDivider(title: "Soundtracks"),
                    SizedBox(
                      height: kItemSpace,
                    ),
                    Container(
                      height: 155,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, position) {
                          return SoundTrackListItem();
                        },
                      ),
                    )
                  ],
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kItemSpace),
              )
            ],
          ))
        ],
      ),
    );
  }
}
