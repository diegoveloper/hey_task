// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Todo extends DataClass implements Insertable<Todo> {
  final int id;
  final String title;
  final String? description;
  final int? categoryId;
  final DateTime creationDate;
  final DateTime lastUpdateDate;
  final bool completed;
  Todo(
      {required this.id,
      required this.title,
      this.description,
      this.categoryId,
      required this.creationDate,
      required this.lastUpdateDate,
      required this.completed});
  factory Todo.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Todo(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      categoryId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category_id']),
      creationDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}creation_date'])!,
      lastUpdateDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_update_date'])!,
      completed: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}completed'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String?>(description);
    }
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<int?>(categoryId);
    }
    map['creation_date'] = Variable<DateTime>(creationDate);
    map['last_update_date'] = Variable<DateTime>(lastUpdateDate);
    map['completed'] = Variable<bool>(completed);
    return map;
  }

  DriftTodoCompanion toCompanion(bool nullToAbsent) {
    return DriftTodoCompanion(
      id: Value(id),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      creationDate: Value(creationDate),
      lastUpdateDate: Value(lastUpdateDate),
      completed: Value(completed),
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Todo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      categoryId: serializer.fromJson<int?>(json['categoryId']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
      lastUpdateDate: serializer.fromJson<DateTime>(json['lastUpdateDate']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'categoryId': serializer.toJson<int?>(categoryId),
      'creationDate': serializer.toJson<DateTime>(creationDate),
      'lastUpdateDate': serializer.toJson<DateTime>(lastUpdateDate),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  Todo copyWith(
          {int? id,
          String? title,
          String? description,
          int? categoryId,
          DateTime? creationDate,
          DateTime? lastUpdateDate,
          bool? completed}) =>
      Todo(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        categoryId: categoryId ?? this.categoryId,
        creationDate: creationDate ?? this.creationDate,
        lastUpdateDate: lastUpdateDate ?? this.lastUpdateDate,
        completed: completed ?? this.completed,
      );
  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('categoryId: $categoryId, ')
          ..write('creationDate: $creationDate, ')
          ..write('lastUpdateDate: $lastUpdateDate, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, description, categoryId,
      creationDate, lastUpdateDate, completed);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.categoryId == this.categoryId &&
          other.creationDate == this.creationDate &&
          other.lastUpdateDate == this.lastUpdateDate &&
          other.completed == this.completed);
}

class DriftTodoCompanion extends UpdateCompanion<Todo> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> description;
  final Value<int?> categoryId;
  final Value<DateTime> creationDate;
  final Value<DateTime> lastUpdateDate;
  final Value<bool> completed;
  const DriftTodoCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.lastUpdateDate = const Value.absent(),
    this.completed = const Value.absent(),
  });
  DriftTodoCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.description = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.lastUpdateDate = const Value.absent(),
    this.completed = const Value.absent(),
  }) : title = Value(title);
  static Insertable<Todo> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String?>? description,
    Expression<int?>? categoryId,
    Expression<DateTime>? creationDate,
    Expression<DateTime>? lastUpdateDate,
    Expression<bool>? completed,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (categoryId != null) 'category_id': categoryId,
      if (creationDate != null) 'creation_date': creationDate,
      if (lastUpdateDate != null) 'last_update_date': lastUpdateDate,
      if (completed != null) 'completed': completed,
    });
  }

  DriftTodoCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String?>? description,
      Value<int?>? categoryId,
      Value<DateTime>? creationDate,
      Value<DateTime>? lastUpdateDate,
      Value<bool>? completed}) {
    return DriftTodoCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      categoryId: categoryId ?? this.categoryId,
      creationDate: creationDate ?? this.creationDate,
      lastUpdateDate: lastUpdateDate ?? this.lastUpdateDate,
      completed: completed ?? this.completed,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String?>(description.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int?>(categoryId.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    if (lastUpdateDate.present) {
      map['last_update_date'] = Variable<DateTime>(lastUpdateDate.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftTodoCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('categoryId: $categoryId, ')
          ..write('creationDate: $creationDate, ')
          ..write('lastUpdateDate: $lastUpdateDate, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }
}

class $DriftTodoTable extends DriftTodo with TableInfo<$DriftTodoTable, Todo> {
  final GeneratedDatabase _db;
  final String? _alias;
  $DriftTodoTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _categoryIdMeta = const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int?> categoryId = GeneratedColumn<int?>(
      'category_id', aliasedName, true,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NULL REFERENCES Category(id)');
  final VerificationMeta _creationDateMeta =
      const VerificationMeta('creationDate');
  @override
  late final GeneratedColumn<DateTime?> creationDate =
      GeneratedColumn<DateTime?>('creation_date', aliasedName, false,
          type: const IntType(),
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now()));
  final VerificationMeta _lastUpdateDateMeta =
      const VerificationMeta('lastUpdateDate');
  @override
  late final GeneratedColumn<DateTime?> lastUpdateDate =
      GeneratedColumn<DateTime?>('last_update_date', aliasedName, false,
          type: const IntType(),
          requiredDuringInsert: false,
          defaultValue: Constant(DateTime.now()));
  final VerificationMeta _completedMeta = const VerificationMeta('completed');
  @override
  late final GeneratedColumn<bool?> completed = GeneratedColumn<bool?>(
      'completed', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (completed IN (0, 1))',
      defaultValue: const Constant(false));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        description,
        categoryId,
        creationDate,
        lastUpdateDate,
        completed
      ];
  @override
  String get aliasedName => _alias ?? 'drift_todo';
  @override
  String get actualTableName => 'drift_todo';
  @override
  VerificationContext validateIntegrity(Insertable<Todo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
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
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    }
    if (data.containsKey('creation_date')) {
      context.handle(
          _creationDateMeta,
          creationDate.isAcceptableOrUnknown(
              data['creation_date']!, _creationDateMeta));
    }
    if (data.containsKey('last_update_date')) {
      context.handle(
          _lastUpdateDateMeta,
          lastUpdateDate.isAcceptableOrUnknown(
              data['last_update_date']!, _lastUpdateDateMeta));
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed']!, _completedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Todo map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Todo.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DriftTodoTable createAlias(String alias) {
    return $DriftTodoTable(_db, alias);
  }
}

class SubTask extends DataClass implements Insertable<SubTask> {
  final int id;
  final bool completed;
  final int todoId;
  SubTask({required this.id, required this.completed, required this.todoId});
  factory SubTask.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SubTask(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      completed: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}completed'])!,
      todoId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}todo_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['completed'] = Variable<bool>(completed);
    map['todo_id'] = Variable<int>(todoId);
    return map;
  }

  DriftSubTaskCompanion toCompanion(bool nullToAbsent) {
    return DriftSubTaskCompanion(
      id: Value(id),
      completed: Value(completed),
      todoId: Value(todoId),
    );
  }

  factory SubTask.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SubTask(
      id: serializer.fromJson<int>(json['id']),
      completed: serializer.fromJson<bool>(json['completed']),
      todoId: serializer.fromJson<int>(json['todoId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'completed': serializer.toJson<bool>(completed),
      'todoId': serializer.toJson<int>(todoId),
    };
  }

  SubTask copyWith({int? id, bool? completed, int? todoId}) => SubTask(
        id: id ?? this.id,
        completed: completed ?? this.completed,
        todoId: todoId ?? this.todoId,
      );
  @override
  String toString() {
    return (StringBuffer('SubTask(')
          ..write('id: $id, ')
          ..write('completed: $completed, ')
          ..write('todoId: $todoId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, completed, todoId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SubTask &&
          other.id == this.id &&
          other.completed == this.completed &&
          other.todoId == this.todoId);
}

class DriftSubTaskCompanion extends UpdateCompanion<SubTask> {
  final Value<int> id;
  final Value<bool> completed;
  final Value<int> todoId;
  const DriftSubTaskCompanion({
    this.id = const Value.absent(),
    this.completed = const Value.absent(),
    this.todoId = const Value.absent(),
  });
  DriftSubTaskCompanion.insert({
    this.id = const Value.absent(),
    this.completed = const Value.absent(),
    required int todoId,
  }) : todoId = Value(todoId);
  static Insertable<SubTask> custom({
    Expression<int>? id,
    Expression<bool>? completed,
    Expression<int>? todoId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (completed != null) 'completed': completed,
      if (todoId != null) 'todo_id': todoId,
    });
  }

  DriftSubTaskCompanion copyWith(
      {Value<int>? id, Value<bool>? completed, Value<int>? todoId}) {
    return DriftSubTaskCompanion(
      id: id ?? this.id,
      completed: completed ?? this.completed,
      todoId: todoId ?? this.todoId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    if (todoId.present) {
      map['todo_id'] = Variable<int>(todoId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftSubTaskCompanion(')
          ..write('id: $id, ')
          ..write('completed: $completed, ')
          ..write('todoId: $todoId')
          ..write(')'))
        .toString();
  }
}

class $DriftSubTaskTable extends DriftSubTask
    with TableInfo<$DriftSubTaskTable, SubTask> {
  final GeneratedDatabase _db;
  final String? _alias;
  $DriftSubTaskTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _completedMeta = const VerificationMeta('completed');
  @override
  late final GeneratedColumn<bool?> completed = GeneratedColumn<bool?>(
      'completed', aliasedName, false,
      type: const BoolType(),
      requiredDuringInsert: false,
      defaultConstraints: 'CHECK (completed IN (0, 1))',
      defaultValue: const Constant(false));
  final VerificationMeta _todoIdMeta = const VerificationMeta('todoId');
  @override
  late final GeneratedColumn<int?> todoId = GeneratedColumn<int?>(
      'todo_id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES Todo(id)');
  @override
  List<GeneratedColumn> get $columns => [id, completed, todoId];
  @override
  String get aliasedName => _alias ?? 'drift_sub_task';
  @override
  String get actualTableName => 'drift_sub_task';
  @override
  VerificationContext validateIntegrity(Insertable<SubTask> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('completed')) {
      context.handle(_completedMeta,
          completed.isAcceptableOrUnknown(data['completed']!, _completedMeta));
    }
    if (data.containsKey('todo_id')) {
      context.handle(_todoIdMeta,
          todoId.isAcceptableOrUnknown(data['todo_id']!, _todoIdMeta));
    } else if (isInserting) {
      context.missing(_todoIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SubTask map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SubTask.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DriftSubTaskTable createAlias(String alias) {
    return $DriftSubTaskTable(_db, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final String name;
  Category({required this.id, required this.name});
  factory Category.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Category(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  DriftCategoryCompanion toCompanion(bool nullToAbsent) {
    return DriftCategoryCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  Category copyWith({int? id, String? name}) => Category(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category && other.id == this.id && other.name == this.name);
}

class DriftCategoryCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<String> name;
  const DriftCategoryCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  DriftCategoryCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<Category> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  DriftCategoryCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return DriftCategoryCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftCategoryCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $DriftCategoryTable extends DriftCategory
    with TableInfo<$DriftCategoryTable, Category> {
  final GeneratedDatabase _db;
  final String? _alias;
  $DriftCategoryTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'name', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'drift_category';
  @override
  String get actualTableName => 'drift_category';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Category.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DriftCategoryTable createAlias(String alias) {
    return $DriftCategoryTable(_db, alias);
  }
}

abstract class _$HeyTaskDatabase extends GeneratedDatabase {
  _$HeyTaskDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $DriftTodoTable driftTodo = $DriftTodoTable(this);
  late final $DriftSubTaskTable driftSubTask = $DriftSubTaskTable(this);
  late final $DriftCategoryTable driftCategory = $DriftCategoryTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [driftTodo, driftSubTask, driftCategory];
}