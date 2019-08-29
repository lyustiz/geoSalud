// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Usuario extends DataClass implements Insertable<Usuario> {
  final int id;
  final String nombre;
  final String password;
  final int active;
  Usuario(
      {@required this.id,
      @required this.nombre,
      @required this.password,
      @required this.active});
  factory Usuario.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Usuario(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      nombre:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}nombre']),
      password: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      active: intType.mapFromDatabaseResponse(data['${effectivePrefix}active']),
    );
  }
  factory Usuario.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Usuario(
      id: serializer.fromJson<int>(json['id']),
      nombre: serializer.fromJson<String>(json['nombre']),
      password: serializer.fromJson<String>(json['password']),
      active: serializer.fromJson<int>(json['active']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'id': serializer.toJson<int>(id),
      'nombre': serializer.toJson<String>(nombre),
      'password': serializer.toJson<String>(password),
      'active': serializer.toJson<int>(active),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Usuario>>(bool nullToAbsent) {
    return UsuariosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      nombre:
          nombre == null && nullToAbsent ? const Value.absent() : Value(nombre),
      password: password == null && nullToAbsent
          ? const Value.absent()
          : Value(password),
      active:
          active == null && nullToAbsent ? const Value.absent() : Value(active),
    ) as T;
  }

  Usuario copyWith({int id, String nombre, String password, int active}) =>
      Usuario(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        password: password ?? this.password,
        active: active ?? this.active,
      );
  @override
  String toString() {
    return (StringBuffer('Usuario(')
          ..write('id: $id, ')
          ..write('nombre: $nombre, ')
          ..write('password: $password, ')
          ..write('active: $active')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode,
      $mrjc(nombre.hashCode, $mrjc(password.hashCode, active.hashCode))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Usuario &&
          other.id == id &&
          other.nombre == nombre &&
          other.password == password &&
          other.active == active);
}

class UsuariosCompanion extends UpdateCompanion<Usuario> {
  final Value<int> id;
  final Value<String> nombre;
  final Value<String> password;
  final Value<int> active;
  const UsuariosCompanion({
    this.id = const Value.absent(),
    this.nombre = const Value.absent(),
    this.password = const Value.absent(),
    this.active = const Value.absent(),
  });
  UsuariosCompanion copyWith(
      {Value<int> id,
      Value<String> nombre,
      Value<String> password,
      Value<int> active}) {
    return UsuariosCompanion(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      password: password ?? this.password,
      active: active ?? this.active,
    );
  }
}

class $UsuariosTable extends Usuarios with TableInfo<$UsuariosTable, Usuario> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsuariosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  GeneratedTextColumn _nombre;
  @override
  GeneratedTextColumn get nombre => _nombre ??= _constructNombre();
  GeneratedTextColumn _constructNombre() {
    return GeneratedTextColumn(
      'nombre',
      $tableName,
      false,
    );
  }

  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  GeneratedTextColumn _password;
  @override
  GeneratedTextColumn get password => _password ??= _constructPassword();
  GeneratedTextColumn _constructPassword() {
    return GeneratedTextColumn(
      'password',
      $tableName,
      false,
    );
  }

  final VerificationMeta _activeMeta = const VerificationMeta('active');
  GeneratedIntColumn _active;
  @override
  GeneratedIntColumn get active => _active ??= _constructActive();
  GeneratedIntColumn _constructActive() {
    return GeneratedIntColumn(
      'active',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, nombre, password, active];
  @override
  $UsuariosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'usuarios';
  @override
  final String actualTableName = 'usuarios';
  @override
  VerificationContext validateIntegrity(UsuariosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (id.isRequired && isInserting) {
      context.missing(_idMeta);
    }
    if (d.nombre.present) {
      context.handle(
          _nombreMeta, nombre.isAcceptableValue(d.nombre.value, _nombreMeta));
    } else if (nombre.isRequired && isInserting) {
      context.missing(_nombreMeta);
    }
    if (d.password.present) {
      context.handle(_passwordMeta,
          password.isAcceptableValue(d.password.value, _passwordMeta));
    } else if (password.isRequired && isInserting) {
      context.missing(_passwordMeta);
    }
    if (d.active.present) {
      context.handle(
          _activeMeta, active.isAcceptableValue(d.active.value, _activeMeta));
    } else if (active.isRequired && isInserting) {
      context.missing(_activeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Usuario map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Usuario.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(UsuariosCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.nombre.present) {
      map['nombre'] = Variable<String, StringType>(d.nombre.value);
    }
    if (d.password.present) {
      map['password'] = Variable<String, StringType>(d.password.value);
    }
    if (d.active.present) {
      map['active'] = Variable<int, IntType>(d.active.value);
    }
    return map;
  }

  @override
  $UsuariosTable createAlias(String alias) {
    return $UsuariosTable(_db, alias);
  }
}

abstract class _$GeoDatabase extends GeneratedDatabase {
  _$GeoDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $UsuariosTable _usuarios;
  $UsuariosTable get usuarios => _usuarios ??= $UsuariosTable(this);
  UsuarioDao _usuarioDao;
  UsuarioDao get usuarioDao => _usuarioDao ??= UsuarioDao(this as GeoDatabase);
  @override
  List<TableInfo> get allTables => [usuarios];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$UsuarioDaoMixin on DatabaseAccessor<GeoDatabase> {
  $UsuariosTable get usuarios => db.usuarios;
}
