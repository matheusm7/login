import 'package:loginpage/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
