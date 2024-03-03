// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TodoItemsTable extends TodoItems
    with TableInfo<$TodoItemsTable, TodoItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodoItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isCompleteMeta =
      const VerificationMeta('isComplete');
  @override
  late final GeneratedColumn<bool> isComplete = GeneratedColumn<bool>(
      'is_complete', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_complete" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, title, description, isComplete];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'todo_items';
  @override
  VerificationContext validateIntegrity(Insertable<TodoItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('is_complete')) {
      context.handle(
          _isCompleteMeta,
          isComplete.isAcceptableOrUnknown(
              data['is_complete']!, _isCompleteMeta));
    } else if (isInserting) {
      context.missing(_isCompleteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodoItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      isComplete: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_complete'])!,
    );
  }

  @override
  $TodoItemsTable createAlias(String alias) {
    return $TodoItemsTable(attachedDatabase, alias);
  }
}

class TodoItem extends DataClass implements Insertable<TodoItem> {
  final int id;
  final int userId;
  final String title;
  final String description;
  final bool isComplete;
  const TodoItem(
      {required this.id,
      required this.userId,
      required this.title,
      required this.description,
      required this.isComplete});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['is_complete'] = Variable<bool>(isComplete);
    return map;
  }

  TodoItemsCompanion toCompanion(bool nullToAbsent) {
    return TodoItemsCompanion(
      id: Value(id),
      userId: Value(userId),
      title: Value(title),
      description: Value(description),
      isComplete: Value(isComplete),
    );
  }

  factory TodoItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoItem(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      isComplete: serializer.fromJson<bool>(json['isComplete']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'isComplete': serializer.toJson<bool>(isComplete),
    };
  }

  TodoItem copyWith(
          {int? id,
          int? userId,
          String? title,
          String? description,
          bool? isComplete}) =>
      TodoItem(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        description: description ?? this.description,
        isComplete: isComplete ?? this.isComplete,
      );
  @override
  String toString() {
    return (StringBuffer('TodoItem(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('isComplete: $isComplete')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, title, description, isComplete);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoItem &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.title == this.title &&
          other.description == this.description &&
          other.isComplete == this.isComplete);
}

class TodoItemsCompanion extends UpdateCompanion<TodoItem> {
  final Value<int> id;
  final Value<int> userId;
  final Value<String> title;
  final Value<String> description;
  final Value<bool> isComplete;
  const TodoItemsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.isComplete = const Value.absent(),
  });
  TodoItemsCompanion.insert({
    this.id = const Value.absent(),
    required int userId,
    required String title,
    required String description,
    required bool isComplete,
  })  : userId = Value(userId),
        title = Value(title),
        description = Value(description),
        isComplete = Value(isComplete);
  static Insertable<TodoItem> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? title,
    Expression<String>? description,
    Expression<bool>? isComplete,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (isComplete != null) 'is_complete': isComplete,
    });
  }

  TodoItemsCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<String>? title,
      Value<String>? description,
      Value<bool>? isComplete}) {
    return TodoItemsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      description: description ?? this.description,
      isComplete: isComplete ?? this.isComplete,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (isComplete.present) {
      map['is_complete'] = Variable<bool>(isComplete.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodoItemsCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('isComplete: $isComplete')
          ..write(')'))
        .toString();
  }
}

class $UserItemsTable extends UserItems
    with TableInfo<$UserItemsTable, UserItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, email, password];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_items';
  @override
  VerificationContext validateIntegrity(Insertable<UserItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
    );
  }

  @override
  $UserItemsTable createAlias(String alias) {
    return $UserItemsTable(attachedDatabase, alias);
  }
}

class UserItem extends DataClass implements Insertable<UserItem> {
  final int id;
  final String email;
  final String password;
  const UserItem(
      {required this.id, required this.email, required this.password});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    return map;
  }

  UserItemsCompanion toCompanion(bool nullToAbsent) {
    return UserItemsCompanion(
      id: Value(id),
      email: Value(email),
      password: Value(password),
    );
  }

  factory UserItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserItem(
      id: serializer.fromJson<int>(json['id']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
    };
  }

  UserItem copyWith({int? id, String? email, String? password}) => UserItem(
        id: id ?? this.id,
        email: email ?? this.email,
        password: password ?? this.password,
      );
  @override
  String toString() {
    return (StringBuffer('UserItem(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, email, password);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserItem &&
          other.id == this.id &&
          other.email == this.email &&
          other.password == this.password);
}

class UserItemsCompanion extends UpdateCompanion<UserItem> {
  final Value<int> id;
  final Value<String> email;
  final Value<String> password;
  const UserItemsCompanion({
    this.id = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
  });
  UserItemsCompanion.insert({
    this.id = const Value.absent(),
    required String email,
    required String password,
  })  : email = Value(email),
        password = Value(password);
  static Insertable<UserItem> custom({
    Expression<int>? id,
    Expression<String>? email,
    Expression<String>? password,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
    });
  }

  UserItemsCompanion copyWith(
      {Value<int>? id, Value<String>? email, Value<String>? password}) {
    return UserItemsCompanion(
      id: id ?? this.id,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserItemsCompanion(')
          ..write('id: $id, ')
          ..write('email: $email, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $TodoItemsTable todoItems = $TodoItemsTable(this);
  late final $UserItemsTable userItems = $UserItemsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todoItems, userItems];
}
