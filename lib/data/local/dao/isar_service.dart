import 'package:flutter_onboarding/data/local/model/post_local_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationSupportDirectory();
      return Isar.open(
        [PostLocalDTOSchema],
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
