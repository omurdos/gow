import 'package:gow/models/game_model.dart';

abstract class Repository<T> {
  Future<T> add(T t);

  Future<List<T>> getAll();

  Future<T> get(String id);

  Future<T> updateGame(String id, T t);
}
