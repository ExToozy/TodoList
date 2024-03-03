import 'package:drift/drift.dart';

class UserItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get email => text()();
  TextColumn get password => text()();
}
