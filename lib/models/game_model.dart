import 'package:gow/models/developer_model.dart';
import 'package:gow/models/studio_model.dart';

class GameModel {
  String gameName;
  String imageSrc;
  double ignScore;
  double metaScore;
  String about;
  List<String> platforms;
  StudioModel studio;
  List<DeveloperModel> developers;
  String trailerURL;
  List<String> soundTracks;

  GameModel(
      {this.imageSrc,
      this.gameName,
      this.about,
      this.developers,
      this.ignScore,
      this.metaScore,
      this.platforms,
      this.soundTracks,
      this.studio,
      this.trailerURL});
}
