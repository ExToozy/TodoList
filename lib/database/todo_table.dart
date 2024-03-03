import 'package:drift/drift.dart';

class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId => integer()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  BoolColumn get isComplete => boolean()();
}
