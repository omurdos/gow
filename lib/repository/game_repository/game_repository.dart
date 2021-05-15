import 'package:gow/constants/assets.dart';
import 'package:gow/models/developer_model.dart';
import 'package:gow/models/game_model.dart';
import 'package:gow/repository/repository.dart';

class GameRepository implements Repository<GameModel> {
  @override
  Future<GameModel> add(GameModel gameModel) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<GameModel> get(String id) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<GameModel>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<GameModel> updateGame(String id, GameModel gameModel) {
    // TODO: implement updateGame
    throw UnimplementedError();
  }
}
