import 'package:gow/models/game_model.dart';
import 'package:gow/providers/base_provider.dart';
import 'package:gow/repository/game_repository/game_data.dart';

class GameProvider extends BaseProvider {
  List<GameModel> _gamesList = games;
  GameModel _selectedGame;

  GameModel get selectedGame => _selectedGame;

  set selectedGame(GameModel value) {
    _selectedGame = value;
    notifyListeners();
  }

  List<GameModel> get gamesList => _gamesList;

  set gamesList(List<GameModel> value) {
    _gamesList = value;
    notifyListeners();
  }

  Future<List<GameModel>> getAllGames() async {
    try {
      return gamesList;
    } catch (e, stackTrace) {
      throw e;
    }
  }

  @override
  void dispose() {
    super.dispose();
  }
}
