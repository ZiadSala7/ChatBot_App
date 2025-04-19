import 'package:hive/hive.dart';
part 'history_model.g.dart';

@HiveType(typeId: 0)
class HistoryModel extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final DateTime dateTime;
  @HiveField(2)
  final String? name;

  HistoryModel({
    required this.id,
    required this.dateTime,
    required this.name,
  });
}
