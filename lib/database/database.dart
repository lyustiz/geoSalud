import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@DataClassName('Usuario')
class Usuarios extends Table {

  IntColumn  get id       => integer().autoIncrement()();
  TextColumn get nombre   => text()();
  TextColumn get password => text()();
  IntColumn  get active   => integer()(); 
} 

@UseMoor(tables: [Usuarios])

class GeoDatabase extends _$GeoDatabase{
  
  GeoDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path : 'geo_database.sqlite' , logStatements: true));
  
  @override
  int get schemaVersion => 1; 

  Future<List<Usuario>> allUsusarios() => select(usuarios).get();

  Stream<List<Usuario>> watchAllUsuario() => select(usuarios).watch();

  Future insUsuario(Usuario usuario) => into(usuarios).insert(usuario);

  // Updates a Task with a matching primary keyusuario
  Future updateUsuario(Usuario usuario) => update(usuarios).replace(usuario);

  Future deleteUsuario(Usuario usuario) => delete(usuarios).delete(usuario);

  Future <List<Usuario>> sortEntriesAlphabetically() {
    return (select(usuarios)..orderBy([(t) => OrderingTerm(expression: t.nombre)])).get();
  }

}

/*
@DataClassName('TodoEntry')
class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get content => text()();

  DateTimeColumn get targetDate => dateTime().nullable()();

  IntColumn get category => integer()
      .nullable()
      .customConstraint('NULLABLE REFERENCES categories(id)')();
}

@DataClassName('Category')
class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get description => text().named('desc')();
}

class CategoryWithCount {
  CategoryWithCount(this.category, this.count);

  // can be null, in which case we count how many entries don't have a category
  final Category category;
  final int count; // amount of entries in this category
}

class EntryWithCategory {
  EntryWithCategory(this.entry, this.category);

  final TodoEntry entry;
  final Category category;
}

@UseMoor(
  tables: [Todos, Categories],
  queries: {
    '_resetCategory': 'UPDATE todos SET category = NULL WHERE category = ?',
  },
)
class Database extends _$Database {
  Database()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAllTables();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from == 1) {
          await m.addColumn(todos, todos.targetDate);
        }
      },
      beforeOpen: (db, details) async {
        if (details.wasCreated) {
          // create default categories and entries
          final workId = await into(categories)
              .insert(const CategoriesCompanion(description: Value('Work')));

          await into(todos).insert(TodosCompanion(
            content: const Value('A first todo entry'),
            targetDate: Value(DateTime.now()),
          ));

          await into(todos).insert(
            TodosCompanion(
              content: const Value('Rework persistence code'),
              category: Value(workId),
              targetDate: Value(
                DateTime.now().add(const Duration(days: 4)),
              ),
            ),
          );
        }
      },
    );
  }

  Stream<List<CategoryWithCount>> categoriesWithCount() {
    // select all categories and load how many associated entries there are for
    // each category
    return customSelectStream(
      'SELECT c.id, c.desc, '
      '(SELECT COUNT(*) FROM todos WHERE category = c.id) AS amount '
      'FROM categories c '
      'UNION ALL SELECT null, null, '
      '(SELECT COUNT(*) FROM todos WHERE category IS NULL)',
      readsFrom: {todos, categories},
    ).map((rows) {
      // when we have the result set, map each row to the data class
      return rows.map((row) {
        final hasId = row.data['id'] != null;

        return CategoryWithCount(
          hasId ? Category.fromData(row.data, this) : null,
          row.readInt('amount'),
        );
      }).toList();
    });
  }

  /// Watches all entries in the given [category]. If the category is null, all
  /// entries will be shown instead.
  Stream<List<EntryWithCategory>> watchEntriesInCategory(Category category) {
    final query = select(todos).join(
        [leftOuterJoin(categories, categories.id.equalsExp(todos.category))]);

    if (category != null) {
      query.where(categories.id.equals(category.id));
    } else {
      query.where(isNull(categories.id));
    }

    return query.watch().map((rows) {
      // read both the entry and the associated category for each row
      return rows.map((row) {
        return EntryWithCategory(
          row.readTable(todos),
          row.readTable(categories),
        );
      }).toList();
    });
  }

  Future createEntry(TodosCompanion entry) {
    return into(todos).insert(entry);
  }

  /// Updates the row in the database represents this entry by writing the
  /// updated data.
  Future updateEntry(TodoEntry entry) {
    return update(todos).replace(entry);
  }

  Future deleteEntry(TodoEntry entry) {
    return delete(todos).delete(entry);
  }

  Future<int> createCategory(String description) {
    return into(categories)
        .insert(CategoriesCompanion(description: Value(description)));
  }

  Future deleteCategory(Category category) {
    return transaction((t) async {
      await _resetCategory(category.id);
      await delete(categories).delete(category);
    });
  }
}*/