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

class Ficha extends DataClass implements Insertable<Ficha> {
  final int FicId;
  final String FicNom;
  final int FicFlagHab;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Ficha(
      {@required this.FicId,
      @required this.FicNom,
      @required this.FicFlagHab,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory Ficha.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Ficha(
      FicId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      FicNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}fic_nom']),
      FicFlagHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_flag_hab']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory Ficha.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Ficha(
      FicId: serializer.fromJson<int>(json['FicId']),
      FicNom: serializer.fromJson<String>(json['FicNom']),
      FicFlagHab: serializer.fromJson<int>(json['FicFlagHab']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'FicId': serializer.toJson<int>(FicId),
      'FicNom': serializer.toJson<String>(FicNom),
      'FicFlagHab': serializer.toJson<int>(FicFlagHab),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Ficha>>(bool nullToAbsent) {
    return TableFichaCompanion(
      FicId:
          FicId == null && nullToAbsent ? const Value.absent() : Value(FicId),
      FicNom:
          FicNom == null && nullToAbsent ? const Value.absent() : Value(FicNom),
      FicFlagHab: FicFlagHab == null && nullToAbsent
          ? const Value.absent()
          : Value(FicFlagHab),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  Ficha copyWith(
          {int FicId,
          String FicNom,
          int FicFlagHab,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Ficha(
        FicId: FicId ?? this.FicId,
        FicNom: FicNom ?? this.FicNom,
        FicFlagHab: FicFlagHab ?? this.FicFlagHab,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Ficha(')
          ..write('FicId: $FicId, ')
          ..write('FicNom: $FicNom, ')
          ..write('FicFlagHab: $FicFlagHab, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      FicId.hashCode,
      $mrjc(
          FicNom.hashCode,
          $mrjc(
              FicFlagHab.hashCode,
              $mrjc(
                  StatusId.hashCode,
                  $mrjc(
                      UsuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Ficha &&
          other.FicId == FicId &&
          other.FicNom == FicNom &&
          other.FicFlagHab == FicFlagHab &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaCompanion extends UpdateCompanion<Ficha> {
  final Value<int> FicId;
  final Value<String> FicNom;
  final Value<int> FicFlagHab;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaCompanion({
    this.FicId = const Value.absent(),
    this.FicNom = const Value.absent(),
    this.FicFlagHab = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaCompanion copyWith(
      {Value<int> FicId,
      Value<String> FicNom,
      Value<int> FicFlagHab,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaCompanion(
      FicId: FicId ?? this.FicId,
      FicNom: FicNom ?? this.FicNom,
      FicFlagHab: FicFlagHab ?? this.FicFlagHab,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableFichaTable extends TableFicha
    with TableInfo<$TableFichaTable, Ficha> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableFichaTable(this._db, [this._alias]);
  final VerificationMeta _FicIdMeta = const VerificationMeta('FicId');
  GeneratedIntColumn _FicId;
  @override
  GeneratedIntColumn get FicId => _FicId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _FicNomMeta = const VerificationMeta('FicNom');
  GeneratedTextColumn _FicNom;
  @override
  GeneratedTextColumn get FicNom => _FicNom ??= _constructFicNom();
  GeneratedTextColumn _constructFicNom() {
    return GeneratedTextColumn(
      'fic_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FicFlagHabMeta = const VerificationMeta('FicFlagHab');
  GeneratedIntColumn _FicFlagHab;
  @override
  GeneratedIntColumn get FicFlagHab => _FicFlagHab ??= _constructFicFlagHab();
  GeneratedIntColumn _constructFicFlagHab() {
    return GeneratedIntColumn(
      'fic_flag_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        FicId,
        FicNom,
        FicFlagHab,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableFichaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_ficha';
  @override
  final String actualTableName = 'table_ficha';
  @override
  VerificationContext validateIntegrity(TableFichaCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.FicId.present) {
      context.handle(
          _FicIdMeta, FicId.isAcceptableValue(d.FicId.value, _FicIdMeta));
    } else if (FicId.isRequired && isInserting) {
      context.missing(_FicIdMeta);
    }
    if (d.FicNom.present) {
      context.handle(
          _FicNomMeta, FicNom.isAcceptableValue(d.FicNom.value, _FicNomMeta));
    } else if (FicNom.isRequired && isInserting) {
      context.missing(_FicNomMeta);
    }
    if (d.FicFlagHab.present) {
      context.handle(_FicFlagHabMeta,
          FicFlagHab.isAcceptableValue(d.FicFlagHab.value, _FicFlagHabMeta));
    } else if (FicFlagHab.isRequired && isInserting) {
      context.missing(_FicFlagHabMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {FicId};
  @override
  Ficha map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Ficha.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaCompanion d) {
    final map = <String, Variable>{};
    if (d.FicId.present) {
      map['fic_id'] = Variable<int, IntType>(d.FicId.value);
    }
    if (d.FicNom.present) {
      map['fic_nom'] = Variable<String, StringType>(d.FicNom.value);
    }
    if (d.FicFlagHab.present) {
      map['fic_flag_hab'] = Variable<int, IntType>(d.FicFlagHab.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableFichaTable createAlias(String alias) {
    return $TableFichaTable(_db, alias);
  }
}

class FichaVer extends DataClass implements Insertable<FichaVer> {
  final int FicId;
  final int FicVerId;
  final String FicVerSts;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaVer(
      {@required this.FicId,
      @required this.FicVerId,
      @required this.FicVerSts,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory FichaVer.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return FichaVer(
      FicId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      FicVerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_id']),
      FicVerSts: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_sts']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory FichaVer.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return FichaVer(
      FicId: serializer.fromJson<int>(json['FicId']),
      FicVerId: serializer.fromJson<int>(json['FicVerId']),
      FicVerSts: serializer.fromJson<String>(json['FicVerSts']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'FicId': serializer.toJson<int>(FicId),
      'FicVerId': serializer.toJson<int>(FicVerId),
      'FicVerSts': serializer.toJson<String>(FicVerSts),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaVer>>(bool nullToAbsent) {
    return TableFichaVerCompanion(
      FicId:
          FicId == null && nullToAbsent ? const Value.absent() : Value(FicId),
      FicVerId: FicVerId == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerId),
      FicVerSts: FicVerSts == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerSts),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  FichaVer copyWith(
          {int FicId,
          int FicVerId,
          String FicVerSts,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaVer(
        FicId: FicId ?? this.FicId,
        FicVerId: FicVerId ?? this.FicVerId,
        FicVerSts: FicVerSts ?? this.FicVerSts,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaVer(')
          ..write('FicId: $FicId, ')
          ..write('FicVerId: $FicVerId, ')
          ..write('FicVerSts: $FicVerSts, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      FicId.hashCode,
      $mrjc(
          FicVerId.hashCode,
          $mrjc(
              FicVerSts.hashCode,
              $mrjc(
                  StatusId.hashCode,
                  $mrjc(
                      UsuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FichaVer &&
          other.FicId == FicId &&
          other.FicVerId == FicVerId &&
          other.FicVerSts == FicVerSts &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaVerCompanion extends UpdateCompanion<FichaVer> {
  final Value<int> FicId;
  final Value<int> FicVerId;
  final Value<String> FicVerSts;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaVerCompanion({
    this.FicId = const Value.absent(),
    this.FicVerId = const Value.absent(),
    this.FicVerSts = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaVerCompanion copyWith(
      {Value<int> FicId,
      Value<int> FicVerId,
      Value<String> FicVerSts,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaVerCompanion(
      FicId: FicId ?? this.FicId,
      FicVerId: FicVerId ?? this.FicVerId,
      FicVerSts: FicVerSts ?? this.FicVerSts,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableFichaVerTable extends TableFichaVer
    with TableInfo<$TableFichaVerTable, FichaVer> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableFichaVerTable(this._db, [this._alias]);
  final VerificationMeta _FicIdMeta = const VerificationMeta('FicId');
  GeneratedIntColumn _FicId;
  @override
  GeneratedIntColumn get FicId => _FicId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _FicVerIdMeta = const VerificationMeta('FicVerId');
  GeneratedIntColumn _FicVerId;
  @override
  GeneratedIntColumn get FicVerId => _FicVerId ??= _constructFicVerId();
  GeneratedIntColumn _constructFicVerId() {
    return GeneratedIntColumn('fic_ver_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _FicVerStsMeta = const VerificationMeta('FicVerSts');
  GeneratedTextColumn _FicVerSts;
  @override
  GeneratedTextColumn get FicVerSts => _FicVerSts ??= _constructFicVerSts();
  GeneratedTextColumn _constructFicVerSts() {
    return GeneratedTextColumn(
      'fic_ver_sts',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        FicId,
        FicVerId,
        FicVerSts,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableFichaVerTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_ficha_ver';
  @override
  final String actualTableName = 'table_ficha_ver';
  @override
  VerificationContext validateIntegrity(TableFichaVerCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.FicId.present) {
      context.handle(
          _FicIdMeta, FicId.isAcceptableValue(d.FicId.value, _FicIdMeta));
    } else if (FicId.isRequired && isInserting) {
      context.missing(_FicIdMeta);
    }
    if (d.FicVerId.present) {
      context.handle(_FicVerIdMeta,
          FicVerId.isAcceptableValue(d.FicVerId.value, _FicVerIdMeta));
    } else if (FicVerId.isRequired && isInserting) {
      context.missing(_FicVerIdMeta);
    }
    if (d.FicVerSts.present) {
      context.handle(_FicVerStsMeta,
          FicVerSts.isAcceptableValue(d.FicVerSts.value, _FicVerStsMeta));
    } else if (FicVerSts.isRequired && isInserting) {
      context.missing(_FicVerStsMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {FicVerId};
  @override
  FichaVer map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FichaVer.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaVerCompanion d) {
    final map = <String, Variable>{};
    if (d.FicId.present) {
      map['fic_id'] = Variable<int, IntType>(d.FicId.value);
    }
    if (d.FicVerId.present) {
      map['fic_ver_id'] = Variable<int, IntType>(d.FicVerId.value);
    }
    if (d.FicVerSts.present) {
      map['fic_ver_sts'] = Variable<String, StringType>(d.FicVerSts.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableFichaVerTable createAlias(String alias) {
    return $TableFichaVerTable(_db, alias);
  }
}

class FichaVerItems extends DataClass implements Insertable<FichaVerItems> {
  final int FicId;
  final int FicVerId;
  final int FicVerItemsId;
  final String FicVerItemsNom;
  final int FicVerItemsOrd;
  final int FicVerItemsFlgEvolu;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaVerItems(
      {@required this.FicId,
      @required this.FicVerId,
      @required this.FicVerItemsId,
      @required this.FicVerItemsNom,
      @required this.FicVerItemsOrd,
      @required this.FicVerItemsFlgEvolu,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory FichaVerItems.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return FichaVerItems(
      FicId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      FicVerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_id']),
      FicVerItemsId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_id']),
      FicVerItemsNom: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_nom']),
      FicVerItemsOrd: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_ord']),
      FicVerItemsFlgEvolu: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}fic_ver_items_flg_evolu']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory FichaVerItems.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return FichaVerItems(
      FicId: serializer.fromJson<int>(json['FicId']),
      FicVerId: serializer.fromJson<int>(json['FicVerId']),
      FicVerItemsId: serializer.fromJson<int>(json['FicVerItemsId']),
      FicVerItemsNom: serializer.fromJson<String>(json['FicVerItemsNom']),
      FicVerItemsOrd: serializer.fromJson<int>(json['FicVerItemsOrd']),
      FicVerItemsFlgEvolu:
          serializer.fromJson<int>(json['FicVerItemsFlgEvolu']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'FicId': serializer.toJson<int>(FicId),
      'FicVerId': serializer.toJson<int>(FicVerId),
      'FicVerItemsId': serializer.toJson<int>(FicVerItemsId),
      'FicVerItemsNom': serializer.toJson<String>(FicVerItemsNom),
      'FicVerItemsOrd': serializer.toJson<int>(FicVerItemsOrd),
      'FicVerItemsFlgEvolu': serializer.toJson<int>(FicVerItemsFlgEvolu),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaVerItems>>(
      bool nullToAbsent) {
    return TableFichaVerItemsCompanion(
      FicId:
          FicId == null && nullToAbsent ? const Value.absent() : Value(FicId),
      FicVerId: FicVerId == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerId),
      FicVerItemsId: FicVerItemsId == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerItemsId),
      FicVerItemsNom: FicVerItemsNom == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerItemsNom),
      FicVerItemsOrd: FicVerItemsOrd == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerItemsOrd),
      FicVerItemsFlgEvolu: FicVerItemsFlgEvolu == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerItemsFlgEvolu),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  FichaVerItems copyWith(
          {int FicId,
          int FicVerId,
          int FicVerItemsId,
          String FicVerItemsNom,
          int FicVerItemsOrd,
          int FicVerItemsFlgEvolu,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaVerItems(
        FicId: FicId ?? this.FicId,
        FicVerId: FicVerId ?? this.FicVerId,
        FicVerItemsId: FicVerItemsId ?? this.FicVerItemsId,
        FicVerItemsNom: FicVerItemsNom ?? this.FicVerItemsNom,
        FicVerItemsOrd: FicVerItemsOrd ?? this.FicVerItemsOrd,
        FicVerItemsFlgEvolu: FicVerItemsFlgEvolu ?? this.FicVerItemsFlgEvolu,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaVerItems(')
          ..write('FicId: $FicId, ')
          ..write('FicVerId: $FicVerId, ')
          ..write('FicVerItemsId: $FicVerItemsId, ')
          ..write('FicVerItemsNom: $FicVerItemsNom, ')
          ..write('FicVerItemsOrd: $FicVerItemsOrd, ')
          ..write('FicVerItemsFlgEvolu: $FicVerItemsFlgEvolu, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      FicId.hashCode,
      $mrjc(
          FicVerId.hashCode,
          $mrjc(
              FicVerItemsId.hashCode,
              $mrjc(
                  FicVerItemsNom.hashCode,
                  $mrjc(
                      FicVerItemsOrd.hashCode,
                      $mrjc(
                          FicVerItemsFlgEvolu.hashCode,
                          $mrjc(
                              StatusId.hashCode,
                              $mrjc(
                                  UsuId.hashCode,
                                  $mrjc(
                                      createdAt.hashCode,
                                      $mrjc(updatedAt.hashCode,
                                          deletedAt.hashCode)))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FichaVerItems &&
          other.FicId == FicId &&
          other.FicVerId == FicVerId &&
          other.FicVerItemsId == FicVerItemsId &&
          other.FicVerItemsNom == FicVerItemsNom &&
          other.FicVerItemsOrd == FicVerItemsOrd &&
          other.FicVerItemsFlgEvolu == FicVerItemsFlgEvolu &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaVerItemsCompanion extends UpdateCompanion<FichaVerItems> {
  final Value<int> FicId;
  final Value<int> FicVerId;
  final Value<int> FicVerItemsId;
  final Value<String> FicVerItemsNom;
  final Value<int> FicVerItemsOrd;
  final Value<int> FicVerItemsFlgEvolu;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaVerItemsCompanion({
    this.FicId = const Value.absent(),
    this.FicVerId = const Value.absent(),
    this.FicVerItemsId = const Value.absent(),
    this.FicVerItemsNom = const Value.absent(),
    this.FicVerItemsOrd = const Value.absent(),
    this.FicVerItemsFlgEvolu = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaVerItemsCompanion copyWith(
      {Value<int> FicId,
      Value<int> FicVerId,
      Value<int> FicVerItemsId,
      Value<String> FicVerItemsNom,
      Value<int> FicVerItemsOrd,
      Value<int> FicVerItemsFlgEvolu,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaVerItemsCompanion(
      FicId: FicId ?? this.FicId,
      FicVerId: FicVerId ?? this.FicVerId,
      FicVerItemsId: FicVerItemsId ?? this.FicVerItemsId,
      FicVerItemsNom: FicVerItemsNom ?? this.FicVerItemsNom,
      FicVerItemsOrd: FicVerItemsOrd ?? this.FicVerItemsOrd,
      FicVerItemsFlgEvolu: FicVerItemsFlgEvolu ?? this.FicVerItemsFlgEvolu,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableFichaVerItemsTable extends TableFichaVerItems
    with TableInfo<$TableFichaVerItemsTable, FichaVerItems> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableFichaVerItemsTable(this._db, [this._alias]);
  final VerificationMeta _FicIdMeta = const VerificationMeta('FicId');
  GeneratedIntColumn _FicId;
  @override
  GeneratedIntColumn get FicId => _FicId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _FicVerIdMeta = const VerificationMeta('FicVerId');
  GeneratedIntColumn _FicVerId;
  @override
  GeneratedIntColumn get FicVerId => _FicVerId ??= _constructFicVerId();
  GeneratedIntColumn _constructFicVerId() {
    return GeneratedIntColumn('fic_ver_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVer(FicVerId)');
  }

  final VerificationMeta _FicVerItemsIdMeta =
      const VerificationMeta('FicVerItemsId');
  GeneratedIntColumn _FicVerItemsId;
  @override
  GeneratedIntColumn get FicVerItemsId =>
      _FicVerItemsId ??= _constructFicVerItemsId();
  GeneratedIntColumn _constructFicVerItemsId() {
    return GeneratedIntColumn('fic_ver_items_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _FicVerItemsNomMeta =
      const VerificationMeta('FicVerItemsNom');
  GeneratedTextColumn _FicVerItemsNom;
  @override
  GeneratedTextColumn get FicVerItemsNom =>
      _FicVerItemsNom ??= _constructFicVerItemsNom();
  GeneratedTextColumn _constructFicVerItemsNom() {
    return GeneratedTextColumn(
      'fic_ver_items_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FicVerItemsOrdMeta =
      const VerificationMeta('FicVerItemsOrd');
  GeneratedIntColumn _FicVerItemsOrd;
  @override
  GeneratedIntColumn get FicVerItemsOrd =>
      _FicVerItemsOrd ??= _constructFicVerItemsOrd();
  GeneratedIntColumn _constructFicVerItemsOrd() {
    return GeneratedIntColumn(
      'fic_ver_items_ord',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FicVerItemsFlgEvoluMeta =
      const VerificationMeta('FicVerItemsFlgEvolu');
  GeneratedIntColumn _FicVerItemsFlgEvolu;
  @override
  GeneratedIntColumn get FicVerItemsFlgEvolu =>
      _FicVerItemsFlgEvolu ??= _constructFicVerItemsFlgEvolu();
  GeneratedIntColumn _constructFicVerItemsFlgEvolu() {
    return GeneratedIntColumn(
      'fic_ver_items_flg_evolu',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        FicId,
        FicVerId,
        FicVerItemsId,
        FicVerItemsNom,
        FicVerItemsOrd,
        FicVerItemsFlgEvolu,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableFichaVerItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_ficha_ver_items';
  @override
  final String actualTableName = 'table_ficha_ver_items';
  @override
  VerificationContext validateIntegrity(TableFichaVerItemsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.FicId.present) {
      context.handle(
          _FicIdMeta, FicId.isAcceptableValue(d.FicId.value, _FicIdMeta));
    } else if (FicId.isRequired && isInserting) {
      context.missing(_FicIdMeta);
    }
    if (d.FicVerId.present) {
      context.handle(_FicVerIdMeta,
          FicVerId.isAcceptableValue(d.FicVerId.value, _FicVerIdMeta));
    } else if (FicVerId.isRequired && isInserting) {
      context.missing(_FicVerIdMeta);
    }
    if (d.FicVerItemsId.present) {
      context.handle(
          _FicVerItemsIdMeta,
          FicVerItemsId.isAcceptableValue(
              d.FicVerItemsId.value, _FicVerItemsIdMeta));
    } else if (FicVerItemsId.isRequired && isInserting) {
      context.missing(_FicVerItemsIdMeta);
    }
    if (d.FicVerItemsNom.present) {
      context.handle(
          _FicVerItemsNomMeta,
          FicVerItemsNom.isAcceptableValue(
              d.FicVerItemsNom.value, _FicVerItemsNomMeta));
    } else if (FicVerItemsNom.isRequired && isInserting) {
      context.missing(_FicVerItemsNomMeta);
    }
    if (d.FicVerItemsOrd.present) {
      context.handle(
          _FicVerItemsOrdMeta,
          FicVerItemsOrd.isAcceptableValue(
              d.FicVerItemsOrd.value, _FicVerItemsOrdMeta));
    } else if (FicVerItemsOrd.isRequired && isInserting) {
      context.missing(_FicVerItemsOrdMeta);
    }
    if (d.FicVerItemsFlgEvolu.present) {
      context.handle(
          _FicVerItemsFlgEvoluMeta,
          FicVerItemsFlgEvolu.isAcceptableValue(
              d.FicVerItemsFlgEvolu.value, _FicVerItemsFlgEvoluMeta));
    } else if (FicVerItemsFlgEvolu.isRequired && isInserting) {
      context.missing(_FicVerItemsFlgEvoluMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {FicVerItemsId};
  @override
  FichaVerItems map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FichaVerItems.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaVerItemsCompanion d) {
    final map = <String, Variable>{};
    if (d.FicId.present) {
      map['fic_id'] = Variable<int, IntType>(d.FicId.value);
    }
    if (d.FicVerId.present) {
      map['fic_ver_id'] = Variable<int, IntType>(d.FicVerId.value);
    }
    if (d.FicVerItemsId.present) {
      map['fic_ver_items_id'] = Variable<int, IntType>(d.FicVerItemsId.value);
    }
    if (d.FicVerItemsNom.present) {
      map['fic_ver_items_nom'] =
          Variable<String, StringType>(d.FicVerItemsNom.value);
    }
    if (d.FicVerItemsOrd.present) {
      map['fic_ver_items_ord'] = Variable<int, IntType>(d.FicVerItemsOrd.value);
    }
    if (d.FicVerItemsFlgEvolu.present) {
      map['fic_ver_items_flg_evolu'] =
          Variable<int, IntType>(d.FicVerItemsFlgEvolu.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableFichaVerItemsTable createAlias(String alias) {
    return $TableFichaVerItemsTable(_db, alias);
  }
}

class PregFrmDina extends DataClass implements Insertable<PregFrmDina> {
  final int PregFrmDinaId;
  final String PregFrmDinaDesc;
  final String PregFrmDinaTitulo;
  final int PregFrmDinaTipPreg;
  final int PregFrmDinaDefaNomTabDinId;
  final int PregFrmDinaValMin;
  final int PregFrmDinaValMax;
  final String PregFrmDinaTipDefa;
  final String PregFrmDinaValDefa;
  final String PregFrmDinaDefaValMemo;
  final int PregFrmDinaDefaTabDinValId;
  final String PregFrmDinaSufijo;
  final String PregFrmDinaHelp;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  PregFrmDina(
      {@required this.PregFrmDinaId,
      @required this.PregFrmDinaDesc,
      @required this.PregFrmDinaTitulo,
      @required this.PregFrmDinaTipPreg,
      @required this.PregFrmDinaDefaNomTabDinId,
      @required this.PregFrmDinaValMin,
      @required this.PregFrmDinaValMax,
      @required this.PregFrmDinaTipDefa,
      @required this.PregFrmDinaValDefa,
      @required this.PregFrmDinaDefaValMemo,
      @required this.PregFrmDinaDefaTabDinValId,
      @required this.PregFrmDinaSufijo,
      @required this.PregFrmDinaHelp,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory PregFrmDina.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PregFrmDina(
      PregFrmDinaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}preg_frm_dina_id']),
      PregFrmDinaDesc: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_desc']),
      PregFrmDinaTitulo: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_titulo']),
      PregFrmDinaTipPreg: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_tip_preg']),
      PregFrmDinaDefaNomTabDinId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_defa_nom_tab_din_id']),
      PregFrmDinaValMin: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_val_min']),
      PregFrmDinaValMax: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_val_max']),
      PregFrmDinaTipDefa: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_tip_defa']),
      PregFrmDinaValDefa: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_val_defa']),
      PregFrmDinaDefaValMemo: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_defa_val_memo']),
      PregFrmDinaDefaTabDinValId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_defa_tab_din_val_id']),
      PregFrmDinaSufijo: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_sufijo']),
      PregFrmDinaHelp: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_help']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory PregFrmDina.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return PregFrmDina(
      PregFrmDinaId: serializer.fromJson<int>(json['PregFrmDinaId']),
      PregFrmDinaDesc: serializer.fromJson<String>(json['PregFrmDinaDesc']),
      PregFrmDinaTitulo: serializer.fromJson<String>(json['PregFrmDinaTitulo']),
      PregFrmDinaTipPreg: serializer.fromJson<int>(json['PregFrmDinaTipPreg']),
      PregFrmDinaDefaNomTabDinId:
          serializer.fromJson<int>(json['PregFrmDinaDefaNomTabDinId']),
      PregFrmDinaValMin: serializer.fromJson<int>(json['PregFrmDinaValMin']),
      PregFrmDinaValMax: serializer.fromJson<int>(json['PregFrmDinaValMax']),
      PregFrmDinaTipDefa:
          serializer.fromJson<String>(json['PregFrmDinaTipDefa']),
      PregFrmDinaValDefa:
          serializer.fromJson<String>(json['PregFrmDinaValDefa']),
      PregFrmDinaDefaValMemo:
          serializer.fromJson<String>(json['PregFrmDinaDefaValMemo']),
      PregFrmDinaDefaTabDinValId:
          serializer.fromJson<int>(json['PregFrmDinaDefaTabDinValId']),
      PregFrmDinaSufijo: serializer.fromJson<String>(json['PregFrmDinaSufijo']),
      PregFrmDinaHelp: serializer.fromJson<String>(json['PregFrmDinaHelp']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'PregFrmDinaId': serializer.toJson<int>(PregFrmDinaId),
      'PregFrmDinaDesc': serializer.toJson<String>(PregFrmDinaDesc),
      'PregFrmDinaTitulo': serializer.toJson<String>(PregFrmDinaTitulo),
      'PregFrmDinaTipPreg': serializer.toJson<int>(PregFrmDinaTipPreg),
      'PregFrmDinaDefaNomTabDinId':
          serializer.toJson<int>(PregFrmDinaDefaNomTabDinId),
      'PregFrmDinaValMin': serializer.toJson<int>(PregFrmDinaValMin),
      'PregFrmDinaValMax': serializer.toJson<int>(PregFrmDinaValMax),
      'PregFrmDinaTipDefa': serializer.toJson<String>(PregFrmDinaTipDefa),
      'PregFrmDinaValDefa': serializer.toJson<String>(PregFrmDinaValDefa),
      'PregFrmDinaDefaValMemo':
          serializer.toJson<String>(PregFrmDinaDefaValMemo),
      'PregFrmDinaDefaTabDinValId':
          serializer.toJson<int>(PregFrmDinaDefaTabDinValId),
      'PregFrmDinaSufijo': serializer.toJson<String>(PregFrmDinaSufijo),
      'PregFrmDinaHelp': serializer.toJson<String>(PregFrmDinaHelp),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<PregFrmDina>>(bool nullToAbsent) {
    return TablePregFrmDinaCompanion(
      PregFrmDinaId: PregFrmDinaId == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaId),
      PregFrmDinaDesc: PregFrmDinaDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaDesc),
      PregFrmDinaTitulo: PregFrmDinaTitulo == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaTitulo),
      PregFrmDinaTipPreg: PregFrmDinaTipPreg == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaTipPreg),
      PregFrmDinaDefaNomTabDinId:
          PregFrmDinaDefaNomTabDinId == null && nullToAbsent
              ? const Value.absent()
              : Value(PregFrmDinaDefaNomTabDinId),
      PregFrmDinaValMin: PregFrmDinaValMin == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaValMin),
      PregFrmDinaValMax: PregFrmDinaValMax == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaValMax),
      PregFrmDinaTipDefa: PregFrmDinaTipDefa == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaTipDefa),
      PregFrmDinaValDefa: PregFrmDinaValDefa == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaValDefa),
      PregFrmDinaDefaValMemo: PregFrmDinaDefaValMemo == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaDefaValMemo),
      PregFrmDinaDefaTabDinValId:
          PregFrmDinaDefaTabDinValId == null && nullToAbsent
              ? const Value.absent()
              : Value(PregFrmDinaDefaTabDinValId),
      PregFrmDinaSufijo: PregFrmDinaSufijo == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaSufijo),
      PregFrmDinaHelp: PregFrmDinaHelp == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaHelp),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  PregFrmDina copyWith(
          {int PregFrmDinaId,
          String PregFrmDinaDesc,
          String PregFrmDinaTitulo,
          int PregFrmDinaTipPreg,
          int PregFrmDinaDefaNomTabDinId,
          int PregFrmDinaValMin,
          int PregFrmDinaValMax,
          String PregFrmDinaTipDefa,
          String PregFrmDinaValDefa,
          String PregFrmDinaDefaValMemo,
          int PregFrmDinaDefaTabDinValId,
          String PregFrmDinaSufijo,
          String PregFrmDinaHelp,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      PregFrmDina(
        PregFrmDinaId: PregFrmDinaId ?? this.PregFrmDinaId,
        PregFrmDinaDesc: PregFrmDinaDesc ?? this.PregFrmDinaDesc,
        PregFrmDinaTitulo: PregFrmDinaTitulo ?? this.PregFrmDinaTitulo,
        PregFrmDinaTipPreg: PregFrmDinaTipPreg ?? this.PregFrmDinaTipPreg,
        PregFrmDinaDefaNomTabDinId:
            PregFrmDinaDefaNomTabDinId ?? this.PregFrmDinaDefaNomTabDinId,
        PregFrmDinaValMin: PregFrmDinaValMin ?? this.PregFrmDinaValMin,
        PregFrmDinaValMax: PregFrmDinaValMax ?? this.PregFrmDinaValMax,
        PregFrmDinaTipDefa: PregFrmDinaTipDefa ?? this.PregFrmDinaTipDefa,
        PregFrmDinaValDefa: PregFrmDinaValDefa ?? this.PregFrmDinaValDefa,
        PregFrmDinaDefaValMemo:
            PregFrmDinaDefaValMemo ?? this.PregFrmDinaDefaValMemo,
        PregFrmDinaDefaTabDinValId:
            PregFrmDinaDefaTabDinValId ?? this.PregFrmDinaDefaTabDinValId,
        PregFrmDinaSufijo: PregFrmDinaSufijo ?? this.PregFrmDinaSufijo,
        PregFrmDinaHelp: PregFrmDinaHelp ?? this.PregFrmDinaHelp,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PregFrmDina(')
          ..write('PregFrmDinaId: $PregFrmDinaId, ')
          ..write('PregFrmDinaDesc: $PregFrmDinaDesc, ')
          ..write('PregFrmDinaTitulo: $PregFrmDinaTitulo, ')
          ..write('PregFrmDinaTipPreg: $PregFrmDinaTipPreg, ')
          ..write('PregFrmDinaDefaNomTabDinId: $PregFrmDinaDefaNomTabDinId, ')
          ..write('PregFrmDinaValMin: $PregFrmDinaValMin, ')
          ..write('PregFrmDinaValMax: $PregFrmDinaValMax, ')
          ..write('PregFrmDinaTipDefa: $PregFrmDinaTipDefa, ')
          ..write('PregFrmDinaValDefa: $PregFrmDinaValDefa, ')
          ..write('PregFrmDinaDefaValMemo: $PregFrmDinaDefaValMemo, ')
          ..write('PregFrmDinaDefaTabDinValId: $PregFrmDinaDefaTabDinValId, ')
          ..write('PregFrmDinaSufijo: $PregFrmDinaSufijo, ')
          ..write('PregFrmDinaHelp: $PregFrmDinaHelp, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      PregFrmDinaId.hashCode,
      $mrjc(
          PregFrmDinaDesc.hashCode,
          $mrjc(
              PregFrmDinaTitulo.hashCode,
              $mrjc(
                  PregFrmDinaTipPreg.hashCode,
                  $mrjc(
                      PregFrmDinaDefaNomTabDinId.hashCode,
                      $mrjc(
                          PregFrmDinaValMin.hashCode,
                          $mrjc(
                              PregFrmDinaValMax.hashCode,
                              $mrjc(
                                  PregFrmDinaTipDefa.hashCode,
                                  $mrjc(
                                      PregFrmDinaValDefa.hashCode,
                                      $mrjc(
                                          PregFrmDinaDefaValMemo.hashCode,
                                          $mrjc(
                                              PregFrmDinaDefaTabDinValId
                                                  .hashCode,
                                              $mrjc(
                                                  PregFrmDinaSufijo.hashCode,
                                                  $mrjc(
                                                      PregFrmDinaHelp.hashCode,
                                                      $mrjc(
                                                          StatusId.hashCode,
                                                          $mrjc(
                                                              UsuId.hashCode,
                                                              $mrjc(
                                                                  createdAt
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      updatedAt
                                                                          .hashCode,
                                                                      deletedAt
                                                                          .hashCode))))))))))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is PregFrmDina &&
          other.PregFrmDinaId == PregFrmDinaId &&
          other.PregFrmDinaDesc == PregFrmDinaDesc &&
          other.PregFrmDinaTitulo == PregFrmDinaTitulo &&
          other.PregFrmDinaTipPreg == PregFrmDinaTipPreg &&
          other.PregFrmDinaDefaNomTabDinId == PregFrmDinaDefaNomTabDinId &&
          other.PregFrmDinaValMin == PregFrmDinaValMin &&
          other.PregFrmDinaValMax == PregFrmDinaValMax &&
          other.PregFrmDinaTipDefa == PregFrmDinaTipDefa &&
          other.PregFrmDinaValDefa == PregFrmDinaValDefa &&
          other.PregFrmDinaDefaValMemo == PregFrmDinaDefaValMemo &&
          other.PregFrmDinaDefaTabDinValId == PregFrmDinaDefaTabDinValId &&
          other.PregFrmDinaSufijo == PregFrmDinaSufijo &&
          other.PregFrmDinaHelp == PregFrmDinaHelp &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePregFrmDinaCompanion extends UpdateCompanion<PregFrmDina> {
  final Value<int> PregFrmDinaId;
  final Value<String> PregFrmDinaDesc;
  final Value<String> PregFrmDinaTitulo;
  final Value<int> PregFrmDinaTipPreg;
  final Value<int> PregFrmDinaDefaNomTabDinId;
  final Value<int> PregFrmDinaValMin;
  final Value<int> PregFrmDinaValMax;
  final Value<String> PregFrmDinaTipDefa;
  final Value<String> PregFrmDinaValDefa;
  final Value<String> PregFrmDinaDefaValMemo;
  final Value<int> PregFrmDinaDefaTabDinValId;
  final Value<String> PregFrmDinaSufijo;
  final Value<String> PregFrmDinaHelp;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePregFrmDinaCompanion({
    this.PregFrmDinaId = const Value.absent(),
    this.PregFrmDinaDesc = const Value.absent(),
    this.PregFrmDinaTitulo = const Value.absent(),
    this.PregFrmDinaTipPreg = const Value.absent(),
    this.PregFrmDinaDefaNomTabDinId = const Value.absent(),
    this.PregFrmDinaValMin = const Value.absent(),
    this.PregFrmDinaValMax = const Value.absent(),
    this.PregFrmDinaTipDefa = const Value.absent(),
    this.PregFrmDinaValDefa = const Value.absent(),
    this.PregFrmDinaDefaValMemo = const Value.absent(),
    this.PregFrmDinaDefaTabDinValId = const Value.absent(),
    this.PregFrmDinaSufijo = const Value.absent(),
    this.PregFrmDinaHelp = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePregFrmDinaCompanion copyWith(
      {Value<int> PregFrmDinaId,
      Value<String> PregFrmDinaDesc,
      Value<String> PregFrmDinaTitulo,
      Value<int> PregFrmDinaTipPreg,
      Value<int> PregFrmDinaDefaNomTabDinId,
      Value<int> PregFrmDinaValMin,
      Value<int> PregFrmDinaValMax,
      Value<String> PregFrmDinaTipDefa,
      Value<String> PregFrmDinaValDefa,
      Value<String> PregFrmDinaDefaValMemo,
      Value<int> PregFrmDinaDefaTabDinValId,
      Value<String> PregFrmDinaSufijo,
      Value<String> PregFrmDinaHelp,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePregFrmDinaCompanion(
      PregFrmDinaId: PregFrmDinaId ?? this.PregFrmDinaId,
      PregFrmDinaDesc: PregFrmDinaDesc ?? this.PregFrmDinaDesc,
      PregFrmDinaTitulo: PregFrmDinaTitulo ?? this.PregFrmDinaTitulo,
      PregFrmDinaTipPreg: PregFrmDinaTipPreg ?? this.PregFrmDinaTipPreg,
      PregFrmDinaDefaNomTabDinId:
          PregFrmDinaDefaNomTabDinId ?? this.PregFrmDinaDefaNomTabDinId,
      PregFrmDinaValMin: PregFrmDinaValMin ?? this.PregFrmDinaValMin,
      PregFrmDinaValMax: PregFrmDinaValMax ?? this.PregFrmDinaValMax,
      PregFrmDinaTipDefa: PregFrmDinaTipDefa ?? this.PregFrmDinaTipDefa,
      PregFrmDinaValDefa: PregFrmDinaValDefa ?? this.PregFrmDinaValDefa,
      PregFrmDinaDefaValMemo:
          PregFrmDinaDefaValMemo ?? this.PregFrmDinaDefaValMemo,
      PregFrmDinaDefaTabDinValId:
          PregFrmDinaDefaTabDinValId ?? this.PregFrmDinaDefaTabDinValId,
      PregFrmDinaSufijo: PregFrmDinaSufijo ?? this.PregFrmDinaSufijo,
      PregFrmDinaHelp: PregFrmDinaHelp ?? this.PregFrmDinaHelp,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TablePregFrmDinaTable extends TablePregFrmDina
    with TableInfo<$TablePregFrmDinaTable, PregFrmDina> {
  final GeneratedDatabase _db;
  final String _alias;
  $TablePregFrmDinaTable(this._db, [this._alias]);
  final VerificationMeta _PregFrmDinaIdMeta =
      const VerificationMeta('PregFrmDinaId');
  GeneratedIntColumn _PregFrmDinaId;
  @override
  GeneratedIntColumn get PregFrmDinaId =>
      _PregFrmDinaId ??= _constructPregFrmDinaId();
  GeneratedIntColumn _constructPregFrmDinaId() {
    return GeneratedIntColumn('preg_frm_dina_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _PregFrmDinaDescMeta =
      const VerificationMeta('PregFrmDinaDesc');
  GeneratedTextColumn _PregFrmDinaDesc;
  @override
  GeneratedTextColumn get PregFrmDinaDesc =>
      _PregFrmDinaDesc ??= _constructPregFrmDinaDesc();
  GeneratedTextColumn _constructPregFrmDinaDesc() {
    return GeneratedTextColumn(
      'preg_frm_dina_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaTituloMeta =
      const VerificationMeta('PregFrmDinaTitulo');
  GeneratedTextColumn _PregFrmDinaTitulo;
  @override
  GeneratedTextColumn get PregFrmDinaTitulo =>
      _PregFrmDinaTitulo ??= _constructPregFrmDinaTitulo();
  GeneratedTextColumn _constructPregFrmDinaTitulo() {
    return GeneratedTextColumn(
      'preg_frm_dina_titulo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaTipPregMeta =
      const VerificationMeta('PregFrmDinaTipPreg');
  GeneratedIntColumn _PregFrmDinaTipPreg;
  @override
  GeneratedIntColumn get PregFrmDinaTipPreg =>
      _PregFrmDinaTipPreg ??= _constructPregFrmDinaTipPreg();
  GeneratedIntColumn _constructPregFrmDinaTipPreg() {
    return GeneratedIntColumn(
      'preg_frm_dina_tip_preg',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaDefaNomTabDinIdMeta =
      const VerificationMeta('PregFrmDinaDefaNomTabDinId');
  GeneratedIntColumn _PregFrmDinaDefaNomTabDinId;
  @override
  GeneratedIntColumn get PregFrmDinaDefaNomTabDinId =>
      _PregFrmDinaDefaNomTabDinId ??= _constructPregFrmDinaDefaNomTabDinId();
  GeneratedIntColumn _constructPregFrmDinaDefaNomTabDinId() {
    return GeneratedIntColumn(
      'preg_frm_dina_defa_nom_tab_din_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaValMinMeta =
      const VerificationMeta('PregFrmDinaValMin');
  GeneratedIntColumn _PregFrmDinaValMin;
  @override
  GeneratedIntColumn get PregFrmDinaValMin =>
      _PregFrmDinaValMin ??= _constructPregFrmDinaValMin();
  GeneratedIntColumn _constructPregFrmDinaValMin() {
    return GeneratedIntColumn(
      'preg_frm_dina_val_min',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaValMaxMeta =
      const VerificationMeta('PregFrmDinaValMax');
  GeneratedIntColumn _PregFrmDinaValMax;
  @override
  GeneratedIntColumn get PregFrmDinaValMax =>
      _PregFrmDinaValMax ??= _constructPregFrmDinaValMax();
  GeneratedIntColumn _constructPregFrmDinaValMax() {
    return GeneratedIntColumn(
      'preg_frm_dina_val_max',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaTipDefaMeta =
      const VerificationMeta('PregFrmDinaTipDefa');
  GeneratedTextColumn _PregFrmDinaTipDefa;
  @override
  GeneratedTextColumn get PregFrmDinaTipDefa =>
      _PregFrmDinaTipDefa ??= _constructPregFrmDinaTipDefa();
  GeneratedTextColumn _constructPregFrmDinaTipDefa() {
    return GeneratedTextColumn(
      'preg_frm_dina_tip_defa',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaValDefaMeta =
      const VerificationMeta('PregFrmDinaValDefa');
  GeneratedTextColumn _PregFrmDinaValDefa;
  @override
  GeneratedTextColumn get PregFrmDinaValDefa =>
      _PregFrmDinaValDefa ??= _constructPregFrmDinaValDefa();
  GeneratedTextColumn _constructPregFrmDinaValDefa() {
    return GeneratedTextColumn(
      'preg_frm_dina_val_defa',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaDefaValMemoMeta =
      const VerificationMeta('PregFrmDinaDefaValMemo');
  GeneratedTextColumn _PregFrmDinaDefaValMemo;
  @override
  GeneratedTextColumn get PregFrmDinaDefaValMemo =>
      _PregFrmDinaDefaValMemo ??= _constructPregFrmDinaDefaValMemo();
  GeneratedTextColumn _constructPregFrmDinaDefaValMemo() {
    return GeneratedTextColumn(
      'preg_frm_dina_defa_val_memo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaDefaTabDinValIdMeta =
      const VerificationMeta('PregFrmDinaDefaTabDinValId');
  GeneratedIntColumn _PregFrmDinaDefaTabDinValId;
  @override
  GeneratedIntColumn get PregFrmDinaDefaTabDinValId =>
      _PregFrmDinaDefaTabDinValId ??= _constructPregFrmDinaDefaTabDinValId();
  GeneratedIntColumn _constructPregFrmDinaDefaTabDinValId() {
    return GeneratedIntColumn(
      'preg_frm_dina_defa_tab_din_val_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaSufijoMeta =
      const VerificationMeta('PregFrmDinaSufijo');
  GeneratedTextColumn _PregFrmDinaSufijo;
  @override
  GeneratedTextColumn get PregFrmDinaSufijo =>
      _PregFrmDinaSufijo ??= _constructPregFrmDinaSufijo();
  GeneratedTextColumn _constructPregFrmDinaSufijo() {
    return GeneratedTextColumn(
      'preg_frm_dina_sufijo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PregFrmDinaHelpMeta =
      const VerificationMeta('PregFrmDinaHelp');
  GeneratedTextColumn _PregFrmDinaHelp;
  @override
  GeneratedTextColumn get PregFrmDinaHelp =>
      _PregFrmDinaHelp ??= _constructPregFrmDinaHelp();
  GeneratedTextColumn _constructPregFrmDinaHelp() {
    return GeneratedTextColumn(
      'preg_frm_dina_help',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        PregFrmDinaId,
        PregFrmDinaDesc,
        PregFrmDinaTitulo,
        PregFrmDinaTipPreg,
        PregFrmDinaDefaNomTabDinId,
        PregFrmDinaValMin,
        PregFrmDinaValMax,
        PregFrmDinaTipDefa,
        PregFrmDinaValDefa,
        PregFrmDinaDefaValMemo,
        PregFrmDinaDefaTabDinValId,
        PregFrmDinaSufijo,
        PregFrmDinaHelp,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TablePregFrmDinaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_preg_frm_dina';
  @override
  final String actualTableName = 'table_preg_frm_dina';
  @override
  VerificationContext validateIntegrity(TablePregFrmDinaCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.PregFrmDinaId.present) {
      context.handle(
          _PregFrmDinaIdMeta,
          PregFrmDinaId.isAcceptableValue(
              d.PregFrmDinaId.value, _PregFrmDinaIdMeta));
    } else if (PregFrmDinaId.isRequired && isInserting) {
      context.missing(_PregFrmDinaIdMeta);
    }
    if (d.PregFrmDinaDesc.present) {
      context.handle(
          _PregFrmDinaDescMeta,
          PregFrmDinaDesc.isAcceptableValue(
              d.PregFrmDinaDesc.value, _PregFrmDinaDescMeta));
    } else if (PregFrmDinaDesc.isRequired && isInserting) {
      context.missing(_PregFrmDinaDescMeta);
    }
    if (d.PregFrmDinaTitulo.present) {
      context.handle(
          _PregFrmDinaTituloMeta,
          PregFrmDinaTitulo.isAcceptableValue(
              d.PregFrmDinaTitulo.value, _PregFrmDinaTituloMeta));
    } else if (PregFrmDinaTitulo.isRequired && isInserting) {
      context.missing(_PregFrmDinaTituloMeta);
    }
    if (d.PregFrmDinaTipPreg.present) {
      context.handle(
          _PregFrmDinaTipPregMeta,
          PregFrmDinaTipPreg.isAcceptableValue(
              d.PregFrmDinaTipPreg.value, _PregFrmDinaTipPregMeta));
    } else if (PregFrmDinaTipPreg.isRequired && isInserting) {
      context.missing(_PregFrmDinaTipPregMeta);
    }
    if (d.PregFrmDinaDefaNomTabDinId.present) {
      context.handle(
          _PregFrmDinaDefaNomTabDinIdMeta,
          PregFrmDinaDefaNomTabDinId.isAcceptableValue(
              d.PregFrmDinaDefaNomTabDinId.value,
              _PregFrmDinaDefaNomTabDinIdMeta));
    } else if (PregFrmDinaDefaNomTabDinId.isRequired && isInserting) {
      context.missing(_PregFrmDinaDefaNomTabDinIdMeta);
    }
    if (d.PregFrmDinaValMin.present) {
      context.handle(
          _PregFrmDinaValMinMeta,
          PregFrmDinaValMin.isAcceptableValue(
              d.PregFrmDinaValMin.value, _PregFrmDinaValMinMeta));
    } else if (PregFrmDinaValMin.isRequired && isInserting) {
      context.missing(_PregFrmDinaValMinMeta);
    }
    if (d.PregFrmDinaValMax.present) {
      context.handle(
          _PregFrmDinaValMaxMeta,
          PregFrmDinaValMax.isAcceptableValue(
              d.PregFrmDinaValMax.value, _PregFrmDinaValMaxMeta));
    } else if (PregFrmDinaValMax.isRequired && isInserting) {
      context.missing(_PregFrmDinaValMaxMeta);
    }
    if (d.PregFrmDinaTipDefa.present) {
      context.handle(
          _PregFrmDinaTipDefaMeta,
          PregFrmDinaTipDefa.isAcceptableValue(
              d.PregFrmDinaTipDefa.value, _PregFrmDinaTipDefaMeta));
    } else if (PregFrmDinaTipDefa.isRequired && isInserting) {
      context.missing(_PregFrmDinaTipDefaMeta);
    }
    if (d.PregFrmDinaValDefa.present) {
      context.handle(
          _PregFrmDinaValDefaMeta,
          PregFrmDinaValDefa.isAcceptableValue(
              d.PregFrmDinaValDefa.value, _PregFrmDinaValDefaMeta));
    } else if (PregFrmDinaValDefa.isRequired && isInserting) {
      context.missing(_PregFrmDinaValDefaMeta);
    }
    if (d.PregFrmDinaDefaValMemo.present) {
      context.handle(
          _PregFrmDinaDefaValMemoMeta,
          PregFrmDinaDefaValMemo.isAcceptableValue(
              d.PregFrmDinaDefaValMemo.value, _PregFrmDinaDefaValMemoMeta));
    } else if (PregFrmDinaDefaValMemo.isRequired && isInserting) {
      context.missing(_PregFrmDinaDefaValMemoMeta);
    }
    if (d.PregFrmDinaDefaTabDinValId.present) {
      context.handle(
          _PregFrmDinaDefaTabDinValIdMeta,
          PregFrmDinaDefaTabDinValId.isAcceptableValue(
              d.PregFrmDinaDefaTabDinValId.value,
              _PregFrmDinaDefaTabDinValIdMeta));
    } else if (PregFrmDinaDefaTabDinValId.isRequired && isInserting) {
      context.missing(_PregFrmDinaDefaTabDinValIdMeta);
    }
    if (d.PregFrmDinaSufijo.present) {
      context.handle(
          _PregFrmDinaSufijoMeta,
          PregFrmDinaSufijo.isAcceptableValue(
              d.PregFrmDinaSufijo.value, _PregFrmDinaSufijoMeta));
    } else if (PregFrmDinaSufijo.isRequired && isInserting) {
      context.missing(_PregFrmDinaSufijoMeta);
    }
    if (d.PregFrmDinaHelp.present) {
      context.handle(
          _PregFrmDinaHelpMeta,
          PregFrmDinaHelp.isAcceptableValue(
              d.PregFrmDinaHelp.value, _PregFrmDinaHelpMeta));
    } else if (PregFrmDinaHelp.isRequired && isInserting) {
      context.missing(_PregFrmDinaHelpMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {PregFrmDinaId};
  @override
  PregFrmDina map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PregFrmDina.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TablePregFrmDinaCompanion d) {
    final map = <String, Variable>{};
    if (d.PregFrmDinaId.present) {
      map['preg_frm_dina_id'] = Variable<int, IntType>(d.PregFrmDinaId.value);
    }
    if (d.PregFrmDinaDesc.present) {
      map['preg_frm_dina_desc'] =
          Variable<String, StringType>(d.PregFrmDinaDesc.value);
    }
    if (d.PregFrmDinaTitulo.present) {
      map['preg_frm_dina_titulo'] =
          Variable<String, StringType>(d.PregFrmDinaTitulo.value);
    }
    if (d.PregFrmDinaTipPreg.present) {
      map['preg_frm_dina_tip_preg'] =
          Variable<int, IntType>(d.PregFrmDinaTipPreg.value);
    }
    if (d.PregFrmDinaDefaNomTabDinId.present) {
      map['preg_frm_dina_defa_nom_tab_din_id'] =
          Variable<int, IntType>(d.PregFrmDinaDefaNomTabDinId.value);
    }
    if (d.PregFrmDinaValMin.present) {
      map['preg_frm_dina_val_min'] =
          Variable<int, IntType>(d.PregFrmDinaValMin.value);
    }
    if (d.PregFrmDinaValMax.present) {
      map['preg_frm_dina_val_max'] =
          Variable<int, IntType>(d.PregFrmDinaValMax.value);
    }
    if (d.PregFrmDinaTipDefa.present) {
      map['preg_frm_dina_tip_defa'] =
          Variable<String, StringType>(d.PregFrmDinaTipDefa.value);
    }
    if (d.PregFrmDinaValDefa.present) {
      map['preg_frm_dina_val_defa'] =
          Variable<String, StringType>(d.PregFrmDinaValDefa.value);
    }
    if (d.PregFrmDinaDefaValMemo.present) {
      map['preg_frm_dina_defa_val_memo'] =
          Variable<String, StringType>(d.PregFrmDinaDefaValMemo.value);
    }
    if (d.PregFrmDinaDefaTabDinValId.present) {
      map['preg_frm_dina_defa_tab_din_val_id'] =
          Variable<int, IntType>(d.PregFrmDinaDefaTabDinValId.value);
    }
    if (d.PregFrmDinaSufijo.present) {
      map['preg_frm_dina_sufijo'] =
          Variable<String, StringType>(d.PregFrmDinaSufijo.value);
    }
    if (d.PregFrmDinaHelp.present) {
      map['preg_frm_dina_help'] =
          Variable<String, StringType>(d.PregFrmDinaHelp.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TablePregFrmDinaTable createAlias(String alias) {
    return $TablePregFrmDinaTable(_db, alias);
  }
}

class FichaVerPreg extends DataClass implements Insertable<FichaVerPreg> {
  final int FicId;
  final int FicVerId;
  final int FicVerItemsId;
  final int PregFrmDinaId;
  final int PregFrmDinaOrd;
  final int FichaVerPregFlgObli;
  final int FichaVerCondPregFrmDinaId;
  final String FichaVerPregSex;
  final String FichaVerPregFlgSexObl;
  final int FichaVerPregEdadMin;
  final int FichaVerPregEdadMax;
  final String FichaVerPregEdadEd;
  final int FichaVerPregFlgEdadObl;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaVerPreg(
      {@required this.FicId,
      @required this.FicVerId,
      @required this.FicVerItemsId,
      @required this.PregFrmDinaId,
      @required this.PregFrmDinaOrd,
      @required this.FichaVerPregFlgObli,
      @required this.FichaVerCondPregFrmDinaId,
      @required this.FichaVerPregSex,
      @required this.FichaVerPregFlgSexObl,
      @required this.FichaVerPregEdadMin,
      @required this.FichaVerPregEdadMax,
      @required this.FichaVerPregEdadEd,
      @required this.FichaVerPregFlgEdadObl,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory FichaVerPreg.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return FichaVerPreg(
      FicId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      FicVerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_id']),
      FicVerItemsId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_id']),
      PregFrmDinaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}preg_frm_dina_id']),
      PregFrmDinaOrd: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}preg_frm_dina_ord']),
      FichaVerPregFlgObli: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_flg_obli']),
      FichaVerCondPregFrmDinaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_cond_preg_frm_dina_id']),
      FichaVerPregSex: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_sex']),
      FichaVerPregFlgSexObl: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_flg_sex_obl']),
      FichaVerPregEdadMin: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_edad_min']),
      FichaVerPregEdadMax: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_edad_max']),
      FichaVerPregEdadEd: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_edad_ed']),
      FichaVerPregFlgEdadObl: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_flg_edad_obl']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory FichaVerPreg.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return FichaVerPreg(
      FicId: serializer.fromJson<int>(json['FicId']),
      FicVerId: serializer.fromJson<int>(json['FicVerId']),
      FicVerItemsId: serializer.fromJson<int>(json['FicVerItemsId']),
      PregFrmDinaId: serializer.fromJson<int>(json['PregFrmDinaId']),
      PregFrmDinaOrd: serializer.fromJson<int>(json['PregFrmDinaOrd']),
      FichaVerPregFlgObli:
          serializer.fromJson<int>(json['FichaVerPregFlgObli']),
      FichaVerCondPregFrmDinaId:
          serializer.fromJson<int>(json['FichaVerCondPregFrmDinaId']),
      FichaVerPregSex: serializer.fromJson<String>(json['FichaVerPregSex']),
      FichaVerPregFlgSexObl:
          serializer.fromJson<String>(json['FichaVerPregFlgSexObl']),
      FichaVerPregEdadMin:
          serializer.fromJson<int>(json['FichaVerPregEdadMin']),
      FichaVerPregEdadMax:
          serializer.fromJson<int>(json['FichaVerPregEdadMax']),
      FichaVerPregEdadEd:
          serializer.fromJson<String>(json['FichaVerPregEdadEd']),
      FichaVerPregFlgEdadObl:
          serializer.fromJson<int>(json['FichaVerPregFlgEdadObl']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'FicId': serializer.toJson<int>(FicId),
      'FicVerId': serializer.toJson<int>(FicVerId),
      'FicVerItemsId': serializer.toJson<int>(FicVerItemsId),
      'PregFrmDinaId': serializer.toJson<int>(PregFrmDinaId),
      'PregFrmDinaOrd': serializer.toJson<int>(PregFrmDinaOrd),
      'FichaVerPregFlgObli': serializer.toJson<int>(FichaVerPregFlgObli),
      'FichaVerCondPregFrmDinaId':
          serializer.toJson<int>(FichaVerCondPregFrmDinaId),
      'FichaVerPregSex': serializer.toJson<String>(FichaVerPregSex),
      'FichaVerPregFlgSexObl': serializer.toJson<String>(FichaVerPregFlgSexObl),
      'FichaVerPregEdadMin': serializer.toJson<int>(FichaVerPregEdadMin),
      'FichaVerPregEdadMax': serializer.toJson<int>(FichaVerPregEdadMax),
      'FichaVerPregEdadEd': serializer.toJson<String>(FichaVerPregEdadEd),
      'FichaVerPregFlgEdadObl': serializer.toJson<int>(FichaVerPregFlgEdadObl),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaVerPreg>>(
      bool nullToAbsent) {
    return TableFichaVerPregCompanion(
      FicId:
          FicId == null && nullToAbsent ? const Value.absent() : Value(FicId),
      FicVerId: FicVerId == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerId),
      FicVerItemsId: FicVerItemsId == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerItemsId),
      PregFrmDinaId: PregFrmDinaId == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaId),
      PregFrmDinaOrd: PregFrmDinaOrd == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaOrd),
      FichaVerPregFlgObli: FichaVerPregFlgObli == null && nullToAbsent
          ? const Value.absent()
          : Value(FichaVerPregFlgObli),
      FichaVerCondPregFrmDinaId:
          FichaVerCondPregFrmDinaId == null && nullToAbsent
              ? const Value.absent()
              : Value(FichaVerCondPregFrmDinaId),
      FichaVerPregSex: FichaVerPregSex == null && nullToAbsent
          ? const Value.absent()
          : Value(FichaVerPregSex),
      FichaVerPregFlgSexObl: FichaVerPregFlgSexObl == null && nullToAbsent
          ? const Value.absent()
          : Value(FichaVerPregFlgSexObl),
      FichaVerPregEdadMin: FichaVerPregEdadMin == null && nullToAbsent
          ? const Value.absent()
          : Value(FichaVerPregEdadMin),
      FichaVerPregEdadMax: FichaVerPregEdadMax == null && nullToAbsent
          ? const Value.absent()
          : Value(FichaVerPregEdadMax),
      FichaVerPregEdadEd: FichaVerPregEdadEd == null && nullToAbsent
          ? const Value.absent()
          : Value(FichaVerPregEdadEd),
      FichaVerPregFlgEdadObl: FichaVerPregFlgEdadObl == null && nullToAbsent
          ? const Value.absent()
          : Value(FichaVerPregFlgEdadObl),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  FichaVerPreg copyWith(
          {int FicId,
          int FicVerId,
          int FicVerItemsId,
          int PregFrmDinaId,
          int PregFrmDinaOrd,
          int FichaVerPregFlgObli,
          int FichaVerCondPregFrmDinaId,
          String FichaVerPregSex,
          String FichaVerPregFlgSexObl,
          int FichaVerPregEdadMin,
          int FichaVerPregEdadMax,
          String FichaVerPregEdadEd,
          int FichaVerPregFlgEdadObl,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaVerPreg(
        FicId: FicId ?? this.FicId,
        FicVerId: FicVerId ?? this.FicVerId,
        FicVerItemsId: FicVerItemsId ?? this.FicVerItemsId,
        PregFrmDinaId: PregFrmDinaId ?? this.PregFrmDinaId,
        PregFrmDinaOrd: PregFrmDinaOrd ?? this.PregFrmDinaOrd,
        FichaVerPregFlgObli: FichaVerPregFlgObli ?? this.FichaVerPregFlgObli,
        FichaVerCondPregFrmDinaId:
            FichaVerCondPregFrmDinaId ?? this.FichaVerCondPregFrmDinaId,
        FichaVerPregSex: FichaVerPregSex ?? this.FichaVerPregSex,
        FichaVerPregFlgSexObl:
            FichaVerPregFlgSexObl ?? this.FichaVerPregFlgSexObl,
        FichaVerPregEdadMin: FichaVerPregEdadMin ?? this.FichaVerPregEdadMin,
        FichaVerPregEdadMax: FichaVerPregEdadMax ?? this.FichaVerPregEdadMax,
        FichaVerPregEdadEd: FichaVerPregEdadEd ?? this.FichaVerPregEdadEd,
        FichaVerPregFlgEdadObl:
            FichaVerPregFlgEdadObl ?? this.FichaVerPregFlgEdadObl,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaVerPreg(')
          ..write('FicId: $FicId, ')
          ..write('FicVerId: $FicVerId, ')
          ..write('FicVerItemsId: $FicVerItemsId, ')
          ..write('PregFrmDinaId: $PregFrmDinaId, ')
          ..write('PregFrmDinaOrd: $PregFrmDinaOrd, ')
          ..write('FichaVerPregFlgObli: $FichaVerPregFlgObli, ')
          ..write('FichaVerCondPregFrmDinaId: $FichaVerCondPregFrmDinaId, ')
          ..write('FichaVerPregSex: $FichaVerPregSex, ')
          ..write('FichaVerPregFlgSexObl: $FichaVerPregFlgSexObl, ')
          ..write('FichaVerPregEdadMin: $FichaVerPregEdadMin, ')
          ..write('FichaVerPregEdadMax: $FichaVerPregEdadMax, ')
          ..write('FichaVerPregEdadEd: $FichaVerPregEdadEd, ')
          ..write('FichaVerPregFlgEdadObl: $FichaVerPregFlgEdadObl, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      FicId.hashCode,
      $mrjc(
          FicVerId.hashCode,
          $mrjc(
              FicVerItemsId.hashCode,
              $mrjc(
                  PregFrmDinaId.hashCode,
                  $mrjc(
                      PregFrmDinaOrd.hashCode,
                      $mrjc(
                          FichaVerPregFlgObli.hashCode,
                          $mrjc(
                              FichaVerCondPregFrmDinaId.hashCode,
                              $mrjc(
                                  FichaVerPregSex.hashCode,
                                  $mrjc(
                                      FichaVerPregFlgSexObl.hashCode,
                                      $mrjc(
                                          FichaVerPregEdadMin.hashCode,
                                          $mrjc(
                                              FichaVerPregEdadMax.hashCode,
                                              $mrjc(
                                                  FichaVerPregEdadEd.hashCode,
                                                  $mrjc(
                                                      FichaVerPregFlgEdadObl
                                                          .hashCode,
                                                      $mrjc(
                                                          StatusId.hashCode,
                                                          $mrjc(
                                                              UsuId.hashCode,
                                                              $mrjc(
                                                                  createdAt
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      updatedAt
                                                                          .hashCode,
                                                                      deletedAt
                                                                          .hashCode))))))))))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FichaVerPreg &&
          other.FicId == FicId &&
          other.FicVerId == FicVerId &&
          other.FicVerItemsId == FicVerItemsId &&
          other.PregFrmDinaId == PregFrmDinaId &&
          other.PregFrmDinaOrd == PregFrmDinaOrd &&
          other.FichaVerPregFlgObli == FichaVerPregFlgObli &&
          other.FichaVerCondPregFrmDinaId == FichaVerCondPregFrmDinaId &&
          other.FichaVerPregSex == FichaVerPregSex &&
          other.FichaVerPregFlgSexObl == FichaVerPregFlgSexObl &&
          other.FichaVerPregEdadMin == FichaVerPregEdadMin &&
          other.FichaVerPregEdadMax == FichaVerPregEdadMax &&
          other.FichaVerPregEdadEd == FichaVerPregEdadEd &&
          other.FichaVerPregFlgEdadObl == FichaVerPregFlgEdadObl &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaVerPregCompanion extends UpdateCompanion<FichaVerPreg> {
  final Value<int> FicId;
  final Value<int> FicVerId;
  final Value<int> FicVerItemsId;
  final Value<int> PregFrmDinaId;
  final Value<int> PregFrmDinaOrd;
  final Value<int> FichaVerPregFlgObli;
  final Value<int> FichaVerCondPregFrmDinaId;
  final Value<String> FichaVerPregSex;
  final Value<String> FichaVerPregFlgSexObl;
  final Value<int> FichaVerPregEdadMin;
  final Value<int> FichaVerPregEdadMax;
  final Value<String> FichaVerPregEdadEd;
  final Value<int> FichaVerPregFlgEdadObl;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaVerPregCompanion({
    this.FicId = const Value.absent(),
    this.FicVerId = const Value.absent(),
    this.FicVerItemsId = const Value.absent(),
    this.PregFrmDinaId = const Value.absent(),
    this.PregFrmDinaOrd = const Value.absent(),
    this.FichaVerPregFlgObli = const Value.absent(),
    this.FichaVerCondPregFrmDinaId = const Value.absent(),
    this.FichaVerPregSex = const Value.absent(),
    this.FichaVerPregFlgSexObl = const Value.absent(),
    this.FichaVerPregEdadMin = const Value.absent(),
    this.FichaVerPregEdadMax = const Value.absent(),
    this.FichaVerPregEdadEd = const Value.absent(),
    this.FichaVerPregFlgEdadObl = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaVerPregCompanion copyWith(
      {Value<int> FicId,
      Value<int> FicVerId,
      Value<int> FicVerItemsId,
      Value<int> PregFrmDinaId,
      Value<int> PregFrmDinaOrd,
      Value<int> FichaVerPregFlgObli,
      Value<int> FichaVerCondPregFrmDinaId,
      Value<String> FichaVerPregSex,
      Value<String> FichaVerPregFlgSexObl,
      Value<int> FichaVerPregEdadMin,
      Value<int> FichaVerPregEdadMax,
      Value<String> FichaVerPregEdadEd,
      Value<int> FichaVerPregFlgEdadObl,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaVerPregCompanion(
      FicId: FicId ?? this.FicId,
      FicVerId: FicVerId ?? this.FicVerId,
      FicVerItemsId: FicVerItemsId ?? this.FicVerItemsId,
      PregFrmDinaId: PregFrmDinaId ?? this.PregFrmDinaId,
      PregFrmDinaOrd: PregFrmDinaOrd ?? this.PregFrmDinaOrd,
      FichaVerPregFlgObli: FichaVerPregFlgObli ?? this.FichaVerPregFlgObli,
      FichaVerCondPregFrmDinaId:
          FichaVerCondPregFrmDinaId ?? this.FichaVerCondPregFrmDinaId,
      FichaVerPregSex: FichaVerPregSex ?? this.FichaVerPregSex,
      FichaVerPregFlgSexObl:
          FichaVerPregFlgSexObl ?? this.FichaVerPregFlgSexObl,
      FichaVerPregEdadMin: FichaVerPregEdadMin ?? this.FichaVerPregEdadMin,
      FichaVerPregEdadMax: FichaVerPregEdadMax ?? this.FichaVerPregEdadMax,
      FichaVerPregEdadEd: FichaVerPregEdadEd ?? this.FichaVerPregEdadEd,
      FichaVerPregFlgEdadObl:
          FichaVerPregFlgEdadObl ?? this.FichaVerPregFlgEdadObl,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableFichaVerPregTable extends TableFichaVerPreg
    with TableInfo<$TableFichaVerPregTable, FichaVerPreg> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableFichaVerPregTable(this._db, [this._alias]);
  final VerificationMeta _FicIdMeta = const VerificationMeta('FicId');
  GeneratedIntColumn _FicId;
  @override
  GeneratedIntColumn get FicId => _FicId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _FicVerIdMeta = const VerificationMeta('FicVerId');
  GeneratedIntColumn _FicVerId;
  @override
  GeneratedIntColumn get FicVerId => _FicVerId ??= _constructFicVerId();
  GeneratedIntColumn _constructFicVerId() {
    return GeneratedIntColumn('fic_ver_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVer(FicVerId)');
  }

  final VerificationMeta _FicVerItemsIdMeta =
      const VerificationMeta('FicVerItemsId');
  GeneratedIntColumn _FicVerItemsId;
  @override
  GeneratedIntColumn get FicVerItemsId =>
      _FicVerItemsId ??= _constructFicVerItemsId();
  GeneratedIntColumn _constructFicVerItemsId() {
    return GeneratedIntColumn('fic_ver_items_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVerItems(FicVerItemsId)');
  }

  final VerificationMeta _PregFrmDinaIdMeta =
      const VerificationMeta('PregFrmDinaId');
  GeneratedIntColumn _PregFrmDinaId;
  @override
  GeneratedIntColumn get PregFrmDinaId =>
      _PregFrmDinaId ??= _constructPregFrmDinaId();
  GeneratedIntColumn _constructPregFrmDinaId() {
    return GeneratedIntColumn('preg_frm_dina_id', $tableName, false,
        $customConstraints: 'REFERENCES PregFrmDina(PregFrmDinaId)');
  }

  final VerificationMeta _PregFrmDinaOrdMeta =
      const VerificationMeta('PregFrmDinaOrd');
  GeneratedIntColumn _PregFrmDinaOrd;
  @override
  GeneratedIntColumn get PregFrmDinaOrd =>
      _PregFrmDinaOrd ??= _constructPregFrmDinaOrd();
  GeneratedIntColumn _constructPregFrmDinaOrd() {
    return GeneratedIntColumn(
      'preg_frm_dina_ord',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FichaVerPregFlgObliMeta =
      const VerificationMeta('FichaVerPregFlgObli');
  GeneratedIntColumn _FichaVerPregFlgObli;
  @override
  GeneratedIntColumn get FichaVerPregFlgObli =>
      _FichaVerPregFlgObli ??= _constructFichaVerPregFlgObli();
  GeneratedIntColumn _constructFichaVerPregFlgObli() {
    return GeneratedIntColumn(
      'ficha_ver_preg_flg_obli',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FichaVerCondPregFrmDinaIdMeta =
      const VerificationMeta('FichaVerCondPregFrmDinaId');
  GeneratedIntColumn _FichaVerCondPregFrmDinaId;
  @override
  GeneratedIntColumn get FichaVerCondPregFrmDinaId =>
      _FichaVerCondPregFrmDinaId ??= _constructFichaVerCondPregFrmDinaId();
  GeneratedIntColumn _constructFichaVerCondPregFrmDinaId() {
    return GeneratedIntColumn(
      'ficha_ver_cond_preg_frm_dina_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FichaVerPregSexMeta =
      const VerificationMeta('FichaVerPregSex');
  GeneratedTextColumn _FichaVerPregSex;
  @override
  GeneratedTextColumn get FichaVerPregSex =>
      _FichaVerPregSex ??= _constructFichaVerPregSex();
  GeneratedTextColumn _constructFichaVerPregSex() {
    return GeneratedTextColumn(
      'ficha_ver_preg_sex',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FichaVerPregFlgSexOblMeta =
      const VerificationMeta('FichaVerPregFlgSexObl');
  GeneratedTextColumn _FichaVerPregFlgSexObl;
  @override
  GeneratedTextColumn get FichaVerPregFlgSexObl =>
      _FichaVerPregFlgSexObl ??= _constructFichaVerPregFlgSexObl();
  GeneratedTextColumn _constructFichaVerPregFlgSexObl() {
    return GeneratedTextColumn(
      'ficha_ver_preg_flg_sex_obl',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FichaVerPregEdadMinMeta =
      const VerificationMeta('FichaVerPregEdadMin');
  GeneratedIntColumn _FichaVerPregEdadMin;
  @override
  GeneratedIntColumn get FichaVerPregEdadMin =>
      _FichaVerPregEdadMin ??= _constructFichaVerPregEdadMin();
  GeneratedIntColumn _constructFichaVerPregEdadMin() {
    return GeneratedIntColumn(
      'ficha_ver_preg_edad_min',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FichaVerPregEdadMaxMeta =
      const VerificationMeta('FichaVerPregEdadMax');
  GeneratedIntColumn _FichaVerPregEdadMax;
  @override
  GeneratedIntColumn get FichaVerPregEdadMax =>
      _FichaVerPregEdadMax ??= _constructFichaVerPregEdadMax();
  GeneratedIntColumn _constructFichaVerPregEdadMax() {
    return GeneratedIntColumn(
      'ficha_ver_preg_edad_max',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FichaVerPregEdadEdMeta =
      const VerificationMeta('FichaVerPregEdadEd');
  GeneratedTextColumn _FichaVerPregEdadEd;
  @override
  GeneratedTextColumn get FichaVerPregEdadEd =>
      _FichaVerPregEdadEd ??= _constructFichaVerPregEdadEd();
  GeneratedTextColumn _constructFichaVerPregEdadEd() {
    return GeneratedTextColumn(
      'ficha_ver_preg_edad_ed',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FichaVerPregFlgEdadOblMeta =
      const VerificationMeta('FichaVerPregFlgEdadObl');
  GeneratedIntColumn _FichaVerPregFlgEdadObl;
  @override
  GeneratedIntColumn get FichaVerPregFlgEdadObl =>
      _FichaVerPregFlgEdadObl ??= _constructFichaVerPregFlgEdadObl();
  GeneratedIntColumn _constructFichaVerPregFlgEdadObl() {
    return GeneratedIntColumn(
      'ficha_ver_preg_flg_edad_obl',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        FicId,
        FicVerId,
        FicVerItemsId,
        PregFrmDinaId,
        PregFrmDinaOrd,
        FichaVerPregFlgObli,
        FichaVerCondPregFrmDinaId,
        FichaVerPregSex,
        FichaVerPregFlgSexObl,
        FichaVerPregEdadMin,
        FichaVerPregEdadMax,
        FichaVerPregEdadEd,
        FichaVerPregFlgEdadObl,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableFichaVerPregTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_ficha_ver_preg';
  @override
  final String actualTableName = 'table_ficha_ver_preg';
  @override
  VerificationContext validateIntegrity(TableFichaVerPregCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.FicId.present) {
      context.handle(
          _FicIdMeta, FicId.isAcceptableValue(d.FicId.value, _FicIdMeta));
    } else if (FicId.isRequired && isInserting) {
      context.missing(_FicIdMeta);
    }
    if (d.FicVerId.present) {
      context.handle(_FicVerIdMeta,
          FicVerId.isAcceptableValue(d.FicVerId.value, _FicVerIdMeta));
    } else if (FicVerId.isRequired && isInserting) {
      context.missing(_FicVerIdMeta);
    }
    if (d.FicVerItemsId.present) {
      context.handle(
          _FicVerItemsIdMeta,
          FicVerItemsId.isAcceptableValue(
              d.FicVerItemsId.value, _FicVerItemsIdMeta));
    } else if (FicVerItemsId.isRequired && isInserting) {
      context.missing(_FicVerItemsIdMeta);
    }
    if (d.PregFrmDinaId.present) {
      context.handle(
          _PregFrmDinaIdMeta,
          PregFrmDinaId.isAcceptableValue(
              d.PregFrmDinaId.value, _PregFrmDinaIdMeta));
    } else if (PregFrmDinaId.isRequired && isInserting) {
      context.missing(_PregFrmDinaIdMeta);
    }
    if (d.PregFrmDinaOrd.present) {
      context.handle(
          _PregFrmDinaOrdMeta,
          PregFrmDinaOrd.isAcceptableValue(
              d.PregFrmDinaOrd.value, _PregFrmDinaOrdMeta));
    } else if (PregFrmDinaOrd.isRequired && isInserting) {
      context.missing(_PregFrmDinaOrdMeta);
    }
    if (d.FichaVerPregFlgObli.present) {
      context.handle(
          _FichaVerPregFlgObliMeta,
          FichaVerPregFlgObli.isAcceptableValue(
              d.FichaVerPregFlgObli.value, _FichaVerPregFlgObliMeta));
    } else if (FichaVerPregFlgObli.isRequired && isInserting) {
      context.missing(_FichaVerPregFlgObliMeta);
    }
    if (d.FichaVerCondPregFrmDinaId.present) {
      context.handle(
          _FichaVerCondPregFrmDinaIdMeta,
          FichaVerCondPregFrmDinaId.isAcceptableValue(
              d.FichaVerCondPregFrmDinaId.value,
              _FichaVerCondPregFrmDinaIdMeta));
    } else if (FichaVerCondPregFrmDinaId.isRequired && isInserting) {
      context.missing(_FichaVerCondPregFrmDinaIdMeta);
    }
    if (d.FichaVerPregSex.present) {
      context.handle(
          _FichaVerPregSexMeta,
          FichaVerPregSex.isAcceptableValue(
              d.FichaVerPregSex.value, _FichaVerPregSexMeta));
    } else if (FichaVerPregSex.isRequired && isInserting) {
      context.missing(_FichaVerPregSexMeta);
    }
    if (d.FichaVerPregFlgSexObl.present) {
      context.handle(
          _FichaVerPregFlgSexOblMeta,
          FichaVerPregFlgSexObl.isAcceptableValue(
              d.FichaVerPregFlgSexObl.value, _FichaVerPregFlgSexOblMeta));
    } else if (FichaVerPregFlgSexObl.isRequired && isInserting) {
      context.missing(_FichaVerPregFlgSexOblMeta);
    }
    if (d.FichaVerPregEdadMin.present) {
      context.handle(
          _FichaVerPregEdadMinMeta,
          FichaVerPregEdadMin.isAcceptableValue(
              d.FichaVerPregEdadMin.value, _FichaVerPregEdadMinMeta));
    } else if (FichaVerPregEdadMin.isRequired && isInserting) {
      context.missing(_FichaVerPregEdadMinMeta);
    }
    if (d.FichaVerPregEdadMax.present) {
      context.handle(
          _FichaVerPregEdadMaxMeta,
          FichaVerPregEdadMax.isAcceptableValue(
              d.FichaVerPregEdadMax.value, _FichaVerPregEdadMaxMeta));
    } else if (FichaVerPregEdadMax.isRequired && isInserting) {
      context.missing(_FichaVerPregEdadMaxMeta);
    }
    if (d.FichaVerPregEdadEd.present) {
      context.handle(
          _FichaVerPregEdadEdMeta,
          FichaVerPregEdadEd.isAcceptableValue(
              d.FichaVerPregEdadEd.value, _FichaVerPregEdadEdMeta));
    } else if (FichaVerPregEdadEd.isRequired && isInserting) {
      context.missing(_FichaVerPregEdadEdMeta);
    }
    if (d.FichaVerPregFlgEdadObl.present) {
      context.handle(
          _FichaVerPregFlgEdadOblMeta,
          FichaVerPregFlgEdadObl.isAcceptableValue(
              d.FichaVerPregFlgEdadObl.value, _FichaVerPregFlgEdadOblMeta));
    } else if (FichaVerPregFlgEdadObl.isRequired && isInserting) {
      context.missing(_FichaVerPregFlgEdadOblMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  FichaVerPreg map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FichaVerPreg.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaVerPregCompanion d) {
    final map = <String, Variable>{};
    if (d.FicId.present) {
      map['fic_id'] = Variable<int, IntType>(d.FicId.value);
    }
    if (d.FicVerId.present) {
      map['fic_ver_id'] = Variable<int, IntType>(d.FicVerId.value);
    }
    if (d.FicVerItemsId.present) {
      map['fic_ver_items_id'] = Variable<int, IntType>(d.FicVerItemsId.value);
    }
    if (d.PregFrmDinaId.present) {
      map['preg_frm_dina_id'] = Variable<int, IntType>(d.PregFrmDinaId.value);
    }
    if (d.PregFrmDinaOrd.present) {
      map['preg_frm_dina_ord'] = Variable<int, IntType>(d.PregFrmDinaOrd.value);
    }
    if (d.FichaVerPregFlgObli.present) {
      map['ficha_ver_preg_flg_obli'] =
          Variable<int, IntType>(d.FichaVerPregFlgObli.value);
    }
    if (d.FichaVerCondPregFrmDinaId.present) {
      map['ficha_ver_cond_preg_frm_dina_id'] =
          Variable<int, IntType>(d.FichaVerCondPregFrmDinaId.value);
    }
    if (d.FichaVerPregSex.present) {
      map['ficha_ver_preg_sex'] =
          Variable<String, StringType>(d.FichaVerPregSex.value);
    }
    if (d.FichaVerPregFlgSexObl.present) {
      map['ficha_ver_preg_flg_sex_obl'] =
          Variable<String, StringType>(d.FichaVerPregFlgSexObl.value);
    }
    if (d.FichaVerPregEdadMin.present) {
      map['ficha_ver_preg_edad_min'] =
          Variable<int, IntType>(d.FichaVerPregEdadMin.value);
    }
    if (d.FichaVerPregEdadMax.present) {
      map['ficha_ver_preg_edad_max'] =
          Variable<int, IntType>(d.FichaVerPregEdadMax.value);
    }
    if (d.FichaVerPregEdadEd.present) {
      map['ficha_ver_preg_edad_ed'] =
          Variable<String, StringType>(d.FichaVerPregEdadEd.value);
    }
    if (d.FichaVerPregFlgEdadObl.present) {
      map['ficha_ver_preg_flg_edad_obl'] =
          Variable<int, IntType>(d.FichaVerPregFlgEdadObl.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableFichaVerPregTable createAlias(String alias) {
    return $TableFichaVerPregTable(_db, alias);
  }
}

class FichaVerItemsPregTabDin extends DataClass
    implements Insertable<FichaVerItemsPregTabDin> {
  final int FicId;
  final int FicVerId;
  final int FicVerItemsId;
  final int PregFrmDinaId;
  final int FichaVerTabDinId;
  final int FichaVerTabDinValId;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaVerItemsPregTabDin(
      {@required this.FicId,
      @required this.FicVerId,
      @required this.FicVerItemsId,
      @required this.PregFrmDinaId,
      @required this.FichaVerTabDinId,
      @required this.FichaVerTabDinValId,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory FichaVerItemsPregTabDin.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return FichaVerItemsPregTabDin(
      FicId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      FicVerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_id']),
      FicVerItemsId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_id']),
      PregFrmDinaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}preg_frm_dina_id']),
      FichaVerTabDinId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_tab_din_id']),
      FichaVerTabDinValId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_tab_din_val_id']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory FichaVerItemsPregTabDin.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return FichaVerItemsPregTabDin(
      FicId: serializer.fromJson<int>(json['FicId']),
      FicVerId: serializer.fromJson<int>(json['FicVerId']),
      FicVerItemsId: serializer.fromJson<int>(json['FicVerItemsId']),
      PregFrmDinaId: serializer.fromJson<int>(json['PregFrmDinaId']),
      FichaVerTabDinId: serializer.fromJson<int>(json['FichaVerTabDinId']),
      FichaVerTabDinValId:
          serializer.fromJson<int>(json['FichaVerTabDinValId']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'FicId': serializer.toJson<int>(FicId),
      'FicVerId': serializer.toJson<int>(FicVerId),
      'FicVerItemsId': serializer.toJson<int>(FicVerItemsId),
      'PregFrmDinaId': serializer.toJson<int>(PregFrmDinaId),
      'FichaVerTabDinId': serializer.toJson<int>(FichaVerTabDinId),
      'FichaVerTabDinValId': serializer.toJson<int>(FichaVerTabDinValId),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaVerItemsPregTabDin>>(
      bool nullToAbsent) {
    return TableFichaVerItemsPregTabDinCompanion(
      FicId:
          FicId == null && nullToAbsent ? const Value.absent() : Value(FicId),
      FicVerId: FicVerId == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerId),
      FicVerItemsId: FicVerItemsId == null && nullToAbsent
          ? const Value.absent()
          : Value(FicVerItemsId),
      PregFrmDinaId: PregFrmDinaId == null && nullToAbsent
          ? const Value.absent()
          : Value(PregFrmDinaId),
      FichaVerTabDinId: FichaVerTabDinId == null && nullToAbsent
          ? const Value.absent()
          : Value(FichaVerTabDinId),
      FichaVerTabDinValId: FichaVerTabDinValId == null && nullToAbsent
          ? const Value.absent()
          : Value(FichaVerTabDinValId),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  FichaVerItemsPregTabDin copyWith(
          {int FicId,
          int FicVerId,
          int FicVerItemsId,
          int PregFrmDinaId,
          int FichaVerTabDinId,
          int FichaVerTabDinValId,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaVerItemsPregTabDin(
        FicId: FicId ?? this.FicId,
        FicVerId: FicVerId ?? this.FicVerId,
        FicVerItemsId: FicVerItemsId ?? this.FicVerItemsId,
        PregFrmDinaId: PregFrmDinaId ?? this.PregFrmDinaId,
        FichaVerTabDinId: FichaVerTabDinId ?? this.FichaVerTabDinId,
        FichaVerTabDinValId: FichaVerTabDinValId ?? this.FichaVerTabDinValId,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaVerItemsPregTabDin(')
          ..write('FicId: $FicId, ')
          ..write('FicVerId: $FicVerId, ')
          ..write('FicVerItemsId: $FicVerItemsId, ')
          ..write('PregFrmDinaId: $PregFrmDinaId, ')
          ..write('FichaVerTabDinId: $FichaVerTabDinId, ')
          ..write('FichaVerTabDinValId: $FichaVerTabDinValId, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      FicId.hashCode,
      $mrjc(
          FicVerId.hashCode,
          $mrjc(
              FicVerItemsId.hashCode,
              $mrjc(
                  PregFrmDinaId.hashCode,
                  $mrjc(
                      FichaVerTabDinId.hashCode,
                      $mrjc(
                          FichaVerTabDinValId.hashCode,
                          $mrjc(
                              StatusId.hashCode,
                              $mrjc(
                                  UsuId.hashCode,
                                  $mrjc(
                                      createdAt.hashCode,
                                      $mrjc(updatedAt.hashCode,
                                          deletedAt.hashCode)))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FichaVerItemsPregTabDin &&
          other.FicId == FicId &&
          other.FicVerId == FicVerId &&
          other.FicVerItemsId == FicVerItemsId &&
          other.PregFrmDinaId == PregFrmDinaId &&
          other.FichaVerTabDinId == FichaVerTabDinId &&
          other.FichaVerTabDinValId == FichaVerTabDinValId &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaVerItemsPregTabDinCompanion
    extends UpdateCompanion<FichaVerItemsPregTabDin> {
  final Value<int> FicId;
  final Value<int> FicVerId;
  final Value<int> FicVerItemsId;
  final Value<int> PregFrmDinaId;
  final Value<int> FichaVerTabDinId;
  final Value<int> FichaVerTabDinValId;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaVerItemsPregTabDinCompanion({
    this.FicId = const Value.absent(),
    this.FicVerId = const Value.absent(),
    this.FicVerItemsId = const Value.absent(),
    this.PregFrmDinaId = const Value.absent(),
    this.FichaVerTabDinId = const Value.absent(),
    this.FichaVerTabDinValId = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaVerItemsPregTabDinCompanion copyWith(
      {Value<int> FicId,
      Value<int> FicVerId,
      Value<int> FicVerItemsId,
      Value<int> PregFrmDinaId,
      Value<int> FichaVerTabDinId,
      Value<int> FichaVerTabDinValId,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaVerItemsPregTabDinCompanion(
      FicId: FicId ?? this.FicId,
      FicVerId: FicVerId ?? this.FicVerId,
      FicVerItemsId: FicVerItemsId ?? this.FicVerItemsId,
      PregFrmDinaId: PregFrmDinaId ?? this.PregFrmDinaId,
      FichaVerTabDinId: FichaVerTabDinId ?? this.FichaVerTabDinId,
      FichaVerTabDinValId: FichaVerTabDinValId ?? this.FichaVerTabDinValId,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableFichaVerItemsPregTabDinTable extends TableFichaVerItemsPregTabDin
    with
        TableInfo<$TableFichaVerItemsPregTabDinTable, FichaVerItemsPregTabDin> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableFichaVerItemsPregTabDinTable(this._db, [this._alias]);
  final VerificationMeta _FicIdMeta = const VerificationMeta('FicId');
  GeneratedIntColumn _FicId;
  @override
  GeneratedIntColumn get FicId => _FicId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _FicVerIdMeta = const VerificationMeta('FicVerId');
  GeneratedIntColumn _FicVerId;
  @override
  GeneratedIntColumn get FicVerId => _FicVerId ??= _constructFicVerId();
  GeneratedIntColumn _constructFicVerId() {
    return GeneratedIntColumn('fic_ver_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVer(FicVerId)');
  }

  final VerificationMeta _FicVerItemsIdMeta =
      const VerificationMeta('FicVerItemsId');
  GeneratedIntColumn _FicVerItemsId;
  @override
  GeneratedIntColumn get FicVerItemsId =>
      _FicVerItemsId ??= _constructFicVerItemsId();
  GeneratedIntColumn _constructFicVerItemsId() {
    return GeneratedIntColumn('fic_ver_items_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVerItems(FicVerItemsId)');
  }

  final VerificationMeta _PregFrmDinaIdMeta =
      const VerificationMeta('PregFrmDinaId');
  GeneratedIntColumn _PregFrmDinaId;
  @override
  GeneratedIntColumn get PregFrmDinaId =>
      _PregFrmDinaId ??= _constructPregFrmDinaId();
  GeneratedIntColumn _constructPregFrmDinaId() {
    return GeneratedIntColumn('preg_frm_dina_id', $tableName, false,
        $customConstraints: 'REFERENCES PregFrmDina(PregFrmDinaId)');
  }

  final VerificationMeta _FichaVerTabDinIdMeta =
      const VerificationMeta('FichaVerTabDinId');
  GeneratedIntColumn _FichaVerTabDinId;
  @override
  GeneratedIntColumn get FichaVerTabDinId =>
      _FichaVerTabDinId ??= _constructFichaVerTabDinId();
  GeneratedIntColumn _constructFichaVerTabDinId() {
    return GeneratedIntColumn('ficha_ver_tab_din_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _FichaVerTabDinValIdMeta =
      const VerificationMeta('FichaVerTabDinValId');
  GeneratedIntColumn _FichaVerTabDinValId;
  @override
  GeneratedIntColumn get FichaVerTabDinValId =>
      _FichaVerTabDinValId ??= _constructFichaVerTabDinValId();
  GeneratedIntColumn _constructFichaVerTabDinValId() {
    return GeneratedIntColumn(
      'ficha_ver_tab_din_val_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        FicId,
        FicVerId,
        FicVerItemsId,
        PregFrmDinaId,
        FichaVerTabDinId,
        FichaVerTabDinValId,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableFichaVerItemsPregTabDinTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_ficha_ver_items_preg_tab_din';
  @override
  final String actualTableName = 'table_ficha_ver_items_preg_tab_din';
  @override
  VerificationContext validateIntegrity(TableFichaVerItemsPregTabDinCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.FicId.present) {
      context.handle(
          _FicIdMeta, FicId.isAcceptableValue(d.FicId.value, _FicIdMeta));
    } else if (FicId.isRequired && isInserting) {
      context.missing(_FicIdMeta);
    }
    if (d.FicVerId.present) {
      context.handle(_FicVerIdMeta,
          FicVerId.isAcceptableValue(d.FicVerId.value, _FicVerIdMeta));
    } else if (FicVerId.isRequired && isInserting) {
      context.missing(_FicVerIdMeta);
    }
    if (d.FicVerItemsId.present) {
      context.handle(
          _FicVerItemsIdMeta,
          FicVerItemsId.isAcceptableValue(
              d.FicVerItemsId.value, _FicVerItemsIdMeta));
    } else if (FicVerItemsId.isRequired && isInserting) {
      context.missing(_FicVerItemsIdMeta);
    }
    if (d.PregFrmDinaId.present) {
      context.handle(
          _PregFrmDinaIdMeta,
          PregFrmDinaId.isAcceptableValue(
              d.PregFrmDinaId.value, _PregFrmDinaIdMeta));
    } else if (PregFrmDinaId.isRequired && isInserting) {
      context.missing(_PregFrmDinaIdMeta);
    }
    if (d.FichaVerTabDinId.present) {
      context.handle(
          _FichaVerTabDinIdMeta,
          FichaVerTabDinId.isAcceptableValue(
              d.FichaVerTabDinId.value, _FichaVerTabDinIdMeta));
    } else if (FichaVerTabDinId.isRequired && isInserting) {
      context.missing(_FichaVerTabDinIdMeta);
    }
    if (d.FichaVerTabDinValId.present) {
      context.handle(
          _FichaVerTabDinValIdMeta,
          FichaVerTabDinValId.isAcceptableValue(
              d.FichaVerTabDinValId.value, _FichaVerTabDinValIdMeta));
    } else if (FichaVerTabDinValId.isRequired && isInserting) {
      context.missing(_FichaVerTabDinValIdMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {FichaVerTabDinId};
  @override
  FichaVerItemsPregTabDin map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FichaVerItemsPregTabDin.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaVerItemsPregTabDinCompanion d) {
    final map = <String, Variable>{};
    if (d.FicId.present) {
      map['fic_id'] = Variable<int, IntType>(d.FicId.value);
    }
    if (d.FicVerId.present) {
      map['fic_ver_id'] = Variable<int, IntType>(d.FicVerId.value);
    }
    if (d.FicVerItemsId.present) {
      map['fic_ver_items_id'] = Variable<int, IntType>(d.FicVerItemsId.value);
    }
    if (d.PregFrmDinaId.present) {
      map['preg_frm_dina_id'] = Variable<int, IntType>(d.PregFrmDinaId.value);
    }
    if (d.FichaVerTabDinId.present) {
      map['ficha_ver_tab_din_id'] =
          Variable<int, IntType>(d.FichaVerTabDinId.value);
    }
    if (d.FichaVerTabDinValId.present) {
      map['ficha_ver_tab_din_val_id'] =
          Variable<int, IntType>(d.FichaVerTabDinValId.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableFichaVerItemsPregTabDinTable createAlias(String alias) {
    return $TableFichaVerItemsPregTabDinTable(_db, alias);
  }
}

class OpcFich extends DataClass implements Insertable<OpcFich> {
  final String OpcFichCod;
  final String OpcFichDesc;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  OpcFich(
      {@required this.OpcFichCod,
      @required this.OpcFichDesc,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory OpcFich.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return OpcFich(
      OpcFichCod: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}opc_fich_cod']),
      OpcFichDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}opc_fich_desc']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory OpcFich.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return OpcFich(
      OpcFichCod: serializer.fromJson<String>(json['OpcFichCod']),
      OpcFichDesc: serializer.fromJson<String>(json['OpcFichDesc']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'OpcFichCod': serializer.toJson<String>(OpcFichCod),
      'OpcFichDesc': serializer.toJson<String>(OpcFichDesc),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<OpcFich>>(bool nullToAbsent) {
    return TableOpcFichCompanion(
      OpcFichCod: OpcFichCod == null && nullToAbsent
          ? const Value.absent()
          : Value(OpcFichCod),
      OpcFichDesc: OpcFichDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(OpcFichDesc),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  OpcFich copyWith(
          {String OpcFichCod,
          String OpcFichDesc,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      OpcFich(
        OpcFichCod: OpcFichCod ?? this.OpcFichCod,
        OpcFichDesc: OpcFichDesc ?? this.OpcFichDesc,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('OpcFich(')
          ..write('OpcFichCod: $OpcFichCod, ')
          ..write('OpcFichDesc: $OpcFichDesc, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      OpcFichCod.hashCode,
      $mrjc(
          OpcFichDesc.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is OpcFich &&
          other.OpcFichCod == OpcFichCod &&
          other.OpcFichDesc == OpcFichDesc &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableOpcFichCompanion extends UpdateCompanion<OpcFich> {
  final Value<String> OpcFichCod;
  final Value<String> OpcFichDesc;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableOpcFichCompanion({
    this.OpcFichCod = const Value.absent(),
    this.OpcFichDesc = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableOpcFichCompanion copyWith(
      {Value<String> OpcFichCod,
      Value<String> OpcFichDesc,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableOpcFichCompanion(
      OpcFichCod: OpcFichCod ?? this.OpcFichCod,
      OpcFichDesc: OpcFichDesc ?? this.OpcFichDesc,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableOpcFichTable extends TableOpcFich
    with TableInfo<$TableOpcFichTable, OpcFich> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableOpcFichTable(this._db, [this._alias]);
  final VerificationMeta _OpcFichCodMeta = const VerificationMeta('OpcFichCod');
  GeneratedTextColumn _OpcFichCod;
  @override
  GeneratedTextColumn get OpcFichCod => _OpcFichCod ??= _constructOpcFichCod();
  GeneratedTextColumn _constructOpcFichCod() {
    return GeneratedTextColumn(
      'opc_fich_cod',
      $tableName,
      false,
    );
  }

  final VerificationMeta _OpcFichDescMeta =
      const VerificationMeta('OpcFichDesc');
  GeneratedTextColumn _OpcFichDesc;
  @override
  GeneratedTextColumn get OpcFichDesc =>
      _OpcFichDesc ??= _constructOpcFichDesc();
  GeneratedTextColumn _constructOpcFichDesc() {
    return GeneratedTextColumn(
      'opc_fich_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        OpcFichCod,
        OpcFichDesc,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableOpcFichTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_opc_fich';
  @override
  final String actualTableName = 'table_opc_fich';
  @override
  VerificationContext validateIntegrity(TableOpcFichCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.OpcFichCod.present) {
      context.handle(_OpcFichCodMeta,
          OpcFichCod.isAcceptableValue(d.OpcFichCod.value, _OpcFichCodMeta));
    } else if (OpcFichCod.isRequired && isInserting) {
      context.missing(_OpcFichCodMeta);
    }
    if (d.OpcFichDesc.present) {
      context.handle(_OpcFichDescMeta,
          OpcFichDesc.isAcceptableValue(d.OpcFichDesc.value, _OpcFichDescMeta));
    } else if (OpcFichDesc.isRequired && isInserting) {
      context.missing(_OpcFichDescMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {OpcFichCod};
  @override
  OpcFich map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return OpcFich.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableOpcFichCompanion d) {
    final map = <String, Variable>{};
    if (d.OpcFichCod.present) {
      map['opc_fich_cod'] = Variable<String, StringType>(d.OpcFichCod.value);
    }
    if (d.OpcFichDesc.present) {
      map['opc_fich_desc'] = Variable<String, StringType>(d.OpcFichDesc.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableOpcFichTable createAlias(String alias) {
    return $TableOpcFichTable(_db, alias);
  }
}

class FichaOpc extends DataClass implements Insertable<FichaOpc> {
  final int FicId;
  final String OpcFichCod;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaOpc(
      {@required this.FicId,
      @required this.OpcFichCod,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory FichaOpc.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return FichaOpc(
      FicId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      OpcFichCod: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}opc_fich_cod']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory FichaOpc.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return FichaOpc(
      FicId: serializer.fromJson<int>(json['FicId']),
      OpcFichCod: serializer.fromJson<String>(json['OpcFichCod']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'FicId': serializer.toJson<int>(FicId),
      'OpcFichCod': serializer.toJson<String>(OpcFichCod),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaOpc>>(bool nullToAbsent) {
    return TableFichaOpcCompanion(
      FicId:
          FicId == null && nullToAbsent ? const Value.absent() : Value(FicId),
      OpcFichCod: OpcFichCod == null && nullToAbsent
          ? const Value.absent()
          : Value(OpcFichCod),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  FichaOpc copyWith(
          {int FicId,
          String OpcFichCod,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaOpc(
        FicId: FicId ?? this.FicId,
        OpcFichCod: OpcFichCod ?? this.OpcFichCod,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaOpc(')
          ..write('FicId: $FicId, ')
          ..write('OpcFichCod: $OpcFichCod, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      FicId.hashCode,
      $mrjc(
          OpcFichCod.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FichaOpc &&
          other.FicId == FicId &&
          other.OpcFichCod == OpcFichCod &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaOpcCompanion extends UpdateCompanion<FichaOpc> {
  final Value<int> FicId;
  final Value<String> OpcFichCod;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaOpcCompanion({
    this.FicId = const Value.absent(),
    this.OpcFichCod = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaOpcCompanion copyWith(
      {Value<int> FicId,
      Value<String> OpcFichCod,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaOpcCompanion(
      FicId: FicId ?? this.FicId,
      OpcFichCod: OpcFichCod ?? this.OpcFichCod,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableFichaOpcTable extends TableFichaOpc
    with TableInfo<$TableFichaOpcTable, FichaOpc> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableFichaOpcTable(this._db, [this._alias]);
  final VerificationMeta _FicIdMeta = const VerificationMeta('FicId');
  GeneratedIntColumn _FicId;
  @override
  GeneratedIntColumn get FicId => _FicId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _OpcFichCodMeta = const VerificationMeta('OpcFichCod');
  GeneratedTextColumn _OpcFichCod;
  @override
  GeneratedTextColumn get OpcFichCod => _OpcFichCod ??= _constructOpcFichCod();
  GeneratedTextColumn _constructOpcFichCod() {
    return GeneratedTextColumn('opc_fich_cod', $tableName, false,
        $customConstraints: 'REFERENCES OpcFich(OpcFichCod)');
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [FicId, OpcFichCod, StatusId, UsuId, createdAt, updatedAt, deletedAt];
  @override
  $TableFichaOpcTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_ficha_opc';
  @override
  final String actualTableName = 'table_ficha_opc';
  @override
  VerificationContext validateIntegrity(TableFichaOpcCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.FicId.present) {
      context.handle(
          _FicIdMeta, FicId.isAcceptableValue(d.FicId.value, _FicIdMeta));
    } else if (FicId.isRequired && isInserting) {
      context.missing(_FicIdMeta);
    }
    if (d.OpcFichCod.present) {
      context.handle(_OpcFichCodMeta,
          OpcFichCod.isAcceptableValue(d.OpcFichCod.value, _OpcFichCodMeta));
    } else if (OpcFichCod.isRequired && isInserting) {
      context.missing(_OpcFichCodMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  FichaOpc map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FichaOpc.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaOpcCompanion d) {
    final map = <String, Variable>{};
    if (d.FicId.present) {
      map['fic_id'] = Variable<int, IntType>(d.FicId.value);
    }
    if (d.OpcFichCod.present) {
      map['opc_fich_cod'] = Variable<String, StringType>(d.OpcFichCod.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableFichaOpcTable createAlias(String alias) {
    return $TableFichaOpcTable(_db, alias);
  }
}

class NomTabDin extends DataClass implements Insertable<NomTabDin> {
  final int NomTabDinId;
  final String NomTabDinNom;
  final int NomTabDinFlgAct;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  NomTabDin(
      {@required this.NomTabDinId,
      @required this.NomTabDinNom,
      @required this.NomTabDinFlgAct,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory NomTabDin.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return NomTabDin(
      NomTabDinId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}nom_tab_din_id']),
      NomTabDinNom: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nom_tab_din_nom']),
      NomTabDinFlgAct: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}nom_tab_din_flg_act']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory NomTabDin.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return NomTabDin(
      NomTabDinId: serializer.fromJson<int>(json['NomTabDinId']),
      NomTabDinNom: serializer.fromJson<String>(json['NomTabDinNom']),
      NomTabDinFlgAct: serializer.fromJson<int>(json['NomTabDinFlgAct']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'NomTabDinId': serializer.toJson<int>(NomTabDinId),
      'NomTabDinNom': serializer.toJson<String>(NomTabDinNom),
      'NomTabDinFlgAct': serializer.toJson<int>(NomTabDinFlgAct),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<NomTabDin>>(bool nullToAbsent) {
    return TableNomTabDinCompanion(
      NomTabDinId: NomTabDinId == null && nullToAbsent
          ? const Value.absent()
          : Value(NomTabDinId),
      NomTabDinNom: NomTabDinNom == null && nullToAbsent
          ? const Value.absent()
          : Value(NomTabDinNom),
      NomTabDinFlgAct: NomTabDinFlgAct == null && nullToAbsent
          ? const Value.absent()
          : Value(NomTabDinFlgAct),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  NomTabDin copyWith(
          {int NomTabDinId,
          String NomTabDinNom,
          int NomTabDinFlgAct,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      NomTabDin(
        NomTabDinId: NomTabDinId ?? this.NomTabDinId,
        NomTabDinNom: NomTabDinNom ?? this.NomTabDinNom,
        NomTabDinFlgAct: NomTabDinFlgAct ?? this.NomTabDinFlgAct,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('NomTabDin(')
          ..write('NomTabDinId: $NomTabDinId, ')
          ..write('NomTabDinNom: $NomTabDinNom, ')
          ..write('NomTabDinFlgAct: $NomTabDinFlgAct, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      NomTabDinId.hashCode,
      $mrjc(
          NomTabDinNom.hashCode,
          $mrjc(
              NomTabDinFlgAct.hashCode,
              $mrjc(
                  StatusId.hashCode,
                  $mrjc(
                      UsuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is NomTabDin &&
          other.NomTabDinId == NomTabDinId &&
          other.NomTabDinNom == NomTabDinNom &&
          other.NomTabDinFlgAct == NomTabDinFlgAct &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableNomTabDinCompanion extends UpdateCompanion<NomTabDin> {
  final Value<int> NomTabDinId;
  final Value<String> NomTabDinNom;
  final Value<int> NomTabDinFlgAct;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableNomTabDinCompanion({
    this.NomTabDinId = const Value.absent(),
    this.NomTabDinNom = const Value.absent(),
    this.NomTabDinFlgAct = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableNomTabDinCompanion copyWith(
      {Value<int> NomTabDinId,
      Value<String> NomTabDinNom,
      Value<int> NomTabDinFlgAct,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableNomTabDinCompanion(
      NomTabDinId: NomTabDinId ?? this.NomTabDinId,
      NomTabDinNom: NomTabDinNom ?? this.NomTabDinNom,
      NomTabDinFlgAct: NomTabDinFlgAct ?? this.NomTabDinFlgAct,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableNomTabDinTable extends TableNomTabDin
    with TableInfo<$TableNomTabDinTable, NomTabDin> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableNomTabDinTable(this._db, [this._alias]);
  final VerificationMeta _NomTabDinIdMeta =
      const VerificationMeta('NomTabDinId');
  GeneratedIntColumn _NomTabDinId;
  @override
  GeneratedIntColumn get NomTabDinId =>
      _NomTabDinId ??= _constructNomTabDinId();
  GeneratedIntColumn _constructNomTabDinId() {
    return GeneratedIntColumn('nom_tab_din_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _NomTabDinNomMeta =
      const VerificationMeta('NomTabDinNom');
  GeneratedTextColumn _NomTabDinNom;
  @override
  GeneratedTextColumn get NomTabDinNom =>
      _NomTabDinNom ??= _constructNomTabDinNom();
  GeneratedTextColumn _constructNomTabDinNom() {
    return GeneratedTextColumn(
      'nom_tab_din_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _NomTabDinFlgActMeta =
      const VerificationMeta('NomTabDinFlgAct');
  GeneratedIntColumn _NomTabDinFlgAct;
  @override
  GeneratedIntColumn get NomTabDinFlgAct =>
      _NomTabDinFlgAct ??= _constructNomTabDinFlgAct();
  GeneratedIntColumn _constructNomTabDinFlgAct() {
    return GeneratedIntColumn(
      'nom_tab_din_flg_act',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        NomTabDinId,
        NomTabDinNom,
        NomTabDinFlgAct,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableNomTabDinTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_nom_tab_din';
  @override
  final String actualTableName = 'table_nom_tab_din';
  @override
  VerificationContext validateIntegrity(TableNomTabDinCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.NomTabDinId.present) {
      context.handle(_NomTabDinIdMeta,
          NomTabDinId.isAcceptableValue(d.NomTabDinId.value, _NomTabDinIdMeta));
    } else if (NomTabDinId.isRequired && isInserting) {
      context.missing(_NomTabDinIdMeta);
    }
    if (d.NomTabDinNom.present) {
      context.handle(
          _NomTabDinNomMeta,
          NomTabDinNom.isAcceptableValue(
              d.NomTabDinNom.value, _NomTabDinNomMeta));
    } else if (NomTabDinNom.isRequired && isInserting) {
      context.missing(_NomTabDinNomMeta);
    }
    if (d.NomTabDinFlgAct.present) {
      context.handle(
          _NomTabDinFlgActMeta,
          NomTabDinFlgAct.isAcceptableValue(
              d.NomTabDinFlgAct.value, _NomTabDinFlgActMeta));
    } else if (NomTabDinFlgAct.isRequired && isInserting) {
      context.missing(_NomTabDinFlgActMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {NomTabDinId};
  @override
  NomTabDin map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NomTabDin.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableNomTabDinCompanion d) {
    final map = <String, Variable>{};
    if (d.NomTabDinId.present) {
      map['nom_tab_din_id'] = Variable<int, IntType>(d.NomTabDinId.value);
    }
    if (d.NomTabDinNom.present) {
      map['nom_tab_din_nom'] =
          Variable<String, StringType>(d.NomTabDinNom.value);
    }
    if (d.NomTabDinFlgAct.present) {
      map['nom_tab_din_flg_act'] =
          Variable<int, IntType>(d.NomTabDinFlgAct.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableNomTabDinTable createAlias(String alias) {
    return $TableNomTabDinTable(_db, alias);
  }
}

class TabDinVal extends DataClass implements Insertable<TabDinVal> {
  final int NomTabDinId;
  final int TabDinValId;
  final int TabDinValFlgAct;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  TabDinVal(
      {@required this.NomTabDinId,
      @required this.TabDinValId,
      @required this.TabDinValFlgAct,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory TabDinVal.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return TabDinVal(
      NomTabDinId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}nom_tab_din_id']),
      TabDinValId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tab_din_val_id']),
      TabDinValFlgAct: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tab_din_val_flg_act']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory TabDinVal.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return TabDinVal(
      NomTabDinId: serializer.fromJson<int>(json['NomTabDinId']),
      TabDinValId: serializer.fromJson<int>(json['TabDinValId']),
      TabDinValFlgAct: serializer.fromJson<int>(json['TabDinValFlgAct']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'NomTabDinId': serializer.toJson<int>(NomTabDinId),
      'TabDinValId': serializer.toJson<int>(TabDinValId),
      'TabDinValFlgAct': serializer.toJson<int>(TabDinValFlgAct),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<TabDinVal>>(bool nullToAbsent) {
    return TableTabDinValCompanion(
      NomTabDinId: NomTabDinId == null && nullToAbsent
          ? const Value.absent()
          : Value(NomTabDinId),
      TabDinValId: TabDinValId == null && nullToAbsent
          ? const Value.absent()
          : Value(TabDinValId),
      TabDinValFlgAct: TabDinValFlgAct == null && nullToAbsent
          ? const Value.absent()
          : Value(TabDinValFlgAct),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  TabDinVal copyWith(
          {int NomTabDinId,
          int TabDinValId,
          int TabDinValFlgAct,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      TabDinVal(
        NomTabDinId: NomTabDinId ?? this.NomTabDinId,
        TabDinValId: TabDinValId ?? this.TabDinValId,
        TabDinValFlgAct: TabDinValFlgAct ?? this.TabDinValFlgAct,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('TabDinVal(')
          ..write('NomTabDinId: $NomTabDinId, ')
          ..write('TabDinValId: $TabDinValId, ')
          ..write('TabDinValFlgAct: $TabDinValFlgAct, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      NomTabDinId.hashCode,
      $mrjc(
          TabDinValId.hashCode,
          $mrjc(
              TabDinValFlgAct.hashCode,
              $mrjc(
                  StatusId.hashCode,
                  $mrjc(
                      UsuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is TabDinVal &&
          other.NomTabDinId == NomTabDinId &&
          other.TabDinValId == TabDinValId &&
          other.TabDinValFlgAct == TabDinValFlgAct &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableTabDinValCompanion extends UpdateCompanion<TabDinVal> {
  final Value<int> NomTabDinId;
  final Value<int> TabDinValId;
  final Value<int> TabDinValFlgAct;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableTabDinValCompanion({
    this.NomTabDinId = const Value.absent(),
    this.TabDinValId = const Value.absent(),
    this.TabDinValFlgAct = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableTabDinValCompanion copyWith(
      {Value<int> NomTabDinId,
      Value<int> TabDinValId,
      Value<int> TabDinValFlgAct,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableTabDinValCompanion(
      NomTabDinId: NomTabDinId ?? this.NomTabDinId,
      TabDinValId: TabDinValId ?? this.TabDinValId,
      TabDinValFlgAct: TabDinValFlgAct ?? this.TabDinValFlgAct,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableTabDinValTable extends TableTabDinVal
    with TableInfo<$TableTabDinValTable, TabDinVal> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableTabDinValTable(this._db, [this._alias]);
  final VerificationMeta _NomTabDinIdMeta =
      const VerificationMeta('NomTabDinId');
  GeneratedIntColumn _NomTabDinId;
  @override
  GeneratedIntColumn get NomTabDinId =>
      _NomTabDinId ??= _constructNomTabDinId();
  GeneratedIntColumn _constructNomTabDinId() {
    return GeneratedIntColumn('nom_tab_din_id', $tableName, false,
        $customConstraints: 'REFERENCES NomTabDin(NomTabDinId)');
  }

  final VerificationMeta _TabDinValIdMeta =
      const VerificationMeta('TabDinValId');
  GeneratedIntColumn _TabDinValId;
  @override
  GeneratedIntColumn get TabDinValId =>
      _TabDinValId ??= _constructTabDinValId();
  GeneratedIntColumn _constructTabDinValId() {
    return GeneratedIntColumn('tab_din_val_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _TabDinValFlgActMeta =
      const VerificationMeta('TabDinValFlgAct');
  GeneratedIntColumn _TabDinValFlgAct;
  @override
  GeneratedIntColumn get TabDinValFlgAct =>
      _TabDinValFlgAct ??= _constructTabDinValFlgAct();
  GeneratedIntColumn _constructTabDinValFlgAct() {
    return GeneratedIntColumn(
      'tab_din_val_flg_act',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        NomTabDinId,
        TabDinValId,
        TabDinValFlgAct,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableTabDinValTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_tab_din_val';
  @override
  final String actualTableName = 'table_tab_din_val';
  @override
  VerificationContext validateIntegrity(TableTabDinValCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.NomTabDinId.present) {
      context.handle(_NomTabDinIdMeta,
          NomTabDinId.isAcceptableValue(d.NomTabDinId.value, _NomTabDinIdMeta));
    } else if (NomTabDinId.isRequired && isInserting) {
      context.missing(_NomTabDinIdMeta);
    }
    if (d.TabDinValId.present) {
      context.handle(_TabDinValIdMeta,
          TabDinValId.isAcceptableValue(d.TabDinValId.value, _TabDinValIdMeta));
    } else if (TabDinValId.isRequired && isInserting) {
      context.missing(_TabDinValIdMeta);
    }
    if (d.TabDinValFlgAct.present) {
      context.handle(
          _TabDinValFlgActMeta,
          TabDinValFlgAct.isAcceptableValue(
              d.TabDinValFlgAct.value, _TabDinValFlgActMeta));
    } else if (TabDinValFlgAct.isRequired && isInserting) {
      context.missing(_TabDinValFlgActMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {TabDinValId};
  @override
  TabDinVal map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TabDinVal.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableTabDinValCompanion d) {
    final map = <String, Variable>{};
    if (d.NomTabDinId.present) {
      map['nom_tab_din_id'] = Variable<int, IntType>(d.NomTabDinId.value);
    }
    if (d.TabDinValId.present) {
      map['tab_din_val_id'] = Variable<int, IntType>(d.TabDinValId.value);
    }
    if (d.TabDinValFlgAct.present) {
      map['tab_din_val_flg_act'] =
          Variable<int, IntType>(d.TabDinValFlgAct.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableTabDinValTable createAlias(String alias) {
    return $TableTabDinValTable(_db, alias);
  }
}

class TabDinValCond extends DataClass implements Insertable<TabDinValCond> {
  final int TabDinValCondTDId;
  final int TabDinValCondTDValId;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  TabDinValCond(
      {@required this.TabDinValCondTDId,
      @required this.TabDinValCondTDValId,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory TabDinValCond.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return TabDinValCond(
      TabDinValCondTDId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tab_din_val_cond_t_d_id']),
      TabDinValCondTDValId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tab_din_val_cond_t_d_val_id']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory TabDinValCond.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return TabDinValCond(
      TabDinValCondTDId: serializer.fromJson<int>(json['TabDinValCondTDId']),
      TabDinValCondTDValId:
          serializer.fromJson<int>(json['TabDinValCondTDValId']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'TabDinValCondTDId': serializer.toJson<int>(TabDinValCondTDId),
      'TabDinValCondTDValId': serializer.toJson<int>(TabDinValCondTDValId),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<TabDinValCond>>(
      bool nullToAbsent) {
    return TableTabDinValCondCompanion(
      TabDinValCondTDId: TabDinValCondTDId == null && nullToAbsent
          ? const Value.absent()
          : Value(TabDinValCondTDId),
      TabDinValCondTDValId: TabDinValCondTDValId == null && nullToAbsent
          ? const Value.absent()
          : Value(TabDinValCondTDValId),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  TabDinValCond copyWith(
          {int TabDinValCondTDId,
          int TabDinValCondTDValId,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      TabDinValCond(
        TabDinValCondTDId: TabDinValCondTDId ?? this.TabDinValCondTDId,
        TabDinValCondTDValId: TabDinValCondTDValId ?? this.TabDinValCondTDValId,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('TabDinValCond(')
          ..write('TabDinValCondTDId: $TabDinValCondTDId, ')
          ..write('TabDinValCondTDValId: $TabDinValCondTDValId, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      TabDinValCondTDId.hashCode,
      $mrjc(
          TabDinValCondTDValId.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is TabDinValCond &&
          other.TabDinValCondTDId == TabDinValCondTDId &&
          other.TabDinValCondTDValId == TabDinValCondTDValId &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableTabDinValCondCompanion extends UpdateCompanion<TabDinValCond> {
  final Value<int> TabDinValCondTDId;
  final Value<int> TabDinValCondTDValId;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableTabDinValCondCompanion({
    this.TabDinValCondTDId = const Value.absent(),
    this.TabDinValCondTDValId = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableTabDinValCondCompanion copyWith(
      {Value<int> TabDinValCondTDId,
      Value<int> TabDinValCondTDValId,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableTabDinValCondCompanion(
      TabDinValCondTDId: TabDinValCondTDId ?? this.TabDinValCondTDId,
      TabDinValCondTDValId: TabDinValCondTDValId ?? this.TabDinValCondTDValId,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableTabDinValCondTable extends TableTabDinValCond
    with TableInfo<$TableTabDinValCondTable, TabDinValCond> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableTabDinValCondTable(this._db, [this._alias]);
  final VerificationMeta _TabDinValCondTDIdMeta =
      const VerificationMeta('TabDinValCondTDId');
  GeneratedIntColumn _TabDinValCondTDId;
  @override
  GeneratedIntColumn get TabDinValCondTDId =>
      _TabDinValCondTDId ??= _constructTabDinValCondTDId();
  GeneratedIntColumn _constructTabDinValCondTDId() {
    return GeneratedIntColumn('tab_din_val_cond_t_d_id', $tableName, false,
        $customConstraints: 'REFERENCES NomTabDin(NomTabDinId)');
  }

  final VerificationMeta _TabDinValCondTDValIdMeta =
      const VerificationMeta('TabDinValCondTDValId');
  GeneratedIntColumn _TabDinValCondTDValId;
  @override
  GeneratedIntColumn get TabDinValCondTDValId =>
      _TabDinValCondTDValId ??= _constructTabDinValCondTDValId();
  GeneratedIntColumn _constructTabDinValCondTDValId() {
    return GeneratedIntColumn('tab_din_val_cond_t_d_val_id', $tableName, false,
        $customConstraints: 'REFERENCES TabDinVal(TabDinValId)');
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        TabDinValCondTDId,
        TabDinValCondTDValId,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableTabDinValCondTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_tab_din_val_cond';
  @override
  final String actualTableName = 'table_tab_din_val_cond';
  @override
  VerificationContext validateIntegrity(TableTabDinValCondCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.TabDinValCondTDId.present) {
      context.handle(
          _TabDinValCondTDIdMeta,
          TabDinValCondTDId.isAcceptableValue(
              d.TabDinValCondTDId.value, _TabDinValCondTDIdMeta));
    } else if (TabDinValCondTDId.isRequired && isInserting) {
      context.missing(_TabDinValCondTDIdMeta);
    }
    if (d.TabDinValCondTDValId.present) {
      context.handle(
          _TabDinValCondTDValIdMeta,
          TabDinValCondTDValId.isAcceptableValue(
              d.TabDinValCondTDValId.value, _TabDinValCondTDValIdMeta));
    } else if (TabDinValCondTDValId.isRequired && isInserting) {
      context.missing(_TabDinValCondTDValIdMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  TabDinValCond map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TabDinValCond.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableTabDinValCondCompanion d) {
    final map = <String, Variable>{};
    if (d.TabDinValCondTDId.present) {
      map['tab_din_val_cond_t_d_id'] =
          Variable<int, IntType>(d.TabDinValCondTDId.value);
    }
    if (d.TabDinValCondTDValId.present) {
      map['tab_din_val_cond_t_d_val_id'] =
          Variable<int, IntType>(d.TabDinValCondTDValId.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableTabDinValCondTable createAlias(String alias) {
    return $TableTabDinValCondTable(_db, alias);
  }
}

class Usuarios extends DataClass implements Insertable<Usuarios> {
  final int UsuId;
  final String UsuNom;
  final String UsuNom2;
  final String UsuApe;
  final String UsuApe2;
  final String UsuNick;
  final String UsuKeyPass;
  final String UsuHashPass;
  final String UsuPassAlgoritmo;
  final int UsuFlgAct;
  final int UsuFlgGenerico;
  final int StatusId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Usuarios(
      {@required this.UsuId,
      @required this.UsuNom,
      @required this.UsuNom2,
      @required this.UsuApe,
      @required this.UsuApe2,
      @required this.UsuNick,
      @required this.UsuKeyPass,
      @required this.UsuHashPass,
      @required this.UsuPassAlgoritmo,
      @required this.UsuFlgAct,
      @required this.UsuFlgGenerico,
      @required this.StatusId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory Usuarios.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Usuarios(
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      UsuNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}usu_nom']),
      UsuNom2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_nom2']),
      UsuApe:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}usu_ape']),
      UsuApe2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_ape2']),
      UsuNick: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_nick']),
      UsuKeyPass: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_key_pass']),
      UsuHashPass: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_hash_pass']),
      UsuPassAlgoritmo: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}usu_pass_algoritmo']),
      UsuFlgAct: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_flg_act']),
      UsuFlgGenerico: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_flg_generico']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory Usuarios.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Usuarios(
      UsuId: serializer.fromJson<int>(json['UsuId']),
      UsuNom: serializer.fromJson<String>(json['UsuNom']),
      UsuNom2: serializer.fromJson<String>(json['UsuNom2']),
      UsuApe: serializer.fromJson<String>(json['UsuApe']),
      UsuApe2: serializer.fromJson<String>(json['UsuApe2']),
      UsuNick: serializer.fromJson<String>(json['UsuNick']),
      UsuKeyPass: serializer.fromJson<String>(json['UsuKeyPass']),
      UsuHashPass: serializer.fromJson<String>(json['UsuHashPass']),
      UsuPassAlgoritmo: serializer.fromJson<String>(json['UsuPassAlgoritmo']),
      UsuFlgAct: serializer.fromJson<int>(json['UsuFlgAct']),
      UsuFlgGenerico: serializer.fromJson<int>(json['UsuFlgGenerico']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'UsuId': serializer.toJson<int>(UsuId),
      'UsuNom': serializer.toJson<String>(UsuNom),
      'UsuNom2': serializer.toJson<String>(UsuNom2),
      'UsuApe': serializer.toJson<String>(UsuApe),
      'UsuApe2': serializer.toJson<String>(UsuApe2),
      'UsuNick': serializer.toJson<String>(UsuNick),
      'UsuKeyPass': serializer.toJson<String>(UsuKeyPass),
      'UsuHashPass': serializer.toJson<String>(UsuHashPass),
      'UsuPassAlgoritmo': serializer.toJson<String>(UsuPassAlgoritmo),
      'UsuFlgAct': serializer.toJson<int>(UsuFlgAct),
      'UsuFlgGenerico': serializer.toJson<int>(UsuFlgGenerico),
      'StatusId': serializer.toJson<int>(StatusId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Usuarios>>(bool nullToAbsent) {
    return TableUsuariosCompanion(
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      UsuNom:
          UsuNom == null && nullToAbsent ? const Value.absent() : Value(UsuNom),
      UsuNom2: UsuNom2 == null && nullToAbsent
          ? const Value.absent()
          : Value(UsuNom2),
      UsuApe:
          UsuApe == null && nullToAbsent ? const Value.absent() : Value(UsuApe),
      UsuApe2: UsuApe2 == null && nullToAbsent
          ? const Value.absent()
          : Value(UsuApe2),
      UsuNick: UsuNick == null && nullToAbsent
          ? const Value.absent()
          : Value(UsuNick),
      UsuKeyPass: UsuKeyPass == null && nullToAbsent
          ? const Value.absent()
          : Value(UsuKeyPass),
      UsuHashPass: UsuHashPass == null && nullToAbsent
          ? const Value.absent()
          : Value(UsuHashPass),
      UsuPassAlgoritmo: UsuPassAlgoritmo == null && nullToAbsent
          ? const Value.absent()
          : Value(UsuPassAlgoritmo),
      UsuFlgAct: UsuFlgAct == null && nullToAbsent
          ? const Value.absent()
          : Value(UsuFlgAct),
      UsuFlgGenerico: UsuFlgGenerico == null && nullToAbsent
          ? const Value.absent()
          : Value(UsuFlgGenerico),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  Usuarios copyWith(
          {int UsuId,
          String UsuNom,
          String UsuNom2,
          String UsuApe,
          String UsuApe2,
          String UsuNick,
          String UsuKeyPass,
          String UsuHashPass,
          String UsuPassAlgoritmo,
          int UsuFlgAct,
          int UsuFlgGenerico,
          int StatusId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Usuarios(
        UsuId: UsuId ?? this.UsuId,
        UsuNom: UsuNom ?? this.UsuNom,
        UsuNom2: UsuNom2 ?? this.UsuNom2,
        UsuApe: UsuApe ?? this.UsuApe,
        UsuApe2: UsuApe2 ?? this.UsuApe2,
        UsuNick: UsuNick ?? this.UsuNick,
        UsuKeyPass: UsuKeyPass ?? this.UsuKeyPass,
        UsuHashPass: UsuHashPass ?? this.UsuHashPass,
        UsuPassAlgoritmo: UsuPassAlgoritmo ?? this.UsuPassAlgoritmo,
        UsuFlgAct: UsuFlgAct ?? this.UsuFlgAct,
        UsuFlgGenerico: UsuFlgGenerico ?? this.UsuFlgGenerico,
        StatusId: StatusId ?? this.StatusId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Usuarios(')
          ..write('UsuId: $UsuId, ')
          ..write('UsuNom: $UsuNom, ')
          ..write('UsuNom2: $UsuNom2, ')
          ..write('UsuApe: $UsuApe, ')
          ..write('UsuApe2: $UsuApe2, ')
          ..write('UsuNick: $UsuNick, ')
          ..write('UsuKeyPass: $UsuKeyPass, ')
          ..write('UsuHashPass: $UsuHashPass, ')
          ..write('UsuPassAlgoritmo: $UsuPassAlgoritmo, ')
          ..write('UsuFlgAct: $UsuFlgAct, ')
          ..write('UsuFlgGenerico: $UsuFlgGenerico, ')
          ..write('StatusId: $StatusId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      UsuId.hashCode,
      $mrjc(
          UsuNom.hashCode,
          $mrjc(
              UsuNom2.hashCode,
              $mrjc(
                  UsuApe.hashCode,
                  $mrjc(
                      UsuApe2.hashCode,
                      $mrjc(
                          UsuNick.hashCode,
                          $mrjc(
                              UsuKeyPass.hashCode,
                              $mrjc(
                                  UsuHashPass.hashCode,
                                  $mrjc(
                                      UsuPassAlgoritmo.hashCode,
                                      $mrjc(
                                          UsuFlgAct.hashCode,
                                          $mrjc(
                                              UsuFlgGenerico.hashCode,
                                              $mrjc(
                                                  StatusId.hashCode,
                                                  $mrjc(
                                                      createdAt.hashCode,
                                                      $mrjc(
                                                          updatedAt.hashCode,
                                                          deletedAt
                                                              .hashCode)))))))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Usuarios &&
          other.UsuId == UsuId &&
          other.UsuNom == UsuNom &&
          other.UsuNom2 == UsuNom2 &&
          other.UsuApe == UsuApe &&
          other.UsuApe2 == UsuApe2 &&
          other.UsuNick == UsuNick &&
          other.UsuKeyPass == UsuKeyPass &&
          other.UsuHashPass == UsuHashPass &&
          other.UsuPassAlgoritmo == UsuPassAlgoritmo &&
          other.UsuFlgAct == UsuFlgAct &&
          other.UsuFlgGenerico == UsuFlgGenerico &&
          other.StatusId == StatusId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableUsuariosCompanion extends UpdateCompanion<Usuarios> {
  final Value<int> UsuId;
  final Value<String> UsuNom;
  final Value<String> UsuNom2;
  final Value<String> UsuApe;
  final Value<String> UsuApe2;
  final Value<String> UsuNick;
  final Value<String> UsuKeyPass;
  final Value<String> UsuHashPass;
  final Value<String> UsuPassAlgoritmo;
  final Value<int> UsuFlgAct;
  final Value<int> UsuFlgGenerico;
  final Value<int> StatusId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableUsuariosCompanion({
    this.UsuId = const Value.absent(),
    this.UsuNom = const Value.absent(),
    this.UsuNom2 = const Value.absent(),
    this.UsuApe = const Value.absent(),
    this.UsuApe2 = const Value.absent(),
    this.UsuNick = const Value.absent(),
    this.UsuKeyPass = const Value.absent(),
    this.UsuHashPass = const Value.absent(),
    this.UsuPassAlgoritmo = const Value.absent(),
    this.UsuFlgAct = const Value.absent(),
    this.UsuFlgGenerico = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableUsuariosCompanion copyWith(
      {Value<int> UsuId,
      Value<String> UsuNom,
      Value<String> UsuNom2,
      Value<String> UsuApe,
      Value<String> UsuApe2,
      Value<String> UsuNick,
      Value<String> UsuKeyPass,
      Value<String> UsuHashPass,
      Value<String> UsuPassAlgoritmo,
      Value<int> UsuFlgAct,
      Value<int> UsuFlgGenerico,
      Value<int> StatusId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableUsuariosCompanion(
      UsuId: UsuId ?? this.UsuId,
      UsuNom: UsuNom ?? this.UsuNom,
      UsuNom2: UsuNom2 ?? this.UsuNom2,
      UsuApe: UsuApe ?? this.UsuApe,
      UsuApe2: UsuApe2 ?? this.UsuApe2,
      UsuNick: UsuNick ?? this.UsuNick,
      UsuKeyPass: UsuKeyPass ?? this.UsuKeyPass,
      UsuHashPass: UsuHashPass ?? this.UsuHashPass,
      UsuPassAlgoritmo: UsuPassAlgoritmo ?? this.UsuPassAlgoritmo,
      UsuFlgAct: UsuFlgAct ?? this.UsuFlgAct,
      UsuFlgGenerico: UsuFlgGenerico ?? this.UsuFlgGenerico,
      StatusId: StatusId ?? this.StatusId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableUsuariosTable extends TableUsuarios
    with TableInfo<$TableUsuariosTable, Usuarios> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableUsuariosTable(this._db, [this._alias]);
  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _UsuNomMeta = const VerificationMeta('UsuNom');
  GeneratedTextColumn _UsuNom;
  @override
  GeneratedTextColumn get UsuNom => _UsuNom ??= _constructUsuNom();
  GeneratedTextColumn _constructUsuNom() {
    return GeneratedTextColumn(
      'usu_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuNom2Meta = const VerificationMeta('UsuNom2');
  GeneratedTextColumn _UsuNom2;
  @override
  GeneratedTextColumn get UsuNom2 => _UsuNom2 ??= _constructUsuNom2();
  GeneratedTextColumn _constructUsuNom2() {
    return GeneratedTextColumn(
      'usu_nom2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuApeMeta = const VerificationMeta('UsuApe');
  GeneratedTextColumn _UsuApe;
  @override
  GeneratedTextColumn get UsuApe => _UsuApe ??= _constructUsuApe();
  GeneratedTextColumn _constructUsuApe() {
    return GeneratedTextColumn(
      'usu_ape',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuApe2Meta = const VerificationMeta('UsuApe2');
  GeneratedTextColumn _UsuApe2;
  @override
  GeneratedTextColumn get UsuApe2 => _UsuApe2 ??= _constructUsuApe2();
  GeneratedTextColumn _constructUsuApe2() {
    return GeneratedTextColumn(
      'usu_ape2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuNickMeta = const VerificationMeta('UsuNick');
  GeneratedTextColumn _UsuNick;
  @override
  GeneratedTextColumn get UsuNick => _UsuNick ??= _constructUsuNick();
  GeneratedTextColumn _constructUsuNick() {
    return GeneratedTextColumn(
      'usu_nick',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuKeyPassMeta = const VerificationMeta('UsuKeyPass');
  GeneratedTextColumn _UsuKeyPass;
  @override
  GeneratedTextColumn get UsuKeyPass => _UsuKeyPass ??= _constructUsuKeyPass();
  GeneratedTextColumn _constructUsuKeyPass() {
    return GeneratedTextColumn(
      'usu_key_pass',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuHashPassMeta =
      const VerificationMeta('UsuHashPass');
  GeneratedTextColumn _UsuHashPass;
  @override
  GeneratedTextColumn get UsuHashPass =>
      _UsuHashPass ??= _constructUsuHashPass();
  GeneratedTextColumn _constructUsuHashPass() {
    return GeneratedTextColumn(
      'usu_hash_pass',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuPassAlgoritmoMeta =
      const VerificationMeta('UsuPassAlgoritmo');
  GeneratedTextColumn _UsuPassAlgoritmo;
  @override
  GeneratedTextColumn get UsuPassAlgoritmo =>
      _UsuPassAlgoritmo ??= _constructUsuPassAlgoritmo();
  GeneratedTextColumn _constructUsuPassAlgoritmo() {
    return GeneratedTextColumn(
      'usu_pass_algoritmo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuFlgActMeta = const VerificationMeta('UsuFlgAct');
  GeneratedIntColumn _UsuFlgAct;
  @override
  GeneratedIntColumn get UsuFlgAct => _UsuFlgAct ??= _constructUsuFlgAct();
  GeneratedIntColumn _constructUsuFlgAct() {
    return GeneratedIntColumn(
      'usu_flg_act',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuFlgGenericoMeta =
      const VerificationMeta('UsuFlgGenerico');
  GeneratedIntColumn _UsuFlgGenerico;
  @override
  GeneratedIntColumn get UsuFlgGenerico =>
      _UsuFlgGenerico ??= _constructUsuFlgGenerico();
  GeneratedIntColumn _constructUsuFlgGenerico() {
    return GeneratedIntColumn(
      'usu_flg_generico',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        UsuId,
        UsuNom,
        UsuNom2,
        UsuApe,
        UsuApe2,
        UsuNick,
        UsuKeyPass,
        UsuHashPass,
        UsuPassAlgoritmo,
        UsuFlgAct,
        UsuFlgGenerico,
        StatusId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableUsuariosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_usuarios';
  @override
  final String actualTableName = 'table_usuarios';
  @override
  VerificationContext validateIntegrity(TableUsuariosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.UsuNom.present) {
      context.handle(
          _UsuNomMeta, UsuNom.isAcceptableValue(d.UsuNom.value, _UsuNomMeta));
    } else if (UsuNom.isRequired && isInserting) {
      context.missing(_UsuNomMeta);
    }
    if (d.UsuNom2.present) {
      context.handle(_UsuNom2Meta,
          UsuNom2.isAcceptableValue(d.UsuNom2.value, _UsuNom2Meta));
    } else if (UsuNom2.isRequired && isInserting) {
      context.missing(_UsuNom2Meta);
    }
    if (d.UsuApe.present) {
      context.handle(
          _UsuApeMeta, UsuApe.isAcceptableValue(d.UsuApe.value, _UsuApeMeta));
    } else if (UsuApe.isRequired && isInserting) {
      context.missing(_UsuApeMeta);
    }
    if (d.UsuApe2.present) {
      context.handle(_UsuApe2Meta,
          UsuApe2.isAcceptableValue(d.UsuApe2.value, _UsuApe2Meta));
    } else if (UsuApe2.isRequired && isInserting) {
      context.missing(_UsuApe2Meta);
    }
    if (d.UsuNick.present) {
      context.handle(_UsuNickMeta,
          UsuNick.isAcceptableValue(d.UsuNick.value, _UsuNickMeta));
    } else if (UsuNick.isRequired && isInserting) {
      context.missing(_UsuNickMeta);
    }
    if (d.UsuKeyPass.present) {
      context.handle(_UsuKeyPassMeta,
          UsuKeyPass.isAcceptableValue(d.UsuKeyPass.value, _UsuKeyPassMeta));
    } else if (UsuKeyPass.isRequired && isInserting) {
      context.missing(_UsuKeyPassMeta);
    }
    if (d.UsuHashPass.present) {
      context.handle(_UsuHashPassMeta,
          UsuHashPass.isAcceptableValue(d.UsuHashPass.value, _UsuHashPassMeta));
    } else if (UsuHashPass.isRequired && isInserting) {
      context.missing(_UsuHashPassMeta);
    }
    if (d.UsuPassAlgoritmo.present) {
      context.handle(
          _UsuPassAlgoritmoMeta,
          UsuPassAlgoritmo.isAcceptableValue(
              d.UsuPassAlgoritmo.value, _UsuPassAlgoritmoMeta));
    } else if (UsuPassAlgoritmo.isRequired && isInserting) {
      context.missing(_UsuPassAlgoritmoMeta);
    }
    if (d.UsuFlgAct.present) {
      context.handle(_UsuFlgActMeta,
          UsuFlgAct.isAcceptableValue(d.UsuFlgAct.value, _UsuFlgActMeta));
    } else if (UsuFlgAct.isRequired && isInserting) {
      context.missing(_UsuFlgActMeta);
    }
    if (d.UsuFlgGenerico.present) {
      context.handle(
          _UsuFlgGenericoMeta,
          UsuFlgGenerico.isAcceptableValue(
              d.UsuFlgGenerico.value, _UsuFlgGenericoMeta));
    } else if (UsuFlgGenerico.isRequired && isInserting) {
      context.missing(_UsuFlgGenericoMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {UsuId};
  @override
  Usuarios map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Usuarios.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableUsuariosCompanion d) {
    final map = <String, Variable>{};
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.UsuNom.present) {
      map['usu_nom'] = Variable<String, StringType>(d.UsuNom.value);
    }
    if (d.UsuNom2.present) {
      map['usu_nom2'] = Variable<String, StringType>(d.UsuNom2.value);
    }
    if (d.UsuApe.present) {
      map['usu_ape'] = Variable<String, StringType>(d.UsuApe.value);
    }
    if (d.UsuApe2.present) {
      map['usu_ape2'] = Variable<String, StringType>(d.UsuApe2.value);
    }
    if (d.UsuNick.present) {
      map['usu_nick'] = Variable<String, StringType>(d.UsuNick.value);
    }
    if (d.UsuKeyPass.present) {
      map['usu_key_pass'] = Variable<String, StringType>(d.UsuKeyPass.value);
    }
    if (d.UsuHashPass.present) {
      map['usu_hash_pass'] = Variable<String, StringType>(d.UsuHashPass.value);
    }
    if (d.UsuPassAlgoritmo.present) {
      map['usu_pass_algoritmo'] =
          Variable<String, StringType>(d.UsuPassAlgoritmo.value);
    }
    if (d.UsuFlgAct.present) {
      map['usu_flg_act'] = Variable<int, IntType>(d.UsuFlgAct.value);
    }
    if (d.UsuFlgGenerico.present) {
      map['usu_flg_generico'] = Variable<int, IntType>(d.UsuFlgGenerico.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableUsuariosTable createAlias(String alias) {
    return $TableUsuariosTable(_db, alias);
  }
}

class PerfSis extends DataClass implements Insertable<PerfSis> {
  final int PerfSisId;
  final String PerfSisDesc;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  PerfSis(
      {@required this.PerfSisId,
      @required this.PerfSisDesc,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory PerfSis.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PerfSis(
      PerfSisId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}perf_sis_id']),
      PerfSisDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}perf_sis_desc']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory PerfSis.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return PerfSis(
      PerfSisId: serializer.fromJson<int>(json['PerfSisId']),
      PerfSisDesc: serializer.fromJson<String>(json['PerfSisDesc']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'PerfSisId': serializer.toJson<int>(PerfSisId),
      'PerfSisDesc': serializer.toJson<String>(PerfSisDesc),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<PerfSis>>(bool nullToAbsent) {
    return TablePerfSisCompanion(
      PerfSisId: PerfSisId == null && nullToAbsent
          ? const Value.absent()
          : Value(PerfSisId),
      PerfSisDesc: PerfSisDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(PerfSisDesc),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  PerfSis copyWith(
          {int PerfSisId,
          String PerfSisDesc,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      PerfSis(
        PerfSisId: PerfSisId ?? this.PerfSisId,
        PerfSisDesc: PerfSisDesc ?? this.PerfSisDesc,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PerfSis(')
          ..write('PerfSisId: $PerfSisId, ')
          ..write('PerfSisDesc: $PerfSisDesc, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      PerfSisId.hashCode,
      $mrjc(
          PerfSisDesc.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is PerfSis &&
          other.PerfSisId == PerfSisId &&
          other.PerfSisDesc == PerfSisDesc &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePerfSisCompanion extends UpdateCompanion<PerfSis> {
  final Value<int> PerfSisId;
  final Value<String> PerfSisDesc;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePerfSisCompanion({
    this.PerfSisId = const Value.absent(),
    this.PerfSisDesc = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePerfSisCompanion copyWith(
      {Value<int> PerfSisId,
      Value<String> PerfSisDesc,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePerfSisCompanion(
      PerfSisId: PerfSisId ?? this.PerfSisId,
      PerfSisDesc: PerfSisDesc ?? this.PerfSisDesc,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TablePerfSisTable extends TablePerfSis
    with TableInfo<$TablePerfSisTable, PerfSis> {
  final GeneratedDatabase _db;
  final String _alias;
  $TablePerfSisTable(this._db, [this._alias]);
  final VerificationMeta _PerfSisIdMeta = const VerificationMeta('PerfSisId');
  GeneratedIntColumn _PerfSisId;
  @override
  GeneratedIntColumn get PerfSisId => _PerfSisId ??= _constructPerfSisId();
  GeneratedIntColumn _constructPerfSisId() {
    return GeneratedIntColumn('perf_sis_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _PerfSisDescMeta =
      const VerificationMeta('PerfSisDesc');
  GeneratedTextColumn _PerfSisDesc;
  @override
  GeneratedTextColumn get PerfSisDesc =>
      _PerfSisDesc ??= _constructPerfSisDesc();
  GeneratedTextColumn _constructPerfSisDesc() {
    return GeneratedTextColumn(
      'perf_sis_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        PerfSisId,
        PerfSisDesc,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TablePerfSisTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_perf_sis';
  @override
  final String actualTableName = 'table_perf_sis';
  @override
  VerificationContext validateIntegrity(TablePerfSisCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.PerfSisId.present) {
      context.handle(_PerfSisIdMeta,
          PerfSisId.isAcceptableValue(d.PerfSisId.value, _PerfSisIdMeta));
    } else if (PerfSisId.isRequired && isInserting) {
      context.missing(_PerfSisIdMeta);
    }
    if (d.PerfSisDesc.present) {
      context.handle(_PerfSisDescMeta,
          PerfSisDesc.isAcceptableValue(d.PerfSisDesc.value, _PerfSisDescMeta));
    } else if (PerfSisDesc.isRequired && isInserting) {
      context.missing(_PerfSisDescMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {PerfSisId};
  @override
  PerfSis map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PerfSis.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TablePerfSisCompanion d) {
    final map = <String, Variable>{};
    if (d.PerfSisId.present) {
      map['perf_sis_id'] = Variable<int, IntType>(d.PerfSisId.value);
    }
    if (d.PerfSisDesc.present) {
      map['perf_sis_desc'] = Variable<String, StringType>(d.PerfSisDesc.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TablePerfSisTable createAlias(String alias) {
    return $TablePerfSisTable(_db, alias);
  }
}

class SisUsuPerf extends DataClass implements Insertable<SisUsuPerf> {
  final int SisId;
  final int PerfSisId;
  final int UsuId;
  final int SisUsuPerfHab;
  final int StatusId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  SisUsuPerf(
      {@required this.SisId,
      @required this.PerfSisId,
      @required this.UsuId,
      @required this.SisUsuPerfHab,
      @required this.StatusId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory SisUsuPerf.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return SisUsuPerf(
      SisId: intType.mapFromDatabaseResponse(data['${effectivePrefix}sis_id']),
      PerfSisId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}perf_sis_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      SisUsuPerfHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}sis_usu_perf_hab']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory SisUsuPerf.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return SisUsuPerf(
      SisId: serializer.fromJson<int>(json['SisId']),
      PerfSisId: serializer.fromJson<int>(json['PerfSisId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      SisUsuPerfHab: serializer.fromJson<int>(json['SisUsuPerfHab']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'SisId': serializer.toJson<int>(SisId),
      'PerfSisId': serializer.toJson<int>(PerfSisId),
      'UsuId': serializer.toJson<int>(UsuId),
      'SisUsuPerfHab': serializer.toJson<int>(SisUsuPerfHab),
      'StatusId': serializer.toJson<int>(StatusId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<SisUsuPerf>>(bool nullToAbsent) {
    return TableSisUsuPerfCompanion(
      SisId:
          SisId == null && nullToAbsent ? const Value.absent() : Value(SisId),
      PerfSisId: PerfSisId == null && nullToAbsent
          ? const Value.absent()
          : Value(PerfSisId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      SisUsuPerfHab: SisUsuPerfHab == null && nullToAbsent
          ? const Value.absent()
          : Value(SisUsuPerfHab),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  SisUsuPerf copyWith(
          {int SisId,
          int PerfSisId,
          int UsuId,
          int SisUsuPerfHab,
          int StatusId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      SisUsuPerf(
        SisId: SisId ?? this.SisId,
        PerfSisId: PerfSisId ?? this.PerfSisId,
        UsuId: UsuId ?? this.UsuId,
        SisUsuPerfHab: SisUsuPerfHab ?? this.SisUsuPerfHab,
        StatusId: StatusId ?? this.StatusId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('SisUsuPerf(')
          ..write('SisId: $SisId, ')
          ..write('PerfSisId: $PerfSisId, ')
          ..write('UsuId: $UsuId, ')
          ..write('SisUsuPerfHab: $SisUsuPerfHab, ')
          ..write('StatusId: $StatusId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      SisId.hashCode,
      $mrjc(
          PerfSisId.hashCode,
          $mrjc(
              UsuId.hashCode,
              $mrjc(
                  SisUsuPerfHab.hashCode,
                  $mrjc(
                      StatusId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is SisUsuPerf &&
          other.SisId == SisId &&
          other.PerfSisId == PerfSisId &&
          other.UsuId == UsuId &&
          other.SisUsuPerfHab == SisUsuPerfHab &&
          other.StatusId == StatusId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableSisUsuPerfCompanion extends UpdateCompanion<SisUsuPerf> {
  final Value<int> SisId;
  final Value<int> PerfSisId;
  final Value<int> UsuId;
  final Value<int> SisUsuPerfHab;
  final Value<int> StatusId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableSisUsuPerfCompanion({
    this.SisId = const Value.absent(),
    this.PerfSisId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.SisUsuPerfHab = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableSisUsuPerfCompanion copyWith(
      {Value<int> SisId,
      Value<int> PerfSisId,
      Value<int> UsuId,
      Value<int> SisUsuPerfHab,
      Value<int> StatusId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableSisUsuPerfCompanion(
      SisId: SisId ?? this.SisId,
      PerfSisId: PerfSisId ?? this.PerfSisId,
      UsuId: UsuId ?? this.UsuId,
      SisUsuPerfHab: SisUsuPerfHab ?? this.SisUsuPerfHab,
      StatusId: StatusId ?? this.StatusId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableSisUsuPerfTable extends TableSisUsuPerf
    with TableInfo<$TableSisUsuPerfTable, SisUsuPerf> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableSisUsuPerfTable(this._db, [this._alias]);
  final VerificationMeta _SisIdMeta = const VerificationMeta('SisId');
  GeneratedIntColumn _SisId;
  @override
  GeneratedIntColumn get SisId => _SisId ??= _constructSisId();
  GeneratedIntColumn _constructSisId() {
    return GeneratedIntColumn(
      'sis_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _PerfSisIdMeta = const VerificationMeta('PerfSisId');
  GeneratedIntColumn _PerfSisId;
  @override
  GeneratedIntColumn get PerfSisId => _PerfSisId ??= _constructPerfSisId();
  GeneratedIntColumn _constructPerfSisId() {
    return GeneratedIntColumn('perf_sis_id', $tableName, false,
        $customConstraints: 'REFERENCES PerfSis(PerfSisId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _SisUsuPerfHabMeta =
      const VerificationMeta('SisUsuPerfHab');
  GeneratedIntColumn _SisUsuPerfHab;
  @override
  GeneratedIntColumn get SisUsuPerfHab =>
      _SisUsuPerfHab ??= _constructSisUsuPerfHab();
  GeneratedIntColumn _constructSisUsuPerfHab() {
    return GeneratedIntColumn(
      'sis_usu_perf_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        SisId,
        PerfSisId,
        UsuId,
        SisUsuPerfHab,
        StatusId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableSisUsuPerfTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_sis_usu_perf';
  @override
  final String actualTableName = 'table_sis_usu_perf';
  @override
  VerificationContext validateIntegrity(TableSisUsuPerfCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.SisId.present) {
      context.handle(
          _SisIdMeta, SisId.isAcceptableValue(d.SisId.value, _SisIdMeta));
    } else if (SisId.isRequired && isInserting) {
      context.missing(_SisIdMeta);
    }
    if (d.PerfSisId.present) {
      context.handle(_PerfSisIdMeta,
          PerfSisId.isAcceptableValue(d.PerfSisId.value, _PerfSisIdMeta));
    } else if (PerfSisId.isRequired && isInserting) {
      context.missing(_PerfSisIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.SisUsuPerfHab.present) {
      context.handle(
          _SisUsuPerfHabMeta,
          SisUsuPerfHab.isAcceptableValue(
              d.SisUsuPerfHab.value, _SisUsuPerfHabMeta));
    } else if (SisUsuPerfHab.isRequired && isInserting) {
      context.missing(_SisUsuPerfHabMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SisUsuPerf map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return SisUsuPerf.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableSisUsuPerfCompanion d) {
    final map = <String, Variable>{};
    if (d.SisId.present) {
      map['sis_id'] = Variable<int, IntType>(d.SisId.value);
    }
    if (d.PerfSisId.present) {
      map['perf_sis_id'] = Variable<int, IntType>(d.PerfSisId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.SisUsuPerfHab.present) {
      map['sis_usu_perf_hab'] = Variable<int, IntType>(d.SisUsuPerfHab.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableSisUsuPerfTable createAlias(String alias) {
    return $TableSisUsuPerfTable(_db, alias);
  }
}

class Roles extends DataClass implements Insertable<Roles> {
  final int RolId;
  final String RolNom;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Roles(
      {@required this.RolId,
      @required this.RolNom,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory Roles.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Roles(
      RolId: intType.mapFromDatabaseResponse(data['${effectivePrefix}rol_id']),
      RolNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}rol_nom']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory Roles.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Roles(
      RolId: serializer.fromJson<int>(json['RolId']),
      RolNom: serializer.fromJson<String>(json['RolNom']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'RolId': serializer.toJson<int>(RolId),
      'RolNom': serializer.toJson<String>(RolNom),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Roles>>(bool nullToAbsent) {
    return TableRolesCompanion(
      RolId:
          RolId == null && nullToAbsent ? const Value.absent() : Value(RolId),
      RolNom:
          RolNom == null && nullToAbsent ? const Value.absent() : Value(RolNom),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  Roles copyWith(
          {int RolId,
          String RolNom,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Roles(
        RolId: RolId ?? this.RolId,
        RolNom: RolNom ?? this.RolNom,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Roles(')
          ..write('RolId: $RolId, ')
          ..write('RolNom: $RolNom, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      RolId.hashCode,
      $mrjc(
          RolNom.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Roles &&
          other.RolId == RolId &&
          other.RolNom == RolNom &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableRolesCompanion extends UpdateCompanion<Roles> {
  final Value<int> RolId;
  final Value<String> RolNom;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableRolesCompanion({
    this.RolId = const Value.absent(),
    this.RolNom = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableRolesCompanion copyWith(
      {Value<int> RolId,
      Value<String> RolNom,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableRolesCompanion(
      RolId: RolId ?? this.RolId,
      RolNom: RolNom ?? this.RolNom,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableRolesTable extends TableRoles
    with TableInfo<$TableRolesTable, Roles> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableRolesTable(this._db, [this._alias]);
  final VerificationMeta _RolIdMeta = const VerificationMeta('RolId');
  GeneratedIntColumn _RolId;
  @override
  GeneratedIntColumn get RolId => _RolId ??= _constructRolId();
  GeneratedIntColumn _constructRolId() {
    return GeneratedIntColumn('rol_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _RolNomMeta = const VerificationMeta('RolNom');
  GeneratedTextColumn _RolNom;
  @override
  GeneratedTextColumn get RolNom => _RolNom ??= _constructRolNom();
  GeneratedTextColumn _constructRolNom() {
    return GeneratedTextColumn(
      'rol_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [RolId, RolNom, StatusId, UsuId, createdAt, updatedAt, deletedAt];
  @override
  $TableRolesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_roles';
  @override
  final String actualTableName = 'table_roles';
  @override
  VerificationContext validateIntegrity(TableRolesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.RolId.present) {
      context.handle(
          _RolIdMeta, RolId.isAcceptableValue(d.RolId.value, _RolIdMeta));
    } else if (RolId.isRequired && isInserting) {
      context.missing(_RolIdMeta);
    }
    if (d.RolNom.present) {
      context.handle(
          _RolNomMeta, RolNom.isAcceptableValue(d.RolNom.value, _RolNomMeta));
    } else if (RolNom.isRequired && isInserting) {
      context.missing(_RolNomMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {RolId};
  @override
  Roles map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Roles.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableRolesCompanion d) {
    final map = <String, Variable>{};
    if (d.RolId.present) {
      map['rol_id'] = Variable<int, IntType>(d.RolId.value);
    }
    if (d.RolNom.present) {
      map['rol_nom'] = Variable<String, StringType>(d.RolNom.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableRolesTable createAlias(String alias) {
    return $TableRolesTable(_db, alias);
  }
}

class RRHH extends DataClass implements Insertable<RRHH> {
  final int RRHHId;
  final String RRHHDesc;
  final int RRHHFlgAct;
  final String RRHHPref;
  final String RRHHSuf;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  RRHH(
      {@required this.RRHHId,
      @required this.RRHHDesc,
      @required this.RRHHFlgAct,
      @required this.RRHHPref,
      @required this.RRHHSuf,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory RRHH.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return RRHH(
      RRHHId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_id']),
      RRHHDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_desc']),
      RRHHFlgAct: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_flg_act']),
      RRHHPref: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_pref']),
      RRHHSuf: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_suf']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory RRHH.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return RRHH(
      RRHHId: serializer.fromJson<int>(json['RRHHId']),
      RRHHDesc: serializer.fromJson<String>(json['RRHHDesc']),
      RRHHFlgAct: serializer.fromJson<int>(json['RRHHFlgAct']),
      RRHHPref: serializer.fromJson<String>(json['RRHHPref']),
      RRHHSuf: serializer.fromJson<String>(json['RRHHSuf']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'RRHHId': serializer.toJson<int>(RRHHId),
      'RRHHDesc': serializer.toJson<String>(RRHHDesc),
      'RRHHFlgAct': serializer.toJson<int>(RRHHFlgAct),
      'RRHHPref': serializer.toJson<String>(RRHHPref),
      'RRHHSuf': serializer.toJson<String>(RRHHSuf),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<RRHH>>(bool nullToAbsent) {
    return TableRRHHCompanion(
      RRHHId:
          RRHHId == null && nullToAbsent ? const Value.absent() : Value(RRHHId),
      RRHHDesc: RRHHDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(RRHHDesc),
      RRHHFlgAct: RRHHFlgAct == null && nullToAbsent
          ? const Value.absent()
          : Value(RRHHFlgAct),
      RRHHPref: RRHHPref == null && nullToAbsent
          ? const Value.absent()
          : Value(RRHHPref),
      RRHHSuf: RRHHSuf == null && nullToAbsent
          ? const Value.absent()
          : Value(RRHHSuf),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  RRHH copyWith(
          {int RRHHId,
          String RRHHDesc,
          int RRHHFlgAct,
          String RRHHPref,
          String RRHHSuf,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      RRHH(
        RRHHId: RRHHId ?? this.RRHHId,
        RRHHDesc: RRHHDesc ?? this.RRHHDesc,
        RRHHFlgAct: RRHHFlgAct ?? this.RRHHFlgAct,
        RRHHPref: RRHHPref ?? this.RRHHPref,
        RRHHSuf: RRHHSuf ?? this.RRHHSuf,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RRHH(')
          ..write('RRHHId: $RRHHId, ')
          ..write('RRHHDesc: $RRHHDesc, ')
          ..write('RRHHFlgAct: $RRHHFlgAct, ')
          ..write('RRHHPref: $RRHHPref, ')
          ..write('RRHHSuf: $RRHHSuf, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      RRHHId.hashCode,
      $mrjc(
          RRHHDesc.hashCode,
          $mrjc(
              RRHHFlgAct.hashCode,
              $mrjc(
                  RRHHPref.hashCode,
                  $mrjc(
                      RRHHSuf.hashCode,
                      $mrjc(
                          StatusId.hashCode,
                          $mrjc(
                              UsuId.hashCode,
                              $mrjc(
                                  createdAt.hashCode,
                                  $mrjc(updatedAt.hashCode,
                                      deletedAt.hashCode))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is RRHH &&
          other.RRHHId == RRHHId &&
          other.RRHHDesc == RRHHDesc &&
          other.RRHHFlgAct == RRHHFlgAct &&
          other.RRHHPref == RRHHPref &&
          other.RRHHSuf == RRHHSuf &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableRRHHCompanion extends UpdateCompanion<RRHH> {
  final Value<int> RRHHId;
  final Value<String> RRHHDesc;
  final Value<int> RRHHFlgAct;
  final Value<String> RRHHPref;
  final Value<String> RRHHSuf;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableRRHHCompanion({
    this.RRHHId = const Value.absent(),
    this.RRHHDesc = const Value.absent(),
    this.RRHHFlgAct = const Value.absent(),
    this.RRHHPref = const Value.absent(),
    this.RRHHSuf = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableRRHHCompanion copyWith(
      {Value<int> RRHHId,
      Value<String> RRHHDesc,
      Value<int> RRHHFlgAct,
      Value<String> RRHHPref,
      Value<String> RRHHSuf,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableRRHHCompanion(
      RRHHId: RRHHId ?? this.RRHHId,
      RRHHDesc: RRHHDesc ?? this.RRHHDesc,
      RRHHFlgAct: RRHHFlgAct ?? this.RRHHFlgAct,
      RRHHPref: RRHHPref ?? this.RRHHPref,
      RRHHSuf: RRHHSuf ?? this.RRHHSuf,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableRRHHTable extends TableRRHH with TableInfo<$TableRRHHTable, RRHH> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableRRHHTable(this._db, [this._alias]);
  final VerificationMeta _RRHHIdMeta = const VerificationMeta('RRHHId');
  GeneratedIntColumn _RRHHId;
  @override
  GeneratedIntColumn get RRHHId => _RRHHId ??= _constructRRHHId();
  GeneratedIntColumn _constructRRHHId() {
    return GeneratedIntColumn('r_r_h_h_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _RRHHDescMeta = const VerificationMeta('RRHHDesc');
  GeneratedTextColumn _RRHHDesc;
  @override
  GeneratedTextColumn get RRHHDesc => _RRHHDesc ??= _constructRRHHDesc();
  GeneratedTextColumn _constructRRHHDesc() {
    return GeneratedTextColumn(
      'r_r_h_h_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _RRHHFlgActMeta = const VerificationMeta('RRHHFlgAct');
  GeneratedIntColumn _RRHHFlgAct;
  @override
  GeneratedIntColumn get RRHHFlgAct => _RRHHFlgAct ??= _constructRRHHFlgAct();
  GeneratedIntColumn _constructRRHHFlgAct() {
    return GeneratedIntColumn(
      'r_r_h_h_flg_act',
      $tableName,
      false,
    );
  }

  final VerificationMeta _RRHHPrefMeta = const VerificationMeta('RRHHPref');
  GeneratedTextColumn _RRHHPref;
  @override
  GeneratedTextColumn get RRHHPref => _RRHHPref ??= _constructRRHHPref();
  GeneratedTextColumn _constructRRHHPref() {
    return GeneratedTextColumn(
      'r_r_h_h_pref',
      $tableName,
      false,
    );
  }

  final VerificationMeta _RRHHSufMeta = const VerificationMeta('RRHHSuf');
  GeneratedTextColumn _RRHHSuf;
  @override
  GeneratedTextColumn get RRHHSuf => _RRHHSuf ??= _constructRRHHSuf();
  GeneratedTextColumn _constructRRHHSuf() {
    return GeneratedTextColumn(
      'r_r_h_h_suf',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        RRHHId,
        RRHHDesc,
        RRHHFlgAct,
        RRHHPref,
        RRHHSuf,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableRRHHTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_r_r_h_h';
  @override
  final String actualTableName = 'table_r_r_h_h';
  @override
  VerificationContext validateIntegrity(TableRRHHCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.RRHHId.present) {
      context.handle(
          _RRHHIdMeta, RRHHId.isAcceptableValue(d.RRHHId.value, _RRHHIdMeta));
    } else if (RRHHId.isRequired && isInserting) {
      context.missing(_RRHHIdMeta);
    }
    if (d.RRHHDesc.present) {
      context.handle(_RRHHDescMeta,
          RRHHDesc.isAcceptableValue(d.RRHHDesc.value, _RRHHDescMeta));
    } else if (RRHHDesc.isRequired && isInserting) {
      context.missing(_RRHHDescMeta);
    }
    if (d.RRHHFlgAct.present) {
      context.handle(_RRHHFlgActMeta,
          RRHHFlgAct.isAcceptableValue(d.RRHHFlgAct.value, _RRHHFlgActMeta));
    } else if (RRHHFlgAct.isRequired && isInserting) {
      context.missing(_RRHHFlgActMeta);
    }
    if (d.RRHHPref.present) {
      context.handle(_RRHHPrefMeta,
          RRHHPref.isAcceptableValue(d.RRHHPref.value, _RRHHPrefMeta));
    } else if (RRHHPref.isRequired && isInserting) {
      context.missing(_RRHHPrefMeta);
    }
    if (d.RRHHSuf.present) {
      context.handle(_RRHHSufMeta,
          RRHHSuf.isAcceptableValue(d.RRHHSuf.value, _RRHHSufMeta));
    } else if (RRHHSuf.isRequired && isInserting) {
      context.missing(_RRHHSufMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {RRHHId};
  @override
  RRHH map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RRHH.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableRRHHCompanion d) {
    final map = <String, Variable>{};
    if (d.RRHHId.present) {
      map['r_r_h_h_id'] = Variable<int, IntType>(d.RRHHId.value);
    }
    if (d.RRHHDesc.present) {
      map['r_r_h_h_desc'] = Variable<String, StringType>(d.RRHHDesc.value);
    }
    if (d.RRHHFlgAct.present) {
      map['r_r_h_h_flg_act'] = Variable<int, IntType>(d.RRHHFlgAct.value);
    }
    if (d.RRHHPref.present) {
      map['r_r_h_h_pref'] = Variable<String, StringType>(d.RRHHPref.value);
    }
    if (d.RRHHSuf.present) {
      map['r_r_h_h_suf'] = Variable<String, StringType>(d.RRHHSuf.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableRRHHTable createAlias(String alias) {
    return $TableRRHHTable(_db, alias);
  }
}

class RRHHPers extends DataClass implements Insertable<RRHHPers> {
  final int RRHHId;
  final int UsuId;
  final int StatusId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  RRHHPers(
      {@required this.RRHHId,
      @required this.UsuId,
      @required this.StatusId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory RRHHPers.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return RRHHPers(
      RRHHId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory RRHHPers.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return RRHHPers(
      RRHHId: serializer.fromJson<int>(json['RRHHId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'RRHHId': serializer.toJson<int>(RRHHId),
      'UsuId': serializer.toJson<int>(UsuId),
      'StatusId': serializer.toJson<int>(StatusId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<RRHHPers>>(bool nullToAbsent) {
    return TableRRHHPersCompanion(
      RRHHId:
          RRHHId == null && nullToAbsent ? const Value.absent() : Value(RRHHId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  RRHHPers copyWith(
          {int RRHHId,
          int UsuId,
          int StatusId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      RRHHPers(
        RRHHId: RRHHId ?? this.RRHHId,
        UsuId: UsuId ?? this.UsuId,
        StatusId: StatusId ?? this.StatusId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RRHHPers(')
          ..write('RRHHId: $RRHHId, ')
          ..write('UsuId: $UsuId, ')
          ..write('StatusId: $StatusId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      RRHHId.hashCode,
      $mrjc(
          UsuId.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(createdAt.hashCode,
                  $mrjc(updatedAt.hashCode, deletedAt.hashCode))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is RRHHPers &&
          other.RRHHId == RRHHId &&
          other.UsuId == UsuId &&
          other.StatusId == StatusId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableRRHHPersCompanion extends UpdateCompanion<RRHHPers> {
  final Value<int> RRHHId;
  final Value<int> UsuId;
  final Value<int> StatusId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableRRHHPersCompanion({
    this.RRHHId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableRRHHPersCompanion copyWith(
      {Value<int> RRHHId,
      Value<int> UsuId,
      Value<int> StatusId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableRRHHPersCompanion(
      RRHHId: RRHHId ?? this.RRHHId,
      UsuId: UsuId ?? this.UsuId,
      StatusId: StatusId ?? this.StatusId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableRRHHPersTable extends TableRRHHPers
    with TableInfo<$TableRRHHPersTable, RRHHPers> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableRRHHPersTable(this._db, [this._alias]);
  final VerificationMeta _RRHHIdMeta = const VerificationMeta('RRHHId');
  GeneratedIntColumn _RRHHId;
  @override
  GeneratedIntColumn get RRHHId => _RRHHId ??= _constructRRHHId();
  GeneratedIntColumn _constructRRHHId() {
    return GeneratedIntColumn(
      'r_r_h_h_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [RRHHId, UsuId, StatusId, createdAt, updatedAt, deletedAt];
  @override
  $TableRRHHPersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_r_r_h_h_pers';
  @override
  final String actualTableName = 'table_r_r_h_h_pers';
  @override
  VerificationContext validateIntegrity(TableRRHHPersCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.RRHHId.present) {
      context.handle(
          _RRHHIdMeta, RRHHId.isAcceptableValue(d.RRHHId.value, _RRHHIdMeta));
    } else if (RRHHId.isRequired && isInserting) {
      context.missing(_RRHHIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  RRHHPers map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RRHHPers.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableRRHHPersCompanion d) {
    final map = <String, Variable>{};
    if (d.RRHHId.present) {
      map['r_r_h_h_id'] = Variable<int, IntType>(d.RRHHId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableRRHHPersTable createAlias(String alias) {
    return $TableRRHHPersTable(_db, alias);
  }
}

class RRHHRol extends DataClass implements Insertable<RRHHRol> {
  final int RRHHId;
  final String RRHHRolFchIni;
  final int RolId;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  RRHHRol(
      {@required this.RRHHId,
      @required this.RRHHRolFchIni,
      @required this.RolId,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory RRHHRol.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return RRHHRol(
      RRHHId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_id']),
      RRHHRolFchIni: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}r_r_h_h_rol_fch_ini']),
      RolId: intType.mapFromDatabaseResponse(data['${effectivePrefix}rol_id']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory RRHHRol.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return RRHHRol(
      RRHHId: serializer.fromJson<int>(json['RRHHId']),
      RRHHRolFchIni: serializer.fromJson<String>(json['RRHHRolFchIni']),
      RolId: serializer.fromJson<int>(json['RolId']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'RRHHId': serializer.toJson<int>(RRHHId),
      'RRHHRolFchIni': serializer.toJson<String>(RRHHRolFchIni),
      'RolId': serializer.toJson<int>(RolId),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<RRHHRol>>(bool nullToAbsent) {
    return TableRRHHRolCompanion(
      RRHHId:
          RRHHId == null && nullToAbsent ? const Value.absent() : Value(RRHHId),
      RRHHRolFchIni: RRHHRolFchIni == null && nullToAbsent
          ? const Value.absent()
          : Value(RRHHRolFchIni),
      RolId:
          RolId == null && nullToAbsent ? const Value.absent() : Value(RolId),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  RRHHRol copyWith(
          {int RRHHId,
          String RRHHRolFchIni,
          int RolId,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      RRHHRol(
        RRHHId: RRHHId ?? this.RRHHId,
        RRHHRolFchIni: RRHHRolFchIni ?? this.RRHHRolFchIni,
        RolId: RolId ?? this.RolId,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RRHHRol(')
          ..write('RRHHId: $RRHHId, ')
          ..write('RRHHRolFchIni: $RRHHRolFchIni, ')
          ..write('RolId: $RolId, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      RRHHId.hashCode,
      $mrjc(
          RRHHRolFchIni.hashCode,
          $mrjc(
              RolId.hashCode,
              $mrjc(
                  StatusId.hashCode,
                  $mrjc(
                      UsuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is RRHHRol &&
          other.RRHHId == RRHHId &&
          other.RRHHRolFchIni == RRHHRolFchIni &&
          other.RolId == RolId &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableRRHHRolCompanion extends UpdateCompanion<RRHHRol> {
  final Value<int> RRHHId;
  final Value<String> RRHHRolFchIni;
  final Value<int> RolId;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableRRHHRolCompanion({
    this.RRHHId = const Value.absent(),
    this.RRHHRolFchIni = const Value.absent(),
    this.RolId = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableRRHHRolCompanion copyWith(
      {Value<int> RRHHId,
      Value<String> RRHHRolFchIni,
      Value<int> RolId,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableRRHHRolCompanion(
      RRHHId: RRHHId ?? this.RRHHId,
      RRHHRolFchIni: RRHHRolFchIni ?? this.RRHHRolFchIni,
      RolId: RolId ?? this.RolId,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableRRHHRolTable extends TableRRHHRol
    with TableInfo<$TableRRHHRolTable, RRHHRol> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableRRHHRolTable(this._db, [this._alias]);
  final VerificationMeta _RRHHIdMeta = const VerificationMeta('RRHHId');
  GeneratedIntColumn _RRHHId;
  @override
  GeneratedIntColumn get RRHHId => _RRHHId ??= _constructRRHHId();
  GeneratedIntColumn _constructRRHHId() {
    return GeneratedIntColumn(
      'r_r_h_h_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _RRHHRolFchIniMeta =
      const VerificationMeta('RRHHRolFchIni');
  GeneratedTextColumn _RRHHRolFchIni;
  @override
  GeneratedTextColumn get RRHHRolFchIni =>
      _RRHHRolFchIni ??= _constructRRHHRolFchIni();
  GeneratedTextColumn _constructRRHHRolFchIni() {
    return GeneratedTextColumn(
      'r_r_h_h_rol_fch_ini',
      $tableName,
      false,
    );
  }

  final VerificationMeta _RolIdMeta = const VerificationMeta('RolId');
  GeneratedIntColumn _RolId;
  @override
  GeneratedIntColumn get RolId => _RolId ??= _constructRolId();
  GeneratedIntColumn _constructRolId() {
    return GeneratedIntColumn('rol_id', $tableName, false,
        $customConstraints: 'REFERENCES Roles(RolId)');
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        RRHHId,
        RRHHRolFchIni,
        RolId,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableRRHHRolTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_r_r_h_h_rol';
  @override
  final String actualTableName = 'table_r_r_h_h_rol';
  @override
  VerificationContext validateIntegrity(TableRRHHRolCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.RRHHId.present) {
      context.handle(
          _RRHHIdMeta, RRHHId.isAcceptableValue(d.RRHHId.value, _RRHHIdMeta));
    } else if (RRHHId.isRequired && isInserting) {
      context.missing(_RRHHIdMeta);
    }
    if (d.RRHHRolFchIni.present) {
      context.handle(
          _RRHHRolFchIniMeta,
          RRHHRolFchIni.isAcceptableValue(
              d.RRHHRolFchIni.value, _RRHHRolFchIniMeta));
    } else if (RRHHRolFchIni.isRequired && isInserting) {
      context.missing(_RRHHRolFchIniMeta);
    }
    if (d.RolId.present) {
      context.handle(
          _RolIdMeta, RolId.isAcceptableValue(d.RolId.value, _RolIdMeta));
    } else if (RolId.isRequired && isInserting) {
      context.missing(_RolIdMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  RRHHRol map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RRHHRol.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableRRHHRolCompanion d) {
    final map = <String, Variable>{};
    if (d.RRHHId.present) {
      map['r_r_h_h_id'] = Variable<int, IntType>(d.RRHHId.value);
    }
    if (d.RRHHRolFchIni.present) {
      map['r_r_h_h_rol_fch_ini'] =
          Variable<String, StringType>(d.RRHHRolFchIni.value);
    }
    if (d.RolId.present) {
      map['rol_id'] = Variable<int, IntType>(d.RolId.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableRRHHRolTable createAlias(String alias) {
    return $TableRRHHRolTable(_db, alias);
  }
}

class TipActAsist extends DataClass implements Insertable<TipActAsist> {
  final int TipActAsistId;
  final String TipActAsistDesc;
  final int TipActAsistFlgSeIndica;
  final int TipActAsistFlgParacl;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  TipActAsist(
      {@required this.TipActAsistId,
      @required this.TipActAsistDesc,
      @required this.TipActAsistFlgSeIndica,
      @required this.TipActAsistFlgParacl,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory TipActAsist.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return TipActAsist(
      TipActAsistId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tip_act_asist_id']),
      TipActAsistDesc: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}tip_act_asist_desc']),
      TipActAsistFlgSeIndica: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tip_act_asist_flg_se_indica']),
      TipActAsistFlgParacl: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tip_act_asist_flg_paracl']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory TipActAsist.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return TipActAsist(
      TipActAsistId: serializer.fromJson<int>(json['TipActAsistId']),
      TipActAsistDesc: serializer.fromJson<String>(json['TipActAsistDesc']),
      TipActAsistFlgSeIndica:
          serializer.fromJson<int>(json['TipActAsistFlgSeIndica']),
      TipActAsistFlgParacl:
          serializer.fromJson<int>(json['TipActAsistFlgParacl']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'TipActAsistId': serializer.toJson<int>(TipActAsistId),
      'TipActAsistDesc': serializer.toJson<String>(TipActAsistDesc),
      'TipActAsistFlgSeIndica': serializer.toJson<int>(TipActAsistFlgSeIndica),
      'TipActAsistFlgParacl': serializer.toJson<int>(TipActAsistFlgParacl),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<TipActAsist>>(bool nullToAbsent) {
    return TableTipActAsistCompanion(
      TipActAsistId: TipActAsistId == null && nullToAbsent
          ? const Value.absent()
          : Value(TipActAsistId),
      TipActAsistDesc: TipActAsistDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(TipActAsistDesc),
      TipActAsistFlgSeIndica: TipActAsistFlgSeIndica == null && nullToAbsent
          ? const Value.absent()
          : Value(TipActAsistFlgSeIndica),
      TipActAsistFlgParacl: TipActAsistFlgParacl == null && nullToAbsent
          ? const Value.absent()
          : Value(TipActAsistFlgParacl),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  TipActAsist copyWith(
          {int TipActAsistId,
          String TipActAsistDesc,
          int TipActAsistFlgSeIndica,
          int TipActAsistFlgParacl,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      TipActAsist(
        TipActAsistId: TipActAsistId ?? this.TipActAsistId,
        TipActAsistDesc: TipActAsistDesc ?? this.TipActAsistDesc,
        TipActAsistFlgSeIndica:
            TipActAsistFlgSeIndica ?? this.TipActAsistFlgSeIndica,
        TipActAsistFlgParacl: TipActAsistFlgParacl ?? this.TipActAsistFlgParacl,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('TipActAsist(')
          ..write('TipActAsistId: $TipActAsistId, ')
          ..write('TipActAsistDesc: $TipActAsistDesc, ')
          ..write('TipActAsistFlgSeIndica: $TipActAsistFlgSeIndica, ')
          ..write('TipActAsistFlgParacl: $TipActAsistFlgParacl, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      TipActAsistId.hashCode,
      $mrjc(
          TipActAsistDesc.hashCode,
          $mrjc(
              TipActAsistFlgSeIndica.hashCode,
              $mrjc(
                  TipActAsistFlgParacl.hashCode,
                  $mrjc(
                      StatusId.hashCode,
                      $mrjc(
                          UsuId.hashCode,
                          $mrjc(
                              createdAt.hashCode,
                              $mrjc(updatedAt.hashCode,
                                  deletedAt.hashCode)))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is TipActAsist &&
          other.TipActAsistId == TipActAsistId &&
          other.TipActAsistDesc == TipActAsistDesc &&
          other.TipActAsistFlgSeIndica == TipActAsistFlgSeIndica &&
          other.TipActAsistFlgParacl == TipActAsistFlgParacl &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableTipActAsistCompanion extends UpdateCompanion<TipActAsist> {
  final Value<int> TipActAsistId;
  final Value<String> TipActAsistDesc;
  final Value<int> TipActAsistFlgSeIndica;
  final Value<int> TipActAsistFlgParacl;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableTipActAsistCompanion({
    this.TipActAsistId = const Value.absent(),
    this.TipActAsistDesc = const Value.absent(),
    this.TipActAsistFlgSeIndica = const Value.absent(),
    this.TipActAsistFlgParacl = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableTipActAsistCompanion copyWith(
      {Value<int> TipActAsistId,
      Value<String> TipActAsistDesc,
      Value<int> TipActAsistFlgSeIndica,
      Value<int> TipActAsistFlgParacl,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableTipActAsistCompanion(
      TipActAsistId: TipActAsistId ?? this.TipActAsistId,
      TipActAsistDesc: TipActAsistDesc ?? this.TipActAsistDesc,
      TipActAsistFlgSeIndica:
          TipActAsistFlgSeIndica ?? this.TipActAsistFlgSeIndica,
      TipActAsistFlgParacl: TipActAsistFlgParacl ?? this.TipActAsistFlgParacl,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableTipActAsistTable extends TableTipActAsist
    with TableInfo<$TableTipActAsistTable, TipActAsist> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableTipActAsistTable(this._db, [this._alias]);
  final VerificationMeta _TipActAsistIdMeta =
      const VerificationMeta('TipActAsistId');
  GeneratedIntColumn _TipActAsistId;
  @override
  GeneratedIntColumn get TipActAsistId =>
      _TipActAsistId ??= _constructTipActAsistId();
  GeneratedIntColumn _constructTipActAsistId() {
    return GeneratedIntColumn('tip_act_asist_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _TipActAsistDescMeta =
      const VerificationMeta('TipActAsistDesc');
  GeneratedTextColumn _TipActAsistDesc;
  @override
  GeneratedTextColumn get TipActAsistDesc =>
      _TipActAsistDesc ??= _constructTipActAsistDesc();
  GeneratedTextColumn _constructTipActAsistDesc() {
    return GeneratedTextColumn(
      'tip_act_asist_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _TipActAsistFlgSeIndicaMeta =
      const VerificationMeta('TipActAsistFlgSeIndica');
  GeneratedIntColumn _TipActAsistFlgSeIndica;
  @override
  GeneratedIntColumn get TipActAsistFlgSeIndica =>
      _TipActAsistFlgSeIndica ??= _constructTipActAsistFlgSeIndica();
  GeneratedIntColumn _constructTipActAsistFlgSeIndica() {
    return GeneratedIntColumn(
      'tip_act_asist_flg_se_indica',
      $tableName,
      false,
    );
  }

  final VerificationMeta _TipActAsistFlgParaclMeta =
      const VerificationMeta('TipActAsistFlgParacl');
  GeneratedIntColumn _TipActAsistFlgParacl;
  @override
  GeneratedIntColumn get TipActAsistFlgParacl =>
      _TipActAsistFlgParacl ??= _constructTipActAsistFlgParacl();
  GeneratedIntColumn _constructTipActAsistFlgParacl() {
    return GeneratedIntColumn(
      'tip_act_asist_flg_paracl',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        TipActAsistId,
        TipActAsistDesc,
        TipActAsistFlgSeIndica,
        TipActAsistFlgParacl,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableTipActAsistTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_tip_act_asist';
  @override
  final String actualTableName = 'table_tip_act_asist';
  @override
  VerificationContext validateIntegrity(TableTipActAsistCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.TipActAsistId.present) {
      context.handle(
          _TipActAsistIdMeta,
          TipActAsistId.isAcceptableValue(
              d.TipActAsistId.value, _TipActAsistIdMeta));
    } else if (TipActAsistId.isRequired && isInserting) {
      context.missing(_TipActAsistIdMeta);
    }
    if (d.TipActAsistDesc.present) {
      context.handle(
          _TipActAsistDescMeta,
          TipActAsistDesc.isAcceptableValue(
              d.TipActAsistDesc.value, _TipActAsistDescMeta));
    } else if (TipActAsistDesc.isRequired && isInserting) {
      context.missing(_TipActAsistDescMeta);
    }
    if (d.TipActAsistFlgSeIndica.present) {
      context.handle(
          _TipActAsistFlgSeIndicaMeta,
          TipActAsistFlgSeIndica.isAcceptableValue(
              d.TipActAsistFlgSeIndica.value, _TipActAsistFlgSeIndicaMeta));
    } else if (TipActAsistFlgSeIndica.isRequired && isInserting) {
      context.missing(_TipActAsistFlgSeIndicaMeta);
    }
    if (d.TipActAsistFlgParacl.present) {
      context.handle(
          _TipActAsistFlgParaclMeta,
          TipActAsistFlgParacl.isAcceptableValue(
              d.TipActAsistFlgParacl.value, _TipActAsistFlgParaclMeta));
    } else if (TipActAsistFlgParacl.isRequired && isInserting) {
      context.missing(_TipActAsistFlgParaclMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {TipActAsistId};
  @override
  TipActAsist map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TipActAsist.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableTipActAsistCompanion d) {
    final map = <String, Variable>{};
    if (d.TipActAsistId.present) {
      map['tip_act_asist_id'] = Variable<int, IntType>(d.TipActAsistId.value);
    }
    if (d.TipActAsistDesc.present) {
      map['tip_act_asist_desc'] =
          Variable<String, StringType>(d.TipActAsistDesc.value);
    }
    if (d.TipActAsistFlgSeIndica.present) {
      map['tip_act_asist_flg_se_indica'] =
          Variable<int, IntType>(d.TipActAsistFlgSeIndica.value);
    }
    if (d.TipActAsistFlgParacl.present) {
      map['tip_act_asist_flg_paracl'] =
          Variable<int, IntType>(d.TipActAsistFlgParacl.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableTipActAsistTable createAlias(String alias) {
    return $TableTipActAsistTable(_db, alias);
  }
}

class UnidMed extends DataClass implements Insertable<UnidMed> {
  final int UnidMedId;
  final String UnidMedDesc;
  final String UnidMedAbrev;
  final int UnidMedFlgHab;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  UnidMed(
      {@required this.UnidMedId,
      @required this.UnidMedDesc,
      @required this.UnidMedAbrev,
      @required this.UnidMedFlgHab,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory UnidMed.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return UnidMed(
      UnidMedId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_id']),
      UnidMedDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_desc']),
      UnidMedAbrev: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_abrev']),
      UnidMedFlgHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_flg_hab']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory UnidMed.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return UnidMed(
      UnidMedId: serializer.fromJson<int>(json['UnidMedId']),
      UnidMedDesc: serializer.fromJson<String>(json['UnidMedDesc']),
      UnidMedAbrev: serializer.fromJson<String>(json['UnidMedAbrev']),
      UnidMedFlgHab: serializer.fromJson<int>(json['UnidMedFlgHab']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'UnidMedId': serializer.toJson<int>(UnidMedId),
      'UnidMedDesc': serializer.toJson<String>(UnidMedDesc),
      'UnidMedAbrev': serializer.toJson<String>(UnidMedAbrev),
      'UnidMedFlgHab': serializer.toJson<int>(UnidMedFlgHab),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<UnidMed>>(bool nullToAbsent) {
    return TableUnidMedCompanion(
      UnidMedId: UnidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(UnidMedId),
      UnidMedDesc: UnidMedDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(UnidMedDesc),
      UnidMedAbrev: UnidMedAbrev == null && nullToAbsent
          ? const Value.absent()
          : Value(UnidMedAbrev),
      UnidMedFlgHab: UnidMedFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(UnidMedFlgHab),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  UnidMed copyWith(
          {int UnidMedId,
          String UnidMedDesc,
          String UnidMedAbrev,
          int UnidMedFlgHab,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      UnidMed(
        UnidMedId: UnidMedId ?? this.UnidMedId,
        UnidMedDesc: UnidMedDesc ?? this.UnidMedDesc,
        UnidMedAbrev: UnidMedAbrev ?? this.UnidMedAbrev,
        UnidMedFlgHab: UnidMedFlgHab ?? this.UnidMedFlgHab,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('UnidMed(')
          ..write('UnidMedId: $UnidMedId, ')
          ..write('UnidMedDesc: $UnidMedDesc, ')
          ..write('UnidMedAbrev: $UnidMedAbrev, ')
          ..write('UnidMedFlgHab: $UnidMedFlgHab, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      UnidMedId.hashCode,
      $mrjc(
          UnidMedDesc.hashCode,
          $mrjc(
              UnidMedAbrev.hashCode,
              $mrjc(
                  UnidMedFlgHab.hashCode,
                  $mrjc(
                      StatusId.hashCode,
                      $mrjc(
                          UsuId.hashCode,
                          $mrjc(
                              createdAt.hashCode,
                              $mrjc(updatedAt.hashCode,
                                  deletedAt.hashCode)))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is UnidMed &&
          other.UnidMedId == UnidMedId &&
          other.UnidMedDesc == UnidMedDesc &&
          other.UnidMedAbrev == UnidMedAbrev &&
          other.UnidMedFlgHab == UnidMedFlgHab &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableUnidMedCompanion extends UpdateCompanion<UnidMed> {
  final Value<int> UnidMedId;
  final Value<String> UnidMedDesc;
  final Value<String> UnidMedAbrev;
  final Value<int> UnidMedFlgHab;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableUnidMedCompanion({
    this.UnidMedId = const Value.absent(),
    this.UnidMedDesc = const Value.absent(),
    this.UnidMedAbrev = const Value.absent(),
    this.UnidMedFlgHab = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableUnidMedCompanion copyWith(
      {Value<int> UnidMedId,
      Value<String> UnidMedDesc,
      Value<String> UnidMedAbrev,
      Value<int> UnidMedFlgHab,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableUnidMedCompanion(
      UnidMedId: UnidMedId ?? this.UnidMedId,
      UnidMedDesc: UnidMedDesc ?? this.UnidMedDesc,
      UnidMedAbrev: UnidMedAbrev ?? this.UnidMedAbrev,
      UnidMedFlgHab: UnidMedFlgHab ?? this.UnidMedFlgHab,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableUnidMedTable extends TableUnidMed
    with TableInfo<$TableUnidMedTable, UnidMed> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableUnidMedTable(this._db, [this._alias]);
  final VerificationMeta _UnidMedIdMeta = const VerificationMeta('UnidMedId');
  GeneratedIntColumn _UnidMedId;
  @override
  GeneratedIntColumn get UnidMedId => _UnidMedId ??= _constructUnidMedId();
  GeneratedIntColumn _constructUnidMedId() {
    return GeneratedIntColumn('unid_med_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _UnidMedDescMeta =
      const VerificationMeta('UnidMedDesc');
  GeneratedTextColumn _UnidMedDesc;
  @override
  GeneratedTextColumn get UnidMedDesc =>
      _UnidMedDesc ??= _constructUnidMedDesc();
  GeneratedTextColumn _constructUnidMedDesc() {
    return GeneratedTextColumn(
      'unid_med_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UnidMedAbrevMeta =
      const VerificationMeta('UnidMedAbrev');
  GeneratedTextColumn _UnidMedAbrev;
  @override
  GeneratedTextColumn get UnidMedAbrev =>
      _UnidMedAbrev ??= _constructUnidMedAbrev();
  GeneratedTextColumn _constructUnidMedAbrev() {
    return GeneratedTextColumn(
      'unid_med_abrev',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UnidMedFlgHabMeta =
      const VerificationMeta('UnidMedFlgHab');
  GeneratedIntColumn _UnidMedFlgHab;
  @override
  GeneratedIntColumn get UnidMedFlgHab =>
      _UnidMedFlgHab ??= _constructUnidMedFlgHab();
  GeneratedIntColumn _constructUnidMedFlgHab() {
    return GeneratedIntColumn(
      'unid_med_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        UnidMedId,
        UnidMedDesc,
        UnidMedAbrev,
        UnidMedFlgHab,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableUnidMedTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_unid_med';
  @override
  final String actualTableName = 'table_unid_med';
  @override
  VerificationContext validateIntegrity(TableUnidMedCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.UnidMedId.present) {
      context.handle(_UnidMedIdMeta,
          UnidMedId.isAcceptableValue(d.UnidMedId.value, _UnidMedIdMeta));
    } else if (UnidMedId.isRequired && isInserting) {
      context.missing(_UnidMedIdMeta);
    }
    if (d.UnidMedDesc.present) {
      context.handle(_UnidMedDescMeta,
          UnidMedDesc.isAcceptableValue(d.UnidMedDesc.value, _UnidMedDescMeta));
    } else if (UnidMedDesc.isRequired && isInserting) {
      context.missing(_UnidMedDescMeta);
    }
    if (d.UnidMedAbrev.present) {
      context.handle(
          _UnidMedAbrevMeta,
          UnidMedAbrev.isAcceptableValue(
              d.UnidMedAbrev.value, _UnidMedAbrevMeta));
    } else if (UnidMedAbrev.isRequired && isInserting) {
      context.missing(_UnidMedAbrevMeta);
    }
    if (d.UnidMedFlgHab.present) {
      context.handle(
          _UnidMedFlgHabMeta,
          UnidMedFlgHab.isAcceptableValue(
              d.UnidMedFlgHab.value, _UnidMedFlgHabMeta));
    } else if (UnidMedFlgHab.isRequired && isInserting) {
      context.missing(_UnidMedFlgHabMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {UnidMedId};
  @override
  UnidMed map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UnidMed.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableUnidMedCompanion d) {
    final map = <String, Variable>{};
    if (d.UnidMedId.present) {
      map['unid_med_id'] = Variable<int, IntType>(d.UnidMedId.value);
    }
    if (d.UnidMedDesc.present) {
      map['unid_med_desc'] = Variable<String, StringType>(d.UnidMedDesc.value);
    }
    if (d.UnidMedAbrev.present) {
      map['unid_med_abrev'] =
          Variable<String, StringType>(d.UnidMedAbrev.value);
    }
    if (d.UnidMedFlgHab.present) {
      map['unid_med_flg_hab'] = Variable<int, IntType>(d.UnidMedFlgHab.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableUnidMedTable createAlias(String alias) {
    return $TableUnidMedTable(_db, alias);
  }
}

class ViaAdmMedic extends DataClass implements Insertable<ViaAdmMedic> {
  final int ViaAdmMedicId;
  final String ViaAdmMedicDesc;
  final String ViaAdmMedicAbrev;
  final int ViaAdmMedicFlgHab;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  ViaAdmMedic(
      {@required this.ViaAdmMedicId,
      @required this.ViaAdmMedicDesc,
      @required this.ViaAdmMedicAbrev,
      @required this.ViaAdmMedicFlgHab,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory ViaAdmMedic.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ViaAdmMedic(
      ViaAdmMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}via_adm_medic_id']),
      ViaAdmMedicDesc: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}via_adm_medic_desc']),
      ViaAdmMedicAbrev: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}via_adm_medic_abrev']),
      ViaAdmMedicFlgHab: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}via_adm_medic_flg_hab']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory ViaAdmMedic.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return ViaAdmMedic(
      ViaAdmMedicId: serializer.fromJson<int>(json['ViaAdmMedicId']),
      ViaAdmMedicDesc: serializer.fromJson<String>(json['ViaAdmMedicDesc']),
      ViaAdmMedicAbrev: serializer.fromJson<String>(json['ViaAdmMedicAbrev']),
      ViaAdmMedicFlgHab: serializer.fromJson<int>(json['ViaAdmMedicFlgHab']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'ViaAdmMedicId': serializer.toJson<int>(ViaAdmMedicId),
      'ViaAdmMedicDesc': serializer.toJson<String>(ViaAdmMedicDesc),
      'ViaAdmMedicAbrev': serializer.toJson<String>(ViaAdmMedicAbrev),
      'ViaAdmMedicFlgHab': serializer.toJson<int>(ViaAdmMedicFlgHab),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<ViaAdmMedic>>(bool nullToAbsent) {
    return TableViaAdmMedicCompanion(
      ViaAdmMedicId: ViaAdmMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(ViaAdmMedicId),
      ViaAdmMedicDesc: ViaAdmMedicDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(ViaAdmMedicDesc),
      ViaAdmMedicAbrev: ViaAdmMedicAbrev == null && nullToAbsent
          ? const Value.absent()
          : Value(ViaAdmMedicAbrev),
      ViaAdmMedicFlgHab: ViaAdmMedicFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(ViaAdmMedicFlgHab),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  ViaAdmMedic copyWith(
          {int ViaAdmMedicId,
          String ViaAdmMedicDesc,
          String ViaAdmMedicAbrev,
          int ViaAdmMedicFlgHab,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      ViaAdmMedic(
        ViaAdmMedicId: ViaAdmMedicId ?? this.ViaAdmMedicId,
        ViaAdmMedicDesc: ViaAdmMedicDesc ?? this.ViaAdmMedicDesc,
        ViaAdmMedicAbrev: ViaAdmMedicAbrev ?? this.ViaAdmMedicAbrev,
        ViaAdmMedicFlgHab: ViaAdmMedicFlgHab ?? this.ViaAdmMedicFlgHab,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ViaAdmMedic(')
          ..write('ViaAdmMedicId: $ViaAdmMedicId, ')
          ..write('ViaAdmMedicDesc: $ViaAdmMedicDesc, ')
          ..write('ViaAdmMedicAbrev: $ViaAdmMedicAbrev, ')
          ..write('ViaAdmMedicFlgHab: $ViaAdmMedicFlgHab, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      ViaAdmMedicId.hashCode,
      $mrjc(
          ViaAdmMedicDesc.hashCode,
          $mrjc(
              ViaAdmMedicAbrev.hashCode,
              $mrjc(
                  ViaAdmMedicFlgHab.hashCode,
                  $mrjc(
                      StatusId.hashCode,
                      $mrjc(
                          UsuId.hashCode,
                          $mrjc(
                              createdAt.hashCode,
                              $mrjc(updatedAt.hashCode,
                                  deletedAt.hashCode)))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is ViaAdmMedic &&
          other.ViaAdmMedicId == ViaAdmMedicId &&
          other.ViaAdmMedicDesc == ViaAdmMedicDesc &&
          other.ViaAdmMedicAbrev == ViaAdmMedicAbrev &&
          other.ViaAdmMedicFlgHab == ViaAdmMedicFlgHab &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableViaAdmMedicCompanion extends UpdateCompanion<ViaAdmMedic> {
  final Value<int> ViaAdmMedicId;
  final Value<String> ViaAdmMedicDesc;
  final Value<String> ViaAdmMedicAbrev;
  final Value<int> ViaAdmMedicFlgHab;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableViaAdmMedicCompanion({
    this.ViaAdmMedicId = const Value.absent(),
    this.ViaAdmMedicDesc = const Value.absent(),
    this.ViaAdmMedicAbrev = const Value.absent(),
    this.ViaAdmMedicFlgHab = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableViaAdmMedicCompanion copyWith(
      {Value<int> ViaAdmMedicId,
      Value<String> ViaAdmMedicDesc,
      Value<String> ViaAdmMedicAbrev,
      Value<int> ViaAdmMedicFlgHab,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableViaAdmMedicCompanion(
      ViaAdmMedicId: ViaAdmMedicId ?? this.ViaAdmMedicId,
      ViaAdmMedicDesc: ViaAdmMedicDesc ?? this.ViaAdmMedicDesc,
      ViaAdmMedicAbrev: ViaAdmMedicAbrev ?? this.ViaAdmMedicAbrev,
      ViaAdmMedicFlgHab: ViaAdmMedicFlgHab ?? this.ViaAdmMedicFlgHab,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableViaAdmMedicTable extends TableViaAdmMedic
    with TableInfo<$TableViaAdmMedicTable, ViaAdmMedic> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableViaAdmMedicTable(this._db, [this._alias]);
  final VerificationMeta _ViaAdmMedicIdMeta =
      const VerificationMeta('ViaAdmMedicId');
  GeneratedIntColumn _ViaAdmMedicId;
  @override
  GeneratedIntColumn get ViaAdmMedicId =>
      _ViaAdmMedicId ??= _constructViaAdmMedicId();
  GeneratedIntColumn _constructViaAdmMedicId() {
    return GeneratedIntColumn('via_adm_medic_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _ViaAdmMedicDescMeta =
      const VerificationMeta('ViaAdmMedicDesc');
  GeneratedTextColumn _ViaAdmMedicDesc;
  @override
  GeneratedTextColumn get ViaAdmMedicDesc =>
      _ViaAdmMedicDesc ??= _constructViaAdmMedicDesc();
  GeneratedTextColumn _constructViaAdmMedicDesc() {
    return GeneratedTextColumn(
      'via_adm_medic_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ViaAdmMedicAbrevMeta =
      const VerificationMeta('ViaAdmMedicAbrev');
  GeneratedTextColumn _ViaAdmMedicAbrev;
  @override
  GeneratedTextColumn get ViaAdmMedicAbrev =>
      _ViaAdmMedicAbrev ??= _constructViaAdmMedicAbrev();
  GeneratedTextColumn _constructViaAdmMedicAbrev() {
    return GeneratedTextColumn(
      'via_adm_medic_abrev',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ViaAdmMedicFlgHabMeta =
      const VerificationMeta('ViaAdmMedicFlgHab');
  GeneratedIntColumn _ViaAdmMedicFlgHab;
  @override
  GeneratedIntColumn get ViaAdmMedicFlgHab =>
      _ViaAdmMedicFlgHab ??= _constructViaAdmMedicFlgHab();
  GeneratedIntColumn _constructViaAdmMedicFlgHab() {
    return GeneratedIntColumn(
      'via_adm_medic_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        ViaAdmMedicId,
        ViaAdmMedicDesc,
        ViaAdmMedicAbrev,
        ViaAdmMedicFlgHab,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableViaAdmMedicTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_via_adm_medic';
  @override
  final String actualTableName = 'table_via_adm_medic';
  @override
  VerificationContext validateIntegrity(TableViaAdmMedicCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.ViaAdmMedicId.present) {
      context.handle(
          _ViaAdmMedicIdMeta,
          ViaAdmMedicId.isAcceptableValue(
              d.ViaAdmMedicId.value, _ViaAdmMedicIdMeta));
    } else if (ViaAdmMedicId.isRequired && isInserting) {
      context.missing(_ViaAdmMedicIdMeta);
    }
    if (d.ViaAdmMedicDesc.present) {
      context.handle(
          _ViaAdmMedicDescMeta,
          ViaAdmMedicDesc.isAcceptableValue(
              d.ViaAdmMedicDesc.value, _ViaAdmMedicDescMeta));
    } else if (ViaAdmMedicDesc.isRequired && isInserting) {
      context.missing(_ViaAdmMedicDescMeta);
    }
    if (d.ViaAdmMedicAbrev.present) {
      context.handle(
          _ViaAdmMedicAbrevMeta,
          ViaAdmMedicAbrev.isAcceptableValue(
              d.ViaAdmMedicAbrev.value, _ViaAdmMedicAbrevMeta));
    } else if (ViaAdmMedicAbrev.isRequired && isInserting) {
      context.missing(_ViaAdmMedicAbrevMeta);
    }
    if (d.ViaAdmMedicFlgHab.present) {
      context.handle(
          _ViaAdmMedicFlgHabMeta,
          ViaAdmMedicFlgHab.isAcceptableValue(
              d.ViaAdmMedicFlgHab.value, _ViaAdmMedicFlgHabMeta));
    } else if (ViaAdmMedicFlgHab.isRequired && isInserting) {
      context.missing(_ViaAdmMedicFlgHabMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ViaAdmMedicId};
  @override
  ViaAdmMedic map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ViaAdmMedic.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableViaAdmMedicCompanion d) {
    final map = <String, Variable>{};
    if (d.ViaAdmMedicId.present) {
      map['via_adm_medic_id'] = Variable<int, IntType>(d.ViaAdmMedicId.value);
    }
    if (d.ViaAdmMedicDesc.present) {
      map['via_adm_medic_desc'] =
          Variable<String, StringType>(d.ViaAdmMedicDesc.value);
    }
    if (d.ViaAdmMedicAbrev.present) {
      map['via_adm_medic_abrev'] =
          Variable<String, StringType>(d.ViaAdmMedicAbrev.value);
    }
    if (d.ViaAdmMedicFlgHab.present) {
      map['via_adm_medic_flg_hab'] =
          Variable<int, IntType>(d.ViaAdmMedicFlgHab.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableViaAdmMedicTable createAlias(String alias) {
    return $TableViaAdmMedicTable(_db, alias);
  }
}

class ActAsist extends DataClass implements Insertable<ActAsist> {
  final int ActAsistId;
  final String ActAsistDesc;
  final String ActAsistAbrev;
  final int TipActAsistId;
  final int ActAsistFlgHab;
  final int ActAsistTipDat;
  final int ActAsistValMin;
  final int ActAsistValMax;
  final int UnidMedId;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  ActAsist(
      {@required this.ActAsistId,
      @required this.ActAsistDesc,
      @required this.ActAsistAbrev,
      @required this.TipActAsistId,
      @required this.ActAsistFlgHab,
      @required this.ActAsistTipDat,
      @required this.ActAsistValMin,
      @required this.ActAsistValMax,
      @required this.UnidMedId,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory ActAsist.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return ActAsist(
      ActAsistId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_id']),
      ActAsistDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_desc']),
      ActAsistAbrev: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_abrev']),
      TipActAsistId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tip_act_asist_id']),
      ActAsistFlgHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_flg_hab']),
      ActAsistTipDat: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_tip_dat']),
      ActAsistValMin: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_val_min']),
      ActAsistValMax: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_val_max']),
      UnidMedId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_id']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory ActAsist.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return ActAsist(
      ActAsistId: serializer.fromJson<int>(json['ActAsistId']),
      ActAsistDesc: serializer.fromJson<String>(json['ActAsistDesc']),
      ActAsistAbrev: serializer.fromJson<String>(json['ActAsistAbrev']),
      TipActAsistId: serializer.fromJson<int>(json['TipActAsistId']),
      ActAsistFlgHab: serializer.fromJson<int>(json['ActAsistFlgHab']),
      ActAsistTipDat: serializer.fromJson<int>(json['ActAsistTipDat']),
      ActAsistValMin: serializer.fromJson<int>(json['ActAsistValMin']),
      ActAsistValMax: serializer.fromJson<int>(json['ActAsistValMax']),
      UnidMedId: serializer.fromJson<int>(json['UnidMedId']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'ActAsistId': serializer.toJson<int>(ActAsistId),
      'ActAsistDesc': serializer.toJson<String>(ActAsistDesc),
      'ActAsistAbrev': serializer.toJson<String>(ActAsistAbrev),
      'TipActAsistId': serializer.toJson<int>(TipActAsistId),
      'ActAsistFlgHab': serializer.toJson<int>(ActAsistFlgHab),
      'ActAsistTipDat': serializer.toJson<int>(ActAsistTipDat),
      'ActAsistValMin': serializer.toJson<int>(ActAsistValMin),
      'ActAsistValMax': serializer.toJson<int>(ActAsistValMax),
      'UnidMedId': serializer.toJson<int>(UnidMedId),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<ActAsist>>(bool nullToAbsent) {
    return TableActAsistCompanion(
      ActAsistId: ActAsistId == null && nullToAbsent
          ? const Value.absent()
          : Value(ActAsistId),
      ActAsistDesc: ActAsistDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(ActAsistDesc),
      ActAsistAbrev: ActAsistAbrev == null && nullToAbsent
          ? const Value.absent()
          : Value(ActAsistAbrev),
      TipActAsistId: TipActAsistId == null && nullToAbsent
          ? const Value.absent()
          : Value(TipActAsistId),
      ActAsistFlgHab: ActAsistFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(ActAsistFlgHab),
      ActAsistTipDat: ActAsistTipDat == null && nullToAbsent
          ? const Value.absent()
          : Value(ActAsistTipDat),
      ActAsistValMin: ActAsistValMin == null && nullToAbsent
          ? const Value.absent()
          : Value(ActAsistValMin),
      ActAsistValMax: ActAsistValMax == null && nullToAbsent
          ? const Value.absent()
          : Value(ActAsistValMax),
      UnidMedId: UnidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(UnidMedId),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  ActAsist copyWith(
          {int ActAsistId,
          String ActAsistDesc,
          String ActAsistAbrev,
          int TipActAsistId,
          int ActAsistFlgHab,
          int ActAsistTipDat,
          int ActAsistValMin,
          int ActAsistValMax,
          int UnidMedId,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      ActAsist(
        ActAsistId: ActAsistId ?? this.ActAsistId,
        ActAsistDesc: ActAsistDesc ?? this.ActAsistDesc,
        ActAsistAbrev: ActAsistAbrev ?? this.ActAsistAbrev,
        TipActAsistId: TipActAsistId ?? this.TipActAsistId,
        ActAsistFlgHab: ActAsistFlgHab ?? this.ActAsistFlgHab,
        ActAsistTipDat: ActAsistTipDat ?? this.ActAsistTipDat,
        ActAsistValMin: ActAsistValMin ?? this.ActAsistValMin,
        ActAsistValMax: ActAsistValMax ?? this.ActAsistValMax,
        UnidMedId: UnidMedId ?? this.UnidMedId,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ActAsist(')
          ..write('ActAsistId: $ActAsistId, ')
          ..write('ActAsistDesc: $ActAsistDesc, ')
          ..write('ActAsistAbrev: $ActAsistAbrev, ')
          ..write('TipActAsistId: $TipActAsistId, ')
          ..write('ActAsistFlgHab: $ActAsistFlgHab, ')
          ..write('ActAsistTipDat: $ActAsistTipDat, ')
          ..write('ActAsistValMin: $ActAsistValMin, ')
          ..write('ActAsistValMax: $ActAsistValMax, ')
          ..write('UnidMedId: $UnidMedId, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      ActAsistId.hashCode,
      $mrjc(
          ActAsistDesc.hashCode,
          $mrjc(
              ActAsistAbrev.hashCode,
              $mrjc(
                  TipActAsistId.hashCode,
                  $mrjc(
                      ActAsistFlgHab.hashCode,
                      $mrjc(
                          ActAsistTipDat.hashCode,
                          $mrjc(
                              ActAsistValMin.hashCode,
                              $mrjc(
                                  ActAsistValMax.hashCode,
                                  $mrjc(
                                      UnidMedId.hashCode,
                                      $mrjc(
                                          StatusId.hashCode,
                                          $mrjc(
                                              UsuId.hashCode,
                                              $mrjc(
                                                  createdAt.hashCode,
                                                  $mrjc(
                                                      updatedAt.hashCode,
                                                      deletedAt
                                                          .hashCode))))))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is ActAsist &&
          other.ActAsistId == ActAsistId &&
          other.ActAsistDesc == ActAsistDesc &&
          other.ActAsistAbrev == ActAsistAbrev &&
          other.TipActAsistId == TipActAsistId &&
          other.ActAsistFlgHab == ActAsistFlgHab &&
          other.ActAsistTipDat == ActAsistTipDat &&
          other.ActAsistValMin == ActAsistValMin &&
          other.ActAsistValMax == ActAsistValMax &&
          other.UnidMedId == UnidMedId &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableActAsistCompanion extends UpdateCompanion<ActAsist> {
  final Value<int> ActAsistId;
  final Value<String> ActAsistDesc;
  final Value<String> ActAsistAbrev;
  final Value<int> TipActAsistId;
  final Value<int> ActAsistFlgHab;
  final Value<int> ActAsistTipDat;
  final Value<int> ActAsistValMin;
  final Value<int> ActAsistValMax;
  final Value<int> UnidMedId;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableActAsistCompanion({
    this.ActAsistId = const Value.absent(),
    this.ActAsistDesc = const Value.absent(),
    this.ActAsistAbrev = const Value.absent(),
    this.TipActAsistId = const Value.absent(),
    this.ActAsistFlgHab = const Value.absent(),
    this.ActAsistTipDat = const Value.absent(),
    this.ActAsistValMin = const Value.absent(),
    this.ActAsistValMax = const Value.absent(),
    this.UnidMedId = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableActAsistCompanion copyWith(
      {Value<int> ActAsistId,
      Value<String> ActAsistDesc,
      Value<String> ActAsistAbrev,
      Value<int> TipActAsistId,
      Value<int> ActAsistFlgHab,
      Value<int> ActAsistTipDat,
      Value<int> ActAsistValMin,
      Value<int> ActAsistValMax,
      Value<int> UnidMedId,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableActAsistCompanion(
      ActAsistId: ActAsistId ?? this.ActAsistId,
      ActAsistDesc: ActAsistDesc ?? this.ActAsistDesc,
      ActAsistAbrev: ActAsistAbrev ?? this.ActAsistAbrev,
      TipActAsistId: TipActAsistId ?? this.TipActAsistId,
      ActAsistFlgHab: ActAsistFlgHab ?? this.ActAsistFlgHab,
      ActAsistTipDat: ActAsistTipDat ?? this.ActAsistTipDat,
      ActAsistValMin: ActAsistValMin ?? this.ActAsistValMin,
      ActAsistValMax: ActAsistValMax ?? this.ActAsistValMax,
      UnidMedId: UnidMedId ?? this.UnidMedId,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableActAsistTable extends TableActAsist
    with TableInfo<$TableActAsistTable, ActAsist> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableActAsistTable(this._db, [this._alias]);
  final VerificationMeta _ActAsistIdMeta = const VerificationMeta('ActAsistId');
  GeneratedIntColumn _ActAsistId;
  @override
  GeneratedIntColumn get ActAsistId => _ActAsistId ??= _constructActAsistId();
  GeneratedIntColumn _constructActAsistId() {
    return GeneratedIntColumn('act_asist_id', $tableName, false,
        hasAutoIncrement: true,
        declaredAsPrimaryKey: true,
        $customConstraints: 'REFERENCES TipActAsist(TipActAsistId)');
  }

  final VerificationMeta _ActAsistDescMeta =
      const VerificationMeta('ActAsistDesc');
  GeneratedTextColumn _ActAsistDesc;
  @override
  GeneratedTextColumn get ActAsistDesc =>
      _ActAsistDesc ??= _constructActAsistDesc();
  GeneratedTextColumn _constructActAsistDesc() {
    return GeneratedTextColumn(
      'act_asist_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ActAsistAbrevMeta =
      const VerificationMeta('ActAsistAbrev');
  GeneratedTextColumn _ActAsistAbrev;
  @override
  GeneratedTextColumn get ActAsistAbrev =>
      _ActAsistAbrev ??= _constructActAsistAbrev();
  GeneratedTextColumn _constructActAsistAbrev() {
    return GeneratedTextColumn(
      'act_asist_abrev',
      $tableName,
      false,
    );
  }

  final VerificationMeta _TipActAsistIdMeta =
      const VerificationMeta('TipActAsistId');
  GeneratedIntColumn _TipActAsistId;
  @override
  GeneratedIntColumn get TipActAsistId =>
      _TipActAsistId ??= _constructTipActAsistId();
  GeneratedIntColumn _constructTipActAsistId() {
    return GeneratedIntColumn(
      'tip_act_asist_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ActAsistFlgHabMeta =
      const VerificationMeta('ActAsistFlgHab');
  GeneratedIntColumn _ActAsistFlgHab;
  @override
  GeneratedIntColumn get ActAsistFlgHab =>
      _ActAsistFlgHab ??= _constructActAsistFlgHab();
  GeneratedIntColumn _constructActAsistFlgHab() {
    return GeneratedIntColumn(
      'act_asist_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ActAsistTipDatMeta =
      const VerificationMeta('ActAsistTipDat');
  GeneratedIntColumn _ActAsistTipDat;
  @override
  GeneratedIntColumn get ActAsistTipDat =>
      _ActAsistTipDat ??= _constructActAsistTipDat();
  GeneratedIntColumn _constructActAsistTipDat() {
    return GeneratedIntColumn(
      'act_asist_tip_dat',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ActAsistValMinMeta =
      const VerificationMeta('ActAsistValMin');
  GeneratedIntColumn _ActAsistValMin;
  @override
  GeneratedIntColumn get ActAsistValMin =>
      _ActAsistValMin ??= _constructActAsistValMin();
  GeneratedIntColumn _constructActAsistValMin() {
    return GeneratedIntColumn(
      'act_asist_val_min',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ActAsistValMaxMeta =
      const VerificationMeta('ActAsistValMax');
  GeneratedIntColumn _ActAsistValMax;
  @override
  GeneratedIntColumn get ActAsistValMax =>
      _ActAsistValMax ??= _constructActAsistValMax();
  GeneratedIntColumn _constructActAsistValMax() {
    return GeneratedIntColumn(
      'act_asist_val_max',
      $tableName,
      false,
    );
  }

  final VerificationMeta _UnidMedIdMeta = const VerificationMeta('UnidMedId');
  GeneratedIntColumn _UnidMedId;
  @override
  GeneratedIntColumn get UnidMedId => _UnidMedId ??= _constructUnidMedId();
  GeneratedIntColumn _constructUnidMedId() {
    return GeneratedIntColumn('unid_med_id', $tableName, false,
        $customConstraints: 'REFERENCES UnidMed(UnidMedId)');
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        ActAsistId,
        ActAsistDesc,
        ActAsistAbrev,
        TipActAsistId,
        ActAsistFlgHab,
        ActAsistTipDat,
        ActAsistValMin,
        ActAsistValMax,
        UnidMedId,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableActAsistTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_act_asist';
  @override
  final String actualTableName = 'table_act_asist';
  @override
  VerificationContext validateIntegrity(TableActAsistCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.ActAsistId.present) {
      context.handle(_ActAsistIdMeta,
          ActAsistId.isAcceptableValue(d.ActAsistId.value, _ActAsistIdMeta));
    } else if (ActAsistId.isRequired && isInserting) {
      context.missing(_ActAsistIdMeta);
    }
    if (d.ActAsistDesc.present) {
      context.handle(
          _ActAsistDescMeta,
          ActAsistDesc.isAcceptableValue(
              d.ActAsistDesc.value, _ActAsistDescMeta));
    } else if (ActAsistDesc.isRequired && isInserting) {
      context.missing(_ActAsistDescMeta);
    }
    if (d.ActAsistAbrev.present) {
      context.handle(
          _ActAsistAbrevMeta,
          ActAsistAbrev.isAcceptableValue(
              d.ActAsistAbrev.value, _ActAsistAbrevMeta));
    } else if (ActAsistAbrev.isRequired && isInserting) {
      context.missing(_ActAsistAbrevMeta);
    }
    if (d.TipActAsistId.present) {
      context.handle(
          _TipActAsistIdMeta,
          TipActAsistId.isAcceptableValue(
              d.TipActAsistId.value, _TipActAsistIdMeta));
    } else if (TipActAsistId.isRequired && isInserting) {
      context.missing(_TipActAsistIdMeta);
    }
    if (d.ActAsistFlgHab.present) {
      context.handle(
          _ActAsistFlgHabMeta,
          ActAsistFlgHab.isAcceptableValue(
              d.ActAsistFlgHab.value, _ActAsistFlgHabMeta));
    } else if (ActAsistFlgHab.isRequired && isInserting) {
      context.missing(_ActAsistFlgHabMeta);
    }
    if (d.ActAsistTipDat.present) {
      context.handle(
          _ActAsistTipDatMeta,
          ActAsistTipDat.isAcceptableValue(
              d.ActAsistTipDat.value, _ActAsistTipDatMeta));
    } else if (ActAsistTipDat.isRequired && isInserting) {
      context.missing(_ActAsistTipDatMeta);
    }
    if (d.ActAsistValMin.present) {
      context.handle(
          _ActAsistValMinMeta,
          ActAsistValMin.isAcceptableValue(
              d.ActAsistValMin.value, _ActAsistValMinMeta));
    } else if (ActAsistValMin.isRequired && isInserting) {
      context.missing(_ActAsistValMinMeta);
    }
    if (d.ActAsistValMax.present) {
      context.handle(
          _ActAsistValMaxMeta,
          ActAsistValMax.isAcceptableValue(
              d.ActAsistValMax.value, _ActAsistValMaxMeta));
    } else if (ActAsistValMax.isRequired && isInserting) {
      context.missing(_ActAsistValMaxMeta);
    }
    if (d.UnidMedId.present) {
      context.handle(_UnidMedIdMeta,
          UnidMedId.isAcceptableValue(d.UnidMedId.value, _UnidMedIdMeta));
    } else if (UnidMedId.isRequired && isInserting) {
      context.missing(_UnidMedIdMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {ActAsistId};
  @override
  ActAsist map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ActAsist.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableActAsistCompanion d) {
    final map = <String, Variable>{};
    if (d.ActAsistId.present) {
      map['act_asist_id'] = Variable<int, IntType>(d.ActAsistId.value);
    }
    if (d.ActAsistDesc.present) {
      map['act_asist_desc'] =
          Variable<String, StringType>(d.ActAsistDesc.value);
    }
    if (d.ActAsistAbrev.present) {
      map['act_asist_abrev'] =
          Variable<String, StringType>(d.ActAsistAbrev.value);
    }
    if (d.TipActAsistId.present) {
      map['tip_act_asist_id'] = Variable<int, IntType>(d.TipActAsistId.value);
    }
    if (d.ActAsistFlgHab.present) {
      map['act_asist_flg_hab'] = Variable<int, IntType>(d.ActAsistFlgHab.value);
    }
    if (d.ActAsistTipDat.present) {
      map['act_asist_tip_dat'] = Variable<int, IntType>(d.ActAsistTipDat.value);
    }
    if (d.ActAsistValMin.present) {
      map['act_asist_val_min'] = Variable<int, IntType>(d.ActAsistValMin.value);
    }
    if (d.ActAsistValMax.present) {
      map['act_asist_val_max'] = Variable<int, IntType>(d.ActAsistValMax.value);
    }
    if (d.UnidMedId.present) {
      map['unid_med_id'] = Variable<int, IntType>(d.UnidMedId.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableActAsistTable createAlias(String alias) {
    return $TableActAsistTable(_db, alias);
  }
}

class AtnClin extends DataClass implements Insertable<AtnClin> {
  final int AntClinId;
  final String AntClinDesc;
  final int AntClinFlgHab;
  final int TipAntClinId;
  final int AntClinAlert;
  final int AntClinAlertDsc;
  final String AntClinSexo;
  final int AntClinFlgFactRiesg;
  final int AntCliFlgHabRep;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  AtnClin(
      {@required this.AntClinId,
      @required this.AntClinDesc,
      @required this.AntClinFlgHab,
      @required this.TipAntClinId,
      @required this.AntClinAlert,
      @required this.AntClinAlertDsc,
      @required this.AntClinSexo,
      @required this.AntClinFlgFactRiesg,
      @required this.AntCliFlgHabRep,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory AtnClin.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return AtnClin(
      AntClinId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_id']),
      AntClinDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_desc']),
      AntClinFlgHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_flg_hab']),
      TipAntClinId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tip_ant_clin_id']),
      AntClinAlert: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_alert']),
      AntClinAlertDsc: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ant_clin_alert_dsc']),
      AntClinSexo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_sexo']),
      AntClinFlgFactRiesg: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ant_clin_flg_fact_riesg']),
      AntCliFlgHabRep: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ant_cli_flg_hab_rep']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory AtnClin.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return AtnClin(
      AntClinId: serializer.fromJson<int>(json['AntClinId']),
      AntClinDesc: serializer.fromJson<String>(json['AntClinDesc']),
      AntClinFlgHab: serializer.fromJson<int>(json['AntClinFlgHab']),
      TipAntClinId: serializer.fromJson<int>(json['TipAntClinId']),
      AntClinAlert: serializer.fromJson<int>(json['AntClinAlert']),
      AntClinAlertDsc: serializer.fromJson<int>(json['AntClinAlertDsc']),
      AntClinSexo: serializer.fromJson<String>(json['AntClinSexo']),
      AntClinFlgFactRiesg:
          serializer.fromJson<int>(json['AntClinFlgFactRiesg']),
      AntCliFlgHabRep: serializer.fromJson<int>(json['AntCliFlgHabRep']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'AntClinId': serializer.toJson<int>(AntClinId),
      'AntClinDesc': serializer.toJson<String>(AntClinDesc),
      'AntClinFlgHab': serializer.toJson<int>(AntClinFlgHab),
      'TipAntClinId': serializer.toJson<int>(TipAntClinId),
      'AntClinAlert': serializer.toJson<int>(AntClinAlert),
      'AntClinAlertDsc': serializer.toJson<int>(AntClinAlertDsc),
      'AntClinSexo': serializer.toJson<String>(AntClinSexo),
      'AntClinFlgFactRiesg': serializer.toJson<int>(AntClinFlgFactRiesg),
      'AntCliFlgHabRep': serializer.toJson<int>(AntCliFlgHabRep),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<AtnClin>>(bool nullToAbsent) {
    return TableAtnClinCompanion(
      AntClinId: AntClinId == null && nullToAbsent
          ? const Value.absent()
          : Value(AntClinId),
      AntClinDesc: AntClinDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(AntClinDesc),
      AntClinFlgHab: AntClinFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(AntClinFlgHab),
      TipAntClinId: TipAntClinId == null && nullToAbsent
          ? const Value.absent()
          : Value(TipAntClinId),
      AntClinAlert: AntClinAlert == null && nullToAbsent
          ? const Value.absent()
          : Value(AntClinAlert),
      AntClinAlertDsc: AntClinAlertDsc == null && nullToAbsent
          ? const Value.absent()
          : Value(AntClinAlertDsc),
      AntClinSexo: AntClinSexo == null && nullToAbsent
          ? const Value.absent()
          : Value(AntClinSexo),
      AntClinFlgFactRiesg: AntClinFlgFactRiesg == null && nullToAbsent
          ? const Value.absent()
          : Value(AntClinFlgFactRiesg),
      AntCliFlgHabRep: AntCliFlgHabRep == null && nullToAbsent
          ? const Value.absent()
          : Value(AntCliFlgHabRep),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  AtnClin copyWith(
          {int AntClinId,
          String AntClinDesc,
          int AntClinFlgHab,
          int TipAntClinId,
          int AntClinAlert,
          int AntClinAlertDsc,
          String AntClinSexo,
          int AntClinFlgFactRiesg,
          int AntCliFlgHabRep,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      AtnClin(
        AntClinId: AntClinId ?? this.AntClinId,
        AntClinDesc: AntClinDesc ?? this.AntClinDesc,
        AntClinFlgHab: AntClinFlgHab ?? this.AntClinFlgHab,
        TipAntClinId: TipAntClinId ?? this.TipAntClinId,
        AntClinAlert: AntClinAlert ?? this.AntClinAlert,
        AntClinAlertDsc: AntClinAlertDsc ?? this.AntClinAlertDsc,
        AntClinSexo: AntClinSexo ?? this.AntClinSexo,
        AntClinFlgFactRiesg: AntClinFlgFactRiesg ?? this.AntClinFlgFactRiesg,
        AntCliFlgHabRep: AntCliFlgHabRep ?? this.AntCliFlgHabRep,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('AtnClin(')
          ..write('AntClinId: $AntClinId, ')
          ..write('AntClinDesc: $AntClinDesc, ')
          ..write('AntClinFlgHab: $AntClinFlgHab, ')
          ..write('TipAntClinId: $TipAntClinId, ')
          ..write('AntClinAlert: $AntClinAlert, ')
          ..write('AntClinAlertDsc: $AntClinAlertDsc, ')
          ..write('AntClinSexo: $AntClinSexo, ')
          ..write('AntClinFlgFactRiesg: $AntClinFlgFactRiesg, ')
          ..write('AntCliFlgHabRep: $AntCliFlgHabRep, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      AntClinId.hashCode,
      $mrjc(
          AntClinDesc.hashCode,
          $mrjc(
              AntClinFlgHab.hashCode,
              $mrjc(
                  TipAntClinId.hashCode,
                  $mrjc(
                      AntClinAlert.hashCode,
                      $mrjc(
                          AntClinAlertDsc.hashCode,
                          $mrjc(
                              AntClinSexo.hashCode,
                              $mrjc(
                                  AntClinFlgFactRiesg.hashCode,
                                  $mrjc(
                                      AntCliFlgHabRep.hashCode,
                                      $mrjc(
                                          StatusId.hashCode,
                                          $mrjc(
                                              UsuId.hashCode,
                                              $mrjc(
                                                  createdAt.hashCode,
                                                  $mrjc(
                                                      updatedAt.hashCode,
                                                      deletedAt
                                                          .hashCode))))))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is AtnClin &&
          other.AntClinId == AntClinId &&
          other.AntClinDesc == AntClinDesc &&
          other.AntClinFlgHab == AntClinFlgHab &&
          other.TipAntClinId == TipAntClinId &&
          other.AntClinAlert == AntClinAlert &&
          other.AntClinAlertDsc == AntClinAlertDsc &&
          other.AntClinSexo == AntClinSexo &&
          other.AntClinFlgFactRiesg == AntClinFlgFactRiesg &&
          other.AntCliFlgHabRep == AntCliFlgHabRep &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableAtnClinCompanion extends UpdateCompanion<AtnClin> {
  final Value<int> AntClinId;
  final Value<String> AntClinDesc;
  final Value<int> AntClinFlgHab;
  final Value<int> TipAntClinId;
  final Value<int> AntClinAlert;
  final Value<int> AntClinAlertDsc;
  final Value<String> AntClinSexo;
  final Value<int> AntClinFlgFactRiesg;
  final Value<int> AntCliFlgHabRep;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableAtnClinCompanion({
    this.AntClinId = const Value.absent(),
    this.AntClinDesc = const Value.absent(),
    this.AntClinFlgHab = const Value.absent(),
    this.TipAntClinId = const Value.absent(),
    this.AntClinAlert = const Value.absent(),
    this.AntClinAlertDsc = const Value.absent(),
    this.AntClinSexo = const Value.absent(),
    this.AntClinFlgFactRiesg = const Value.absent(),
    this.AntCliFlgHabRep = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableAtnClinCompanion copyWith(
      {Value<int> AntClinId,
      Value<String> AntClinDesc,
      Value<int> AntClinFlgHab,
      Value<int> TipAntClinId,
      Value<int> AntClinAlert,
      Value<int> AntClinAlertDsc,
      Value<String> AntClinSexo,
      Value<int> AntClinFlgFactRiesg,
      Value<int> AntCliFlgHabRep,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableAtnClinCompanion(
      AntClinId: AntClinId ?? this.AntClinId,
      AntClinDesc: AntClinDesc ?? this.AntClinDesc,
      AntClinFlgHab: AntClinFlgHab ?? this.AntClinFlgHab,
      TipAntClinId: TipAntClinId ?? this.TipAntClinId,
      AntClinAlert: AntClinAlert ?? this.AntClinAlert,
      AntClinAlertDsc: AntClinAlertDsc ?? this.AntClinAlertDsc,
      AntClinSexo: AntClinSexo ?? this.AntClinSexo,
      AntClinFlgFactRiesg: AntClinFlgFactRiesg ?? this.AntClinFlgFactRiesg,
      AntCliFlgHabRep: AntCliFlgHabRep ?? this.AntCliFlgHabRep,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableAtnClinTable extends TableAtnClin
    with TableInfo<$TableAtnClinTable, AtnClin> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableAtnClinTable(this._db, [this._alias]);
  final VerificationMeta _AntClinIdMeta = const VerificationMeta('AntClinId');
  GeneratedIntColumn _AntClinId;
  @override
  GeneratedIntColumn get AntClinId => _AntClinId ??= _constructAntClinId();
  GeneratedIntColumn _constructAntClinId() {
    return GeneratedIntColumn('ant_clin_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _AntClinDescMeta =
      const VerificationMeta('AntClinDesc');
  GeneratedTextColumn _AntClinDesc;
  @override
  GeneratedTextColumn get AntClinDesc =>
      _AntClinDesc ??= _constructAntClinDesc();
  GeneratedTextColumn _constructAntClinDesc() {
    return GeneratedTextColumn(
      'ant_clin_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _AntClinFlgHabMeta =
      const VerificationMeta('AntClinFlgHab');
  GeneratedIntColumn _AntClinFlgHab;
  @override
  GeneratedIntColumn get AntClinFlgHab =>
      _AntClinFlgHab ??= _constructAntClinFlgHab();
  GeneratedIntColumn _constructAntClinFlgHab() {
    return GeneratedIntColumn(
      'ant_clin_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _TipAntClinIdMeta =
      const VerificationMeta('TipAntClinId');
  GeneratedIntColumn _TipAntClinId;
  @override
  GeneratedIntColumn get TipAntClinId =>
      _TipAntClinId ??= _constructTipAntClinId();
  GeneratedIntColumn _constructTipAntClinId() {
    return GeneratedIntColumn(
      'tip_ant_clin_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _AntClinAlertMeta =
      const VerificationMeta('AntClinAlert');
  GeneratedIntColumn _AntClinAlert;
  @override
  GeneratedIntColumn get AntClinAlert =>
      _AntClinAlert ??= _constructAntClinAlert();
  GeneratedIntColumn _constructAntClinAlert() {
    return GeneratedIntColumn(
      'ant_clin_alert',
      $tableName,
      false,
    );
  }

  final VerificationMeta _AntClinAlertDscMeta =
      const VerificationMeta('AntClinAlertDsc');
  GeneratedIntColumn _AntClinAlertDsc;
  @override
  GeneratedIntColumn get AntClinAlertDsc =>
      _AntClinAlertDsc ??= _constructAntClinAlertDsc();
  GeneratedIntColumn _constructAntClinAlertDsc() {
    return GeneratedIntColumn(
      'ant_clin_alert_dsc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _AntClinSexoMeta =
      const VerificationMeta('AntClinSexo');
  GeneratedTextColumn _AntClinSexo;
  @override
  GeneratedTextColumn get AntClinSexo =>
      _AntClinSexo ??= _constructAntClinSexo();
  GeneratedTextColumn _constructAntClinSexo() {
    return GeneratedTextColumn(
      'ant_clin_sexo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _AntClinFlgFactRiesgMeta =
      const VerificationMeta('AntClinFlgFactRiesg');
  GeneratedIntColumn _AntClinFlgFactRiesg;
  @override
  GeneratedIntColumn get AntClinFlgFactRiesg =>
      _AntClinFlgFactRiesg ??= _constructAntClinFlgFactRiesg();
  GeneratedIntColumn _constructAntClinFlgFactRiesg() {
    return GeneratedIntColumn(
      'ant_clin_flg_fact_riesg',
      $tableName,
      false,
    );
  }

  final VerificationMeta _AntCliFlgHabRepMeta =
      const VerificationMeta('AntCliFlgHabRep');
  GeneratedIntColumn _AntCliFlgHabRep;
  @override
  GeneratedIntColumn get AntCliFlgHabRep =>
      _AntCliFlgHabRep ??= _constructAntCliFlgHabRep();
  GeneratedIntColumn _constructAntCliFlgHabRep() {
    return GeneratedIntColumn(
      'ant_cli_flg_hab_rep',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        AntClinId,
        AntClinDesc,
        AntClinFlgHab,
        TipAntClinId,
        AntClinAlert,
        AntClinAlertDsc,
        AntClinSexo,
        AntClinFlgFactRiesg,
        AntCliFlgHabRep,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableAtnClinTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_atn_clin';
  @override
  final String actualTableName = 'table_atn_clin';
  @override
  VerificationContext validateIntegrity(TableAtnClinCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.AntClinId.present) {
      context.handle(_AntClinIdMeta,
          AntClinId.isAcceptableValue(d.AntClinId.value, _AntClinIdMeta));
    } else if (AntClinId.isRequired && isInserting) {
      context.missing(_AntClinIdMeta);
    }
    if (d.AntClinDesc.present) {
      context.handle(_AntClinDescMeta,
          AntClinDesc.isAcceptableValue(d.AntClinDesc.value, _AntClinDescMeta));
    } else if (AntClinDesc.isRequired && isInserting) {
      context.missing(_AntClinDescMeta);
    }
    if (d.AntClinFlgHab.present) {
      context.handle(
          _AntClinFlgHabMeta,
          AntClinFlgHab.isAcceptableValue(
              d.AntClinFlgHab.value, _AntClinFlgHabMeta));
    } else if (AntClinFlgHab.isRequired && isInserting) {
      context.missing(_AntClinFlgHabMeta);
    }
    if (d.TipAntClinId.present) {
      context.handle(
          _TipAntClinIdMeta,
          TipAntClinId.isAcceptableValue(
              d.TipAntClinId.value, _TipAntClinIdMeta));
    } else if (TipAntClinId.isRequired && isInserting) {
      context.missing(_TipAntClinIdMeta);
    }
    if (d.AntClinAlert.present) {
      context.handle(
          _AntClinAlertMeta,
          AntClinAlert.isAcceptableValue(
              d.AntClinAlert.value, _AntClinAlertMeta));
    } else if (AntClinAlert.isRequired && isInserting) {
      context.missing(_AntClinAlertMeta);
    }
    if (d.AntClinAlertDsc.present) {
      context.handle(
          _AntClinAlertDscMeta,
          AntClinAlertDsc.isAcceptableValue(
              d.AntClinAlertDsc.value, _AntClinAlertDscMeta));
    } else if (AntClinAlertDsc.isRequired && isInserting) {
      context.missing(_AntClinAlertDscMeta);
    }
    if (d.AntClinSexo.present) {
      context.handle(_AntClinSexoMeta,
          AntClinSexo.isAcceptableValue(d.AntClinSexo.value, _AntClinSexoMeta));
    } else if (AntClinSexo.isRequired && isInserting) {
      context.missing(_AntClinSexoMeta);
    }
    if (d.AntClinFlgFactRiesg.present) {
      context.handle(
          _AntClinFlgFactRiesgMeta,
          AntClinFlgFactRiesg.isAcceptableValue(
              d.AntClinFlgFactRiesg.value, _AntClinFlgFactRiesgMeta));
    } else if (AntClinFlgFactRiesg.isRequired && isInserting) {
      context.missing(_AntClinFlgFactRiesgMeta);
    }
    if (d.AntCliFlgHabRep.present) {
      context.handle(
          _AntCliFlgHabRepMeta,
          AntCliFlgHabRep.isAcceptableValue(
              d.AntCliFlgHabRep.value, _AntCliFlgHabRepMeta));
    } else if (AntCliFlgHabRep.isRequired && isInserting) {
      context.missing(_AntCliFlgHabRepMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {AntClinId};
  @override
  AtnClin map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AtnClin.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableAtnClinCompanion d) {
    final map = <String, Variable>{};
    if (d.AntClinId.present) {
      map['ant_clin_id'] = Variable<int, IntType>(d.AntClinId.value);
    }
    if (d.AntClinDesc.present) {
      map['ant_clin_desc'] = Variable<String, StringType>(d.AntClinDesc.value);
    }
    if (d.AntClinFlgHab.present) {
      map['ant_clin_flg_hab'] = Variable<int, IntType>(d.AntClinFlgHab.value);
    }
    if (d.TipAntClinId.present) {
      map['tip_ant_clin_id'] = Variable<int, IntType>(d.TipAntClinId.value);
    }
    if (d.AntClinAlert.present) {
      map['ant_clin_alert'] = Variable<int, IntType>(d.AntClinAlert.value);
    }
    if (d.AntClinAlertDsc.present) {
      map['ant_clin_alert_dsc'] =
          Variable<int, IntType>(d.AntClinAlertDsc.value);
    }
    if (d.AntClinSexo.present) {
      map['ant_clin_sexo'] = Variable<String, StringType>(d.AntClinSexo.value);
    }
    if (d.AntClinFlgFactRiesg.present) {
      map['ant_clin_flg_fact_riesg'] =
          Variable<int, IntType>(d.AntClinFlgFactRiesg.value);
    }
    if (d.AntCliFlgHabRep.present) {
      map['ant_cli_flg_hab_rep'] =
          Variable<int, IntType>(d.AntCliFlgHabRep.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableAtnClinTable createAlias(String alias) {
    return $TableAtnClinTable(_db, alias);
  }
}

class Drogas extends DataClass implements Insertable<Drogas> {
  final int DroId;
  final String DroDesc;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Drogas(
      {@required this.DroId,
      @required this.DroDesc,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory Drogas.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Drogas(
      DroId: intType.mapFromDatabaseResponse(data['${effectivePrefix}dro_id']),
      DroDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dro_desc']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory Drogas.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Drogas(
      DroId: serializer.fromJson<int>(json['DroId']),
      DroDesc: serializer.fromJson<String>(json['DroDesc']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'DroId': serializer.toJson<int>(DroId),
      'DroDesc': serializer.toJson<String>(DroDesc),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Drogas>>(bool nullToAbsent) {
    return TableDrogasCompanion(
      DroId:
          DroId == null && nullToAbsent ? const Value.absent() : Value(DroId),
      DroDesc: DroDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(DroDesc),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  Drogas copyWith(
          {int DroId,
          String DroDesc,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Drogas(
        DroId: DroId ?? this.DroId,
        DroDesc: DroDesc ?? this.DroDesc,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Drogas(')
          ..write('DroId: $DroId, ')
          ..write('DroDesc: $DroDesc, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      DroId.hashCode,
      $mrjc(
          DroDesc.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Drogas &&
          other.DroId == DroId &&
          other.DroDesc == DroDesc &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableDrogasCompanion extends UpdateCompanion<Drogas> {
  final Value<int> DroId;
  final Value<String> DroDesc;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableDrogasCompanion({
    this.DroId = const Value.absent(),
    this.DroDesc = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableDrogasCompanion copyWith(
      {Value<int> DroId,
      Value<String> DroDesc,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableDrogasCompanion(
      DroId: DroId ?? this.DroId,
      DroDesc: DroDesc ?? this.DroDesc,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableDrogasTable extends TableDrogas
    with TableInfo<$TableDrogasTable, Drogas> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableDrogasTable(this._db, [this._alias]);
  final VerificationMeta _DroIdMeta = const VerificationMeta('DroId');
  GeneratedIntColumn _DroId;
  @override
  GeneratedIntColumn get DroId => _DroId ??= _constructDroId();
  GeneratedIntColumn _constructDroId() {
    return GeneratedIntColumn('dro_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _DroDescMeta = const VerificationMeta('DroDesc');
  GeneratedTextColumn _DroDesc;
  @override
  GeneratedTextColumn get DroDesc => _DroDesc ??= _constructDroDesc();
  GeneratedTextColumn _constructDroDesc() {
    return GeneratedTextColumn(
      'dro_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [DroId, DroDesc, StatusId, UsuId, createdAt, updatedAt, deletedAt];
  @override
  $TableDrogasTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_drogas';
  @override
  final String actualTableName = 'table_drogas';
  @override
  VerificationContext validateIntegrity(TableDrogasCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.DroId.present) {
      context.handle(
          _DroIdMeta, DroId.isAcceptableValue(d.DroId.value, _DroIdMeta));
    } else if (DroId.isRequired && isInserting) {
      context.missing(_DroIdMeta);
    }
    if (d.DroDesc.present) {
      context.handle(_DroDescMeta,
          DroDesc.isAcceptableValue(d.DroDesc.value, _DroDescMeta));
    } else if (DroDesc.isRequired && isInserting) {
      context.missing(_DroDescMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {DroId};
  @override
  Drogas map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Drogas.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableDrogasCompanion d) {
    final map = <String, Variable>{};
    if (d.DroId.present) {
      map['dro_id'] = Variable<int, IntType>(d.DroId.value);
    }
    if (d.DroDesc.present) {
      map['dro_desc'] = Variable<String, StringType>(d.DroDesc.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableDrogasTable createAlias(String alias) {
    return $TableDrogasTable(_db, alias);
  }
}

class Farmacos extends DataClass implements Insertable<Farmacos> {
  final int FarId;
  final String FarNom;
  final int FarFlgHab;
  final String FarDrogComp;
  final int FarPresMedicId;
  final int FarDosCnt;
  final int FarDosUnidMedId;
  final int FarFlgEsSuero;
  final int FarFlgEsAdit;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Farmacos(
      {@required this.FarId,
      @required this.FarNom,
      @required this.FarFlgHab,
      @required this.FarDrogComp,
      @required this.FarPresMedicId,
      @required this.FarDosCnt,
      @required this.FarDosUnidMedId,
      @required this.FarFlgEsSuero,
      @required this.FarFlgEsAdit,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory Farmacos.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Farmacos(
      FarId: intType.mapFromDatabaseResponse(data['${effectivePrefix}far_id']),
      FarNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}far_nom']),
      FarFlgHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_flg_hab']),
      FarDrogComp: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_drog_comp']),
      FarPresMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_pres_medic_id']),
      FarDosCnt: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_dos_cnt']),
      FarDosUnidMedId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}far_dos_unid_med_id']),
      FarFlgEsSuero: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_flg_es_suero']),
      FarFlgEsAdit: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_flg_es_adit']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory Farmacos.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Farmacos(
      FarId: serializer.fromJson<int>(json['FarId']),
      FarNom: serializer.fromJson<String>(json['FarNom']),
      FarFlgHab: serializer.fromJson<int>(json['FarFlgHab']),
      FarDrogComp: serializer.fromJson<String>(json['FarDrogComp']),
      FarPresMedicId: serializer.fromJson<int>(json['FarPresMedicId']),
      FarDosCnt: serializer.fromJson<int>(json['FarDosCnt']),
      FarDosUnidMedId: serializer.fromJson<int>(json['FarDosUnidMedId']),
      FarFlgEsSuero: serializer.fromJson<int>(json['FarFlgEsSuero']),
      FarFlgEsAdit: serializer.fromJson<int>(json['FarFlgEsAdit']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'FarId': serializer.toJson<int>(FarId),
      'FarNom': serializer.toJson<String>(FarNom),
      'FarFlgHab': serializer.toJson<int>(FarFlgHab),
      'FarDrogComp': serializer.toJson<String>(FarDrogComp),
      'FarPresMedicId': serializer.toJson<int>(FarPresMedicId),
      'FarDosCnt': serializer.toJson<int>(FarDosCnt),
      'FarDosUnidMedId': serializer.toJson<int>(FarDosUnidMedId),
      'FarFlgEsSuero': serializer.toJson<int>(FarFlgEsSuero),
      'FarFlgEsAdit': serializer.toJson<int>(FarFlgEsAdit),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Farmacos>>(bool nullToAbsent) {
    return TableFarmacosCompanion(
      FarId:
          FarId == null && nullToAbsent ? const Value.absent() : Value(FarId),
      FarNom:
          FarNom == null && nullToAbsent ? const Value.absent() : Value(FarNom),
      FarFlgHab: FarFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(FarFlgHab),
      FarDrogComp: FarDrogComp == null && nullToAbsent
          ? const Value.absent()
          : Value(FarDrogComp),
      FarPresMedicId: FarPresMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(FarPresMedicId),
      FarDosCnt: FarDosCnt == null && nullToAbsent
          ? const Value.absent()
          : Value(FarDosCnt),
      FarDosUnidMedId: FarDosUnidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(FarDosUnidMedId),
      FarFlgEsSuero: FarFlgEsSuero == null && nullToAbsent
          ? const Value.absent()
          : Value(FarFlgEsSuero),
      FarFlgEsAdit: FarFlgEsAdit == null && nullToAbsent
          ? const Value.absent()
          : Value(FarFlgEsAdit),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  Farmacos copyWith(
          {int FarId,
          String FarNom,
          int FarFlgHab,
          String FarDrogComp,
          int FarPresMedicId,
          int FarDosCnt,
          int FarDosUnidMedId,
          int FarFlgEsSuero,
          int FarFlgEsAdit,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Farmacos(
        FarId: FarId ?? this.FarId,
        FarNom: FarNom ?? this.FarNom,
        FarFlgHab: FarFlgHab ?? this.FarFlgHab,
        FarDrogComp: FarDrogComp ?? this.FarDrogComp,
        FarPresMedicId: FarPresMedicId ?? this.FarPresMedicId,
        FarDosCnt: FarDosCnt ?? this.FarDosCnt,
        FarDosUnidMedId: FarDosUnidMedId ?? this.FarDosUnidMedId,
        FarFlgEsSuero: FarFlgEsSuero ?? this.FarFlgEsSuero,
        FarFlgEsAdit: FarFlgEsAdit ?? this.FarFlgEsAdit,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Farmacos(')
          ..write('FarId: $FarId, ')
          ..write('FarNom: $FarNom, ')
          ..write('FarFlgHab: $FarFlgHab, ')
          ..write('FarDrogComp: $FarDrogComp, ')
          ..write('FarPresMedicId: $FarPresMedicId, ')
          ..write('FarDosCnt: $FarDosCnt, ')
          ..write('FarDosUnidMedId: $FarDosUnidMedId, ')
          ..write('FarFlgEsSuero: $FarFlgEsSuero, ')
          ..write('FarFlgEsAdit: $FarFlgEsAdit, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      FarId.hashCode,
      $mrjc(
          FarNom.hashCode,
          $mrjc(
              FarFlgHab.hashCode,
              $mrjc(
                  FarDrogComp.hashCode,
                  $mrjc(
                      FarPresMedicId.hashCode,
                      $mrjc(
                          FarDosCnt.hashCode,
                          $mrjc(
                              FarDosUnidMedId.hashCode,
                              $mrjc(
                                  FarFlgEsSuero.hashCode,
                                  $mrjc(
                                      FarFlgEsAdit.hashCode,
                                      $mrjc(
                                          StatusId.hashCode,
                                          $mrjc(
                                              UsuId.hashCode,
                                              $mrjc(
                                                  createdAt.hashCode,
                                                  $mrjc(
                                                      updatedAt.hashCode,
                                                      deletedAt
                                                          .hashCode))))))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Farmacos &&
          other.FarId == FarId &&
          other.FarNom == FarNom &&
          other.FarFlgHab == FarFlgHab &&
          other.FarDrogComp == FarDrogComp &&
          other.FarPresMedicId == FarPresMedicId &&
          other.FarDosCnt == FarDosCnt &&
          other.FarDosUnidMedId == FarDosUnidMedId &&
          other.FarFlgEsSuero == FarFlgEsSuero &&
          other.FarFlgEsAdit == FarFlgEsAdit &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFarmacosCompanion extends UpdateCompanion<Farmacos> {
  final Value<int> FarId;
  final Value<String> FarNom;
  final Value<int> FarFlgHab;
  final Value<String> FarDrogComp;
  final Value<int> FarPresMedicId;
  final Value<int> FarDosCnt;
  final Value<int> FarDosUnidMedId;
  final Value<int> FarFlgEsSuero;
  final Value<int> FarFlgEsAdit;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFarmacosCompanion({
    this.FarId = const Value.absent(),
    this.FarNom = const Value.absent(),
    this.FarFlgHab = const Value.absent(),
    this.FarDrogComp = const Value.absent(),
    this.FarPresMedicId = const Value.absent(),
    this.FarDosCnt = const Value.absent(),
    this.FarDosUnidMedId = const Value.absent(),
    this.FarFlgEsSuero = const Value.absent(),
    this.FarFlgEsAdit = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFarmacosCompanion copyWith(
      {Value<int> FarId,
      Value<String> FarNom,
      Value<int> FarFlgHab,
      Value<String> FarDrogComp,
      Value<int> FarPresMedicId,
      Value<int> FarDosCnt,
      Value<int> FarDosUnidMedId,
      Value<int> FarFlgEsSuero,
      Value<int> FarFlgEsAdit,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFarmacosCompanion(
      FarId: FarId ?? this.FarId,
      FarNom: FarNom ?? this.FarNom,
      FarFlgHab: FarFlgHab ?? this.FarFlgHab,
      FarDrogComp: FarDrogComp ?? this.FarDrogComp,
      FarPresMedicId: FarPresMedicId ?? this.FarPresMedicId,
      FarDosCnt: FarDosCnt ?? this.FarDosCnt,
      FarDosUnidMedId: FarDosUnidMedId ?? this.FarDosUnidMedId,
      FarFlgEsSuero: FarFlgEsSuero ?? this.FarFlgEsSuero,
      FarFlgEsAdit: FarFlgEsAdit ?? this.FarFlgEsAdit,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableFarmacosTable extends TableFarmacos
    with TableInfo<$TableFarmacosTable, Farmacos> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableFarmacosTable(this._db, [this._alias]);
  final VerificationMeta _FarIdMeta = const VerificationMeta('FarId');
  GeneratedIntColumn _FarId;
  @override
  GeneratedIntColumn get FarId => _FarId ??= _constructFarId();
  GeneratedIntColumn _constructFarId() {
    return GeneratedIntColumn('far_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _FarNomMeta = const VerificationMeta('FarNom');
  GeneratedTextColumn _FarNom;
  @override
  GeneratedTextColumn get FarNom => _FarNom ??= _constructFarNom();
  GeneratedTextColumn _constructFarNom() {
    return GeneratedTextColumn(
      'far_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FarFlgHabMeta = const VerificationMeta('FarFlgHab');
  GeneratedIntColumn _FarFlgHab;
  @override
  GeneratedIntColumn get FarFlgHab => _FarFlgHab ??= _constructFarFlgHab();
  GeneratedIntColumn _constructFarFlgHab() {
    return GeneratedIntColumn(
      'far_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FarDrogCompMeta =
      const VerificationMeta('FarDrogComp');
  GeneratedTextColumn _FarDrogComp;
  @override
  GeneratedTextColumn get FarDrogComp =>
      _FarDrogComp ??= _constructFarDrogComp();
  GeneratedTextColumn _constructFarDrogComp() {
    return GeneratedTextColumn(
      'far_drog_comp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FarPresMedicIdMeta =
      const VerificationMeta('FarPresMedicId');
  GeneratedIntColumn _FarPresMedicId;
  @override
  GeneratedIntColumn get FarPresMedicId =>
      _FarPresMedicId ??= _constructFarPresMedicId();
  GeneratedIntColumn _constructFarPresMedicId() {
    return GeneratedIntColumn(
      'far_pres_medic_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FarDosCntMeta = const VerificationMeta('FarDosCnt');
  GeneratedIntColumn _FarDosCnt;
  @override
  GeneratedIntColumn get FarDosCnt => _FarDosCnt ??= _constructFarDosCnt();
  GeneratedIntColumn _constructFarDosCnt() {
    return GeneratedIntColumn(
      'far_dos_cnt',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FarDosUnidMedIdMeta =
      const VerificationMeta('FarDosUnidMedId');
  GeneratedIntColumn _FarDosUnidMedId;
  @override
  GeneratedIntColumn get FarDosUnidMedId =>
      _FarDosUnidMedId ??= _constructFarDosUnidMedId();
  GeneratedIntColumn _constructFarDosUnidMedId() {
    return GeneratedIntColumn(
      'far_dos_unid_med_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FarFlgEsSueroMeta =
      const VerificationMeta('FarFlgEsSuero');
  GeneratedIntColumn _FarFlgEsSuero;
  @override
  GeneratedIntColumn get FarFlgEsSuero =>
      _FarFlgEsSuero ??= _constructFarFlgEsSuero();
  GeneratedIntColumn _constructFarFlgEsSuero() {
    return GeneratedIntColumn(
      'far_flg_es_suero',
      $tableName,
      false,
    );
  }

  final VerificationMeta _FarFlgEsAditMeta =
      const VerificationMeta('FarFlgEsAdit');
  GeneratedIntColumn _FarFlgEsAdit;
  @override
  GeneratedIntColumn get FarFlgEsAdit =>
      _FarFlgEsAdit ??= _constructFarFlgEsAdit();
  GeneratedIntColumn _constructFarFlgEsAdit() {
    return GeneratedIntColumn(
      'far_flg_es_adit',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        FarId,
        FarNom,
        FarFlgHab,
        FarDrogComp,
        FarPresMedicId,
        FarDosCnt,
        FarDosUnidMedId,
        FarFlgEsSuero,
        FarFlgEsAdit,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableFarmacosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_farmacos';
  @override
  final String actualTableName = 'table_farmacos';
  @override
  VerificationContext validateIntegrity(TableFarmacosCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.FarId.present) {
      context.handle(
          _FarIdMeta, FarId.isAcceptableValue(d.FarId.value, _FarIdMeta));
    } else if (FarId.isRequired && isInserting) {
      context.missing(_FarIdMeta);
    }
    if (d.FarNom.present) {
      context.handle(
          _FarNomMeta, FarNom.isAcceptableValue(d.FarNom.value, _FarNomMeta));
    } else if (FarNom.isRequired && isInserting) {
      context.missing(_FarNomMeta);
    }
    if (d.FarFlgHab.present) {
      context.handle(_FarFlgHabMeta,
          FarFlgHab.isAcceptableValue(d.FarFlgHab.value, _FarFlgHabMeta));
    } else if (FarFlgHab.isRequired && isInserting) {
      context.missing(_FarFlgHabMeta);
    }
    if (d.FarDrogComp.present) {
      context.handle(_FarDrogCompMeta,
          FarDrogComp.isAcceptableValue(d.FarDrogComp.value, _FarDrogCompMeta));
    } else if (FarDrogComp.isRequired && isInserting) {
      context.missing(_FarDrogCompMeta);
    }
    if (d.FarPresMedicId.present) {
      context.handle(
          _FarPresMedicIdMeta,
          FarPresMedicId.isAcceptableValue(
              d.FarPresMedicId.value, _FarPresMedicIdMeta));
    } else if (FarPresMedicId.isRequired && isInserting) {
      context.missing(_FarPresMedicIdMeta);
    }
    if (d.FarDosCnt.present) {
      context.handle(_FarDosCntMeta,
          FarDosCnt.isAcceptableValue(d.FarDosCnt.value, _FarDosCntMeta));
    } else if (FarDosCnt.isRequired && isInserting) {
      context.missing(_FarDosCntMeta);
    }
    if (d.FarDosUnidMedId.present) {
      context.handle(
          _FarDosUnidMedIdMeta,
          FarDosUnidMedId.isAcceptableValue(
              d.FarDosUnidMedId.value, _FarDosUnidMedIdMeta));
    } else if (FarDosUnidMedId.isRequired && isInserting) {
      context.missing(_FarDosUnidMedIdMeta);
    }
    if (d.FarFlgEsSuero.present) {
      context.handle(
          _FarFlgEsSueroMeta,
          FarFlgEsSuero.isAcceptableValue(
              d.FarFlgEsSuero.value, _FarFlgEsSueroMeta));
    } else if (FarFlgEsSuero.isRequired && isInserting) {
      context.missing(_FarFlgEsSueroMeta);
    }
    if (d.FarFlgEsAdit.present) {
      context.handle(
          _FarFlgEsAditMeta,
          FarFlgEsAdit.isAcceptableValue(
              d.FarFlgEsAdit.value, _FarFlgEsAditMeta));
    } else if (FarFlgEsAdit.isRequired && isInserting) {
      context.missing(_FarFlgEsAditMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {FarId};
  @override
  Farmacos map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Farmacos.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFarmacosCompanion d) {
    final map = <String, Variable>{};
    if (d.FarId.present) {
      map['far_id'] = Variable<int, IntType>(d.FarId.value);
    }
    if (d.FarNom.present) {
      map['far_nom'] = Variable<String, StringType>(d.FarNom.value);
    }
    if (d.FarFlgHab.present) {
      map['far_flg_hab'] = Variable<int, IntType>(d.FarFlgHab.value);
    }
    if (d.FarDrogComp.present) {
      map['far_drog_comp'] = Variable<String, StringType>(d.FarDrogComp.value);
    }
    if (d.FarPresMedicId.present) {
      map['far_pres_medic_id'] = Variable<int, IntType>(d.FarPresMedicId.value);
    }
    if (d.FarDosCnt.present) {
      map['far_dos_cnt'] = Variable<int, IntType>(d.FarDosCnt.value);
    }
    if (d.FarDosUnidMedId.present) {
      map['far_dos_unid_med_id'] =
          Variable<int, IntType>(d.FarDosUnidMedId.value);
    }
    if (d.FarFlgEsSuero.present) {
      map['far_flg_es_suero'] = Variable<int, IntType>(d.FarFlgEsSuero.value);
    }
    if (d.FarFlgEsAdit.present) {
      map['far_flg_es_adit'] = Variable<int, IntType>(d.FarFlgEsAdit.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableFarmacosTable createAlias(String alias) {
    return $TableFarmacosTable(_db, alias);
  }
}

class FarVia extends DataClass implements Insertable<FarVia> {
  final int FarId;
  final int ViaAdmMedicId;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FarVia(
      {@required this.FarId,
      @required this.ViaAdmMedicId,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory FarVia.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return FarVia(
      FarId: intType.mapFromDatabaseResponse(data['${effectivePrefix}far_id']),
      ViaAdmMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}via_adm_medic_id']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory FarVia.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return FarVia(
      FarId: serializer.fromJson<int>(json['FarId']),
      ViaAdmMedicId: serializer.fromJson<int>(json['ViaAdmMedicId']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'FarId': serializer.toJson<int>(FarId),
      'ViaAdmMedicId': serializer.toJson<int>(ViaAdmMedicId),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FarVia>>(bool nullToAbsent) {
    return TableFarViaCompanion(
      FarId:
          FarId == null && nullToAbsent ? const Value.absent() : Value(FarId),
      ViaAdmMedicId: ViaAdmMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(ViaAdmMedicId),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  FarVia copyWith(
          {int FarId,
          int ViaAdmMedicId,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FarVia(
        FarId: FarId ?? this.FarId,
        ViaAdmMedicId: ViaAdmMedicId ?? this.ViaAdmMedicId,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FarVia(')
          ..write('FarId: $FarId, ')
          ..write('ViaAdmMedicId: $ViaAdmMedicId, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      FarId.hashCode,
      $mrjc(
          ViaAdmMedicId.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FarVia &&
          other.FarId == FarId &&
          other.ViaAdmMedicId == ViaAdmMedicId &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFarViaCompanion extends UpdateCompanion<FarVia> {
  final Value<int> FarId;
  final Value<int> ViaAdmMedicId;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFarViaCompanion({
    this.FarId = const Value.absent(),
    this.ViaAdmMedicId = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFarViaCompanion copyWith(
      {Value<int> FarId,
      Value<int> ViaAdmMedicId,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFarViaCompanion(
      FarId: FarId ?? this.FarId,
      ViaAdmMedicId: ViaAdmMedicId ?? this.ViaAdmMedicId,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableFarViaTable extends TableFarVia
    with TableInfo<$TableFarViaTable, FarVia> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableFarViaTable(this._db, [this._alias]);
  final VerificationMeta _FarIdMeta = const VerificationMeta('FarId');
  GeneratedIntColumn _FarId;
  @override
  GeneratedIntColumn get FarId => _FarId ??= _constructFarId();
  GeneratedIntColumn _constructFarId() {
    return GeneratedIntColumn('far_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _ViaAdmMedicIdMeta =
      const VerificationMeta('ViaAdmMedicId');
  GeneratedIntColumn _ViaAdmMedicId;
  @override
  GeneratedIntColumn get ViaAdmMedicId =>
      _ViaAdmMedicId ??= _constructViaAdmMedicId();
  GeneratedIntColumn _constructViaAdmMedicId() {
    return GeneratedIntColumn('via_adm_medic_id', $tableName, false,
        $customConstraints: 'REFERENCES ViaAdmMedic(ViaAdmMedicId)');
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [FarId, ViaAdmMedicId, StatusId, UsuId, createdAt, updatedAt, deletedAt];
  @override
  $TableFarViaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_far_via';
  @override
  final String actualTableName = 'table_far_via';
  @override
  VerificationContext validateIntegrity(TableFarViaCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.FarId.present) {
      context.handle(
          _FarIdMeta, FarId.isAcceptableValue(d.FarId.value, _FarIdMeta));
    } else if (FarId.isRequired && isInserting) {
      context.missing(_FarIdMeta);
    }
    if (d.ViaAdmMedicId.present) {
      context.handle(
          _ViaAdmMedicIdMeta,
          ViaAdmMedicId.isAcceptableValue(
              d.ViaAdmMedicId.value, _ViaAdmMedicIdMeta));
    } else if (ViaAdmMedicId.isRequired && isInserting) {
      context.missing(_ViaAdmMedicIdMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {FarId};
  @override
  FarVia map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FarVia.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFarViaCompanion d) {
    final map = <String, Variable>{};
    if (d.FarId.present) {
      map['far_id'] = Variable<int, IntType>(d.FarId.value);
    }
    if (d.ViaAdmMedicId.present) {
      map['via_adm_medic_id'] = Variable<int, IntType>(d.ViaAdmMedicId.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableFarViaTable createAlias(String alias) {
    return $TableFarViaTable(_db, alias);
  }
}

class Materiales extends DataClass implements Insertable<Materiales> {
  final int MatId;
  final String MatNom;
  final int MatBajFlg;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Materiales(
      {@required this.MatId,
      @required this.MatNom,
      @required this.MatBajFlg,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory Materiales.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Materiales(
      MatId: intType.mapFromDatabaseResponse(data['${effectivePrefix}mat_id']),
      MatNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}mat_nom']),
      MatBajFlg: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}mat_baj_flg']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory Materiales.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Materiales(
      MatId: serializer.fromJson<int>(json['MatId']),
      MatNom: serializer.fromJson<String>(json['MatNom']),
      MatBajFlg: serializer.fromJson<int>(json['MatBajFlg']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'MatId': serializer.toJson<int>(MatId),
      'MatNom': serializer.toJson<String>(MatNom),
      'MatBajFlg': serializer.toJson<int>(MatBajFlg),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Materiales>>(bool nullToAbsent) {
    return TableMaterialesCompanion(
      MatId:
          MatId == null && nullToAbsent ? const Value.absent() : Value(MatId),
      MatNom:
          MatNom == null && nullToAbsent ? const Value.absent() : Value(MatNom),
      MatBajFlg: MatBajFlg == null && nullToAbsent
          ? const Value.absent()
          : Value(MatBajFlg),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  Materiales copyWith(
          {int MatId,
          String MatNom,
          int MatBajFlg,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Materiales(
        MatId: MatId ?? this.MatId,
        MatNom: MatNom ?? this.MatNom,
        MatBajFlg: MatBajFlg ?? this.MatBajFlg,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Materiales(')
          ..write('MatId: $MatId, ')
          ..write('MatNom: $MatNom, ')
          ..write('MatBajFlg: $MatBajFlg, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      MatId.hashCode,
      $mrjc(
          MatNom.hashCode,
          $mrjc(
              MatBajFlg.hashCode,
              $mrjc(
                  StatusId.hashCode,
                  $mrjc(
                      UsuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Materiales &&
          other.MatId == MatId &&
          other.MatNom == MatNom &&
          other.MatBajFlg == MatBajFlg &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableMaterialesCompanion extends UpdateCompanion<Materiales> {
  final Value<int> MatId;
  final Value<String> MatNom;
  final Value<int> MatBajFlg;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableMaterialesCompanion({
    this.MatId = const Value.absent(),
    this.MatNom = const Value.absent(),
    this.MatBajFlg = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableMaterialesCompanion copyWith(
      {Value<int> MatId,
      Value<String> MatNom,
      Value<int> MatBajFlg,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableMaterialesCompanion(
      MatId: MatId ?? this.MatId,
      MatNom: MatNom ?? this.MatNom,
      MatBajFlg: MatBajFlg ?? this.MatBajFlg,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableMaterialesTable extends TableMateriales
    with TableInfo<$TableMaterialesTable, Materiales> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableMaterialesTable(this._db, [this._alias]);
  final VerificationMeta _MatIdMeta = const VerificationMeta('MatId');
  GeneratedIntColumn _MatId;
  @override
  GeneratedIntColumn get MatId => _MatId ??= _constructMatId();
  GeneratedIntColumn _constructMatId() {
    return GeneratedIntColumn('mat_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _MatNomMeta = const VerificationMeta('MatNom');
  GeneratedTextColumn _MatNom;
  @override
  GeneratedTextColumn get MatNom => _MatNom ??= _constructMatNom();
  GeneratedTextColumn _constructMatNom() {
    return GeneratedTextColumn(
      'mat_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _MatBajFlgMeta = const VerificationMeta('MatBajFlg');
  GeneratedIntColumn _MatBajFlg;
  @override
  GeneratedIntColumn get MatBajFlg => _MatBajFlg ??= _constructMatBajFlg();
  GeneratedIntColumn _constructMatBajFlg() {
    return GeneratedIntColumn(
      'mat_baj_flg',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        MatId,
        MatNom,
        MatBajFlg,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TableMaterialesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_materiales';
  @override
  final String actualTableName = 'table_materiales';
  @override
  VerificationContext validateIntegrity(TableMaterialesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.MatId.present) {
      context.handle(
          _MatIdMeta, MatId.isAcceptableValue(d.MatId.value, _MatIdMeta));
    } else if (MatId.isRequired && isInserting) {
      context.missing(_MatIdMeta);
    }
    if (d.MatNom.present) {
      context.handle(
          _MatNomMeta, MatNom.isAcceptableValue(d.MatNom.value, _MatNomMeta));
    } else if (MatNom.isRequired && isInserting) {
      context.missing(_MatNomMeta);
    }
    if (d.MatBajFlg.present) {
      context.handle(_MatBajFlgMeta,
          MatBajFlg.isAcceptableValue(d.MatBajFlg.value, _MatBajFlgMeta));
    } else if (MatBajFlg.isRequired && isInserting) {
      context.missing(_MatBajFlgMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {MatId};
  @override
  Materiales map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Materiales.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableMaterialesCompanion d) {
    final map = <String, Variable>{};
    if (d.MatId.present) {
      map['mat_id'] = Variable<int, IntType>(d.MatId.value);
    }
    if (d.MatNom.present) {
      map['mat_nom'] = Variable<String, StringType>(d.MatNom.value);
    }
    if (d.MatBajFlg.present) {
      map['mat_baj_flg'] = Variable<int, IntType>(d.MatBajFlg.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableMaterialesTable createAlias(String alias) {
    return $TableMaterialesTable(_db, alias);
  }
}

class MatUniMed extends DataClass implements Insertable<MatUniMed> {
  final int MatId;
  final int MatUnidMedId;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  MatUniMed(
      {@required this.MatId,
      @required this.MatUnidMedId,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory MatUniMed.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MatUniMed(
      MatId: intType.mapFromDatabaseResponse(data['${effectivePrefix}mat_id']),
      MatUnidMedId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}mat_unid_med_id']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory MatUniMed.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return MatUniMed(
      MatId: serializer.fromJson<int>(json['MatId']),
      MatUnidMedId: serializer.fromJson<int>(json['MatUnidMedId']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'MatId': serializer.toJson<int>(MatId),
      'MatUnidMedId': serializer.toJson<int>(MatUnidMedId),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<MatUniMed>>(bool nullToAbsent) {
    return TableMatUniMedCompanion(
      MatId:
          MatId == null && nullToAbsent ? const Value.absent() : Value(MatId),
      MatUnidMedId: MatUnidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(MatUnidMedId),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  MatUniMed copyWith(
          {int MatId,
          int MatUnidMedId,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      MatUniMed(
        MatId: MatId ?? this.MatId,
        MatUnidMedId: MatUnidMedId ?? this.MatUnidMedId,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('MatUniMed(')
          ..write('MatId: $MatId, ')
          ..write('MatUnidMedId: $MatUnidMedId, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      MatId.hashCode,
      $mrjc(
          MatUnidMedId.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is MatUniMed &&
          other.MatId == MatId &&
          other.MatUnidMedId == MatUnidMedId &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableMatUniMedCompanion extends UpdateCompanion<MatUniMed> {
  final Value<int> MatId;
  final Value<int> MatUnidMedId;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableMatUniMedCompanion({
    this.MatId = const Value.absent(),
    this.MatUnidMedId = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableMatUniMedCompanion copyWith(
      {Value<int> MatId,
      Value<int> MatUnidMedId,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableMatUniMedCompanion(
      MatId: MatId ?? this.MatId,
      MatUnidMedId: MatUnidMedId ?? this.MatUnidMedId,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TableMatUniMedTable extends TableMatUniMed
    with TableInfo<$TableMatUniMedTable, MatUniMed> {
  final GeneratedDatabase _db;
  final String _alias;
  $TableMatUniMedTable(this._db, [this._alias]);
  final VerificationMeta _MatIdMeta = const VerificationMeta('MatId');
  GeneratedIntColumn _MatId;
  @override
  GeneratedIntColumn get MatId => _MatId ??= _constructMatId();
  GeneratedIntColumn _constructMatId() {
    return GeneratedIntColumn('mat_id', $tableName, false,
        $customConstraints: 'REFERENCES Materiales(MatId)');
  }

  final VerificationMeta _MatUnidMedIdMeta =
      const VerificationMeta('MatUnidMedId');
  GeneratedIntColumn _MatUnidMedId;
  @override
  GeneratedIntColumn get MatUnidMedId =>
      _MatUnidMedId ??= _constructMatUnidMedId();
  GeneratedIntColumn _constructMatUnidMedId() {
    return GeneratedIntColumn(
      'mat_unid_med_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [MatId, MatUnidMedId, StatusId, UsuId, createdAt, updatedAt, deletedAt];
  @override
  $TableMatUniMedTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_mat_uni_med';
  @override
  final String actualTableName = 'table_mat_uni_med';
  @override
  VerificationContext validateIntegrity(TableMatUniMedCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.MatId.present) {
      context.handle(
          _MatIdMeta, MatId.isAcceptableValue(d.MatId.value, _MatIdMeta));
    } else if (MatId.isRequired && isInserting) {
      context.missing(_MatIdMeta);
    }
    if (d.MatUnidMedId.present) {
      context.handle(
          _MatUnidMedIdMeta,
          MatUnidMedId.isAcceptableValue(
              d.MatUnidMedId.value, _MatUnidMedIdMeta));
    } else if (MatUnidMedId.isRequired && isInserting) {
      context.missing(_MatUnidMedIdMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  MatUniMed map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MatUniMed.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableMatUniMedCompanion d) {
    final map = <String, Variable>{};
    if (d.MatId.present) {
      map['mat_id'] = Variable<int, IntType>(d.MatId.value);
    }
    if (d.MatUnidMedId.present) {
      map['mat_unid_med_id'] = Variable<int, IntType>(d.MatUnidMedId.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TableMatUniMedTable createAlias(String alias) {
    return $TableMatUniMedTable(_db, alias);
  }
}

class Presentaciones extends DataClass implements Insertable<Presentaciones> {
  final int PresMedicId;
  final String PresMedicNom;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Presentaciones(
      {@required this.PresMedicId,
      @required this.PresMedicNom,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory Presentaciones.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Presentaciones(
      PresMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}pres_medic_id']),
      PresMedicNom: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}pres_medic_nom']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory Presentaciones.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return Presentaciones(
      PresMedicId: serializer.fromJson<int>(json['PresMedicId']),
      PresMedicNom: serializer.fromJson<String>(json['PresMedicNom']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'PresMedicId': serializer.toJson<int>(PresMedicId),
      'PresMedicNom': serializer.toJson<String>(PresMedicNom),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Presentaciones>>(
      bool nullToAbsent) {
    return TablePresentacionesCompanion(
      PresMedicId: PresMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(PresMedicId),
      PresMedicNom: PresMedicNom == null && nullToAbsent
          ? const Value.absent()
          : Value(PresMedicNom),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  Presentaciones copyWith(
          {int PresMedicId,
          String PresMedicNom,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Presentaciones(
        PresMedicId: PresMedicId ?? this.PresMedicId,
        PresMedicNom: PresMedicNom ?? this.PresMedicNom,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Presentaciones(')
          ..write('PresMedicId: $PresMedicId, ')
          ..write('PresMedicNom: $PresMedicNom, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      PresMedicId.hashCode,
      $mrjc(
          PresMedicNom.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Presentaciones &&
          other.PresMedicId == PresMedicId &&
          other.PresMedicNom == PresMedicNom &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePresentacionesCompanion extends UpdateCompanion<Presentaciones> {
  final Value<int> PresMedicId;
  final Value<String> PresMedicNom;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePresentacionesCompanion({
    this.PresMedicId = const Value.absent(),
    this.PresMedicNom = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePresentacionesCompanion copyWith(
      {Value<int> PresMedicId,
      Value<String> PresMedicNom,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePresentacionesCompanion(
      PresMedicId: PresMedicId ?? this.PresMedicId,
      PresMedicNom: PresMedicNom ?? this.PresMedicNom,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TablePresentacionesTable extends TablePresentaciones
    with TableInfo<$TablePresentacionesTable, Presentaciones> {
  final GeneratedDatabase _db;
  final String _alias;
  $TablePresentacionesTable(this._db, [this._alias]);
  final VerificationMeta _PresMedicIdMeta =
      const VerificationMeta('PresMedicId');
  GeneratedIntColumn _PresMedicId;
  @override
  GeneratedIntColumn get PresMedicId =>
      _PresMedicId ??= _constructPresMedicId();
  GeneratedIntColumn _constructPresMedicId() {
    return GeneratedIntColumn('pres_medic_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _PresMedicNomMeta =
      const VerificationMeta('PresMedicNom');
  GeneratedTextColumn _PresMedicNom;
  @override
  GeneratedTextColumn get PresMedicNom =>
      _PresMedicNom ??= _constructPresMedicNom();
  GeneratedTextColumn _constructPresMedicNom() {
    return GeneratedTextColumn(
      'pres_medic_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        PresMedicId,
        PresMedicNom,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TablePresentacionesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_presentaciones';
  @override
  final String actualTableName = 'table_presentaciones';
  @override
  VerificationContext validateIntegrity(TablePresentacionesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.PresMedicId.present) {
      context.handle(_PresMedicIdMeta,
          PresMedicId.isAcceptableValue(d.PresMedicId.value, _PresMedicIdMeta));
    } else if (PresMedicId.isRequired && isInserting) {
      context.missing(_PresMedicIdMeta);
    }
    if (d.PresMedicNom.present) {
      context.handle(
          _PresMedicNomMeta,
          PresMedicNom.isAcceptableValue(
              d.PresMedicNom.value, _PresMedicNomMeta));
    } else if (PresMedicNom.isRequired && isInserting) {
      context.missing(_PresMedicNomMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {PresMedicId};
  @override
  Presentaciones map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Presentaciones.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TablePresentacionesCompanion d) {
    final map = <String, Variable>{};
    if (d.PresMedicId.present) {
      map['pres_medic_id'] = Variable<int, IntType>(d.PresMedicId.value);
    }
    if (d.PresMedicNom.present) {
      map['pres_medic_nom'] =
          Variable<String, StringType>(d.PresMedicNom.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TablePresentacionesTable createAlias(String alias) {
    return $TablePresentacionesTable(_db, alias);
  }
}

class PresMedicVia extends DataClass implements Insertable<PresMedicVia> {
  final int PresMedicId;
  final int ViaAdmMedicId;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  PresMedicVia(
      {@required this.PresMedicId,
      @required this.ViaAdmMedicId,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory PresMedicVia.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PresMedicVia(
      PresMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}pres_medic_id']),
      ViaAdmMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}via_adm_medic_id']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory PresMedicVia.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return PresMedicVia(
      PresMedicId: serializer.fromJson<int>(json['PresMedicId']),
      ViaAdmMedicId: serializer.fromJson<int>(json['ViaAdmMedicId']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'PresMedicId': serializer.toJson<int>(PresMedicId),
      'ViaAdmMedicId': serializer.toJson<int>(ViaAdmMedicId),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<PresMedicVia>>(
      bool nullToAbsent) {
    return TablePresMedicViaCompanion(
      PresMedicId: PresMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(PresMedicId),
      ViaAdmMedicId: ViaAdmMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(ViaAdmMedicId),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  PresMedicVia copyWith(
          {int PresMedicId,
          int ViaAdmMedicId,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      PresMedicVia(
        PresMedicId: PresMedicId ?? this.PresMedicId,
        ViaAdmMedicId: ViaAdmMedicId ?? this.ViaAdmMedicId,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PresMedicVia(')
          ..write('PresMedicId: $PresMedicId, ')
          ..write('ViaAdmMedicId: $ViaAdmMedicId, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      PresMedicId.hashCode,
      $mrjc(
          ViaAdmMedicId.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is PresMedicVia &&
          other.PresMedicId == PresMedicId &&
          other.ViaAdmMedicId == ViaAdmMedicId &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePresMedicViaCompanion extends UpdateCompanion<PresMedicVia> {
  final Value<int> PresMedicId;
  final Value<int> ViaAdmMedicId;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePresMedicViaCompanion({
    this.PresMedicId = const Value.absent(),
    this.ViaAdmMedicId = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePresMedicViaCompanion copyWith(
      {Value<int> PresMedicId,
      Value<int> ViaAdmMedicId,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePresMedicViaCompanion(
      PresMedicId: PresMedicId ?? this.PresMedicId,
      ViaAdmMedicId: ViaAdmMedicId ?? this.ViaAdmMedicId,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TablePresMedicViaTable extends TablePresMedicVia
    with TableInfo<$TablePresMedicViaTable, PresMedicVia> {
  final GeneratedDatabase _db;
  final String _alias;
  $TablePresMedicViaTable(this._db, [this._alias]);
  final VerificationMeta _PresMedicIdMeta =
      const VerificationMeta('PresMedicId');
  GeneratedIntColumn _PresMedicId;
  @override
  GeneratedIntColumn get PresMedicId =>
      _PresMedicId ??= _constructPresMedicId();
  GeneratedIntColumn _constructPresMedicId() {
    return GeneratedIntColumn('pres_medic_id', $tableName, false,
        $customConstraints: 'REFERENCES Presentaciones(PresMedicId)');
  }

  final VerificationMeta _ViaAdmMedicIdMeta =
      const VerificationMeta('ViaAdmMedicId');
  GeneratedIntColumn _ViaAdmMedicId;
  @override
  GeneratedIntColumn get ViaAdmMedicId =>
      _ViaAdmMedicId ??= _constructViaAdmMedicId();
  GeneratedIntColumn _constructViaAdmMedicId() {
    return GeneratedIntColumn('via_adm_medic_id', $tableName, false,
        $customConstraints: 'REFERENCES ViaAdmMedic(ViaAdmMedicId)');
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        PresMedicId,
        ViaAdmMedicId,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TablePresMedicViaTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_pres_medic_via';
  @override
  final String actualTableName = 'table_pres_medic_via';
  @override
  VerificationContext validateIntegrity(TablePresMedicViaCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.PresMedicId.present) {
      context.handle(_PresMedicIdMeta,
          PresMedicId.isAcceptableValue(d.PresMedicId.value, _PresMedicIdMeta));
    } else if (PresMedicId.isRequired && isInserting) {
      context.missing(_PresMedicIdMeta);
    }
    if (d.ViaAdmMedicId.present) {
      context.handle(
          _ViaAdmMedicIdMeta,
          ViaAdmMedicId.isAcceptableValue(
              d.ViaAdmMedicId.value, _ViaAdmMedicIdMeta));
    } else if (ViaAdmMedicId.isRequired && isInserting) {
      context.missing(_ViaAdmMedicIdMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  PresMedicVia map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PresMedicVia.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TablePresMedicViaCompanion d) {
    final map = <String, Variable>{};
    if (d.PresMedicId.present) {
      map['pres_medic_id'] = Variable<int, IntType>(d.PresMedicId.value);
    }
    if (d.ViaAdmMedicId.present) {
      map['via_adm_medic_id'] = Variable<int, IntType>(d.ViaAdmMedicId.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TablePresMedicViaTable createAlias(String alias) {
    return $TablePresMedicViaTable(_db, alias);
  }
}

class PresMedicUniMed extends DataClass implements Insertable<PresMedicUniMed> {
  final int PresMedicId;
  final int UnidMedId;
  final int StatusId;
  final int UsuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  PresMedicUniMed(
      {@required this.PresMedicId,
      @required this.UnidMedId,
      @required this.StatusId,
      @required this.UsuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory PresMedicUniMed.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PresMedicUniMed(
      PresMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}pres_medic_id']),
      UnidMedId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_id']),
      StatusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      UsuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      deletedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  factory PresMedicUniMed.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return PresMedicUniMed(
      PresMedicId: serializer.fromJson<int>(json['PresMedicId']),
      UnidMedId: serializer.fromJson<int>(json['UnidMedId']),
      StatusId: serializer.fromJson<int>(json['StatusId']),
      UsuId: serializer.fromJson<int>(json['UsuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'PresMedicId': serializer.toJson<int>(PresMedicId),
      'UnidMedId': serializer.toJson<int>(UnidMedId),
      'StatusId': serializer.toJson<int>(StatusId),
      'UsuId': serializer.toJson<int>(UsuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<PresMedicUniMed>>(
      bool nullToAbsent) {
    return TablePresMedicUniMedCompanion(
      PresMedicId: PresMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(PresMedicId),
      UnidMedId: UnidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(UnidMedId),
      StatusId: StatusId == null && nullToAbsent
          ? const Value.absent()
          : Value(StatusId),
      UsuId:
          UsuId == null && nullToAbsent ? const Value.absent() : Value(UsuId),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    ) as T;
  }

  PresMedicUniMed copyWith(
          {int PresMedicId,
          int UnidMedId,
          int StatusId,
          int UsuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      PresMedicUniMed(
        PresMedicId: PresMedicId ?? this.PresMedicId,
        UnidMedId: UnidMedId ?? this.UnidMedId,
        StatusId: StatusId ?? this.StatusId,
        UsuId: UsuId ?? this.UsuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PresMedicUniMed(')
          ..write('PresMedicId: $PresMedicId, ')
          ..write('UnidMedId: $UnidMedId, ')
          ..write('StatusId: $StatusId, ')
          ..write('UsuId: $UsuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      PresMedicId.hashCode,
      $mrjc(
          UnidMedId.hashCode,
          $mrjc(
              StatusId.hashCode,
              $mrjc(
                  UsuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is PresMedicUniMed &&
          other.PresMedicId == PresMedicId &&
          other.UnidMedId == UnidMedId &&
          other.StatusId == StatusId &&
          other.UsuId == UsuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePresMedicUniMedCompanion extends UpdateCompanion<PresMedicUniMed> {
  final Value<int> PresMedicId;
  final Value<int> UnidMedId;
  final Value<int> StatusId;
  final Value<int> UsuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePresMedicUniMedCompanion({
    this.PresMedicId = const Value.absent(),
    this.UnidMedId = const Value.absent(),
    this.StatusId = const Value.absent(),
    this.UsuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePresMedicUniMedCompanion copyWith(
      {Value<int> PresMedicId,
      Value<int> UnidMedId,
      Value<int> StatusId,
      Value<int> UsuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePresMedicUniMedCompanion(
      PresMedicId: PresMedicId ?? this.PresMedicId,
      UnidMedId: UnidMedId ?? this.UnidMedId,
      StatusId: StatusId ?? this.StatusId,
      UsuId: UsuId ?? this.UsuId,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }
}

class $TablePresMedicUniMedTable extends TablePresMedicUniMed
    with TableInfo<$TablePresMedicUniMedTable, PresMedicUniMed> {
  final GeneratedDatabase _db;
  final String _alias;
  $TablePresMedicUniMedTable(this._db, [this._alias]);
  final VerificationMeta _PresMedicIdMeta =
      const VerificationMeta('PresMedicId');
  GeneratedIntColumn _PresMedicId;
  @override
  GeneratedIntColumn get PresMedicId =>
      _PresMedicId ??= _constructPresMedicId();
  GeneratedIntColumn _constructPresMedicId() {
    return GeneratedIntColumn('pres_medic_id', $tableName, false,
        $customConstraints: 'REFERENCES Presentaciones(PresMedicId)');
  }

  final VerificationMeta _UnidMedIdMeta = const VerificationMeta('UnidMedId');
  GeneratedIntColumn _UnidMedId;
  @override
  GeneratedIntColumn get UnidMedId => _UnidMedId ??= _constructUnidMedId();
  GeneratedIntColumn _constructUnidMedId() {
    return GeneratedIntColumn('unid_med_id', $tableName, false,
        $customConstraints: 'REFERENCES UnidMed(UnidMedId)');
  }

  final VerificationMeta _StatusIdMeta = const VerificationMeta('StatusId');
  GeneratedIntColumn _StatusId;
  @override
  GeneratedIntColumn get StatusId => _StatusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(FicId)');
  }

  final VerificationMeta _UsuIdMeta = const VerificationMeta('UsuId');
  GeneratedIntColumn _UsuId;
  @override
  GeneratedIntColumn get UsuId => _UsuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(UsuId)');
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  GeneratedDateTimeColumn _deletedAt;
  @override
  GeneratedDateTimeColumn get deletedAt => _deletedAt ??= _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        PresMedicId,
        UnidMedId,
        StatusId,
        UsuId,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $TablePresMedicUniMedTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'table_pres_medic_uni_med';
  @override
  final String actualTableName = 'table_pres_medic_uni_med';
  @override
  VerificationContext validateIntegrity(TablePresMedicUniMedCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.PresMedicId.present) {
      context.handle(_PresMedicIdMeta,
          PresMedicId.isAcceptableValue(d.PresMedicId.value, _PresMedicIdMeta));
    } else if (PresMedicId.isRequired && isInserting) {
      context.missing(_PresMedicIdMeta);
    }
    if (d.UnidMedId.present) {
      context.handle(_UnidMedIdMeta,
          UnidMedId.isAcceptableValue(d.UnidMedId.value, _UnidMedIdMeta));
    } else if (UnidMedId.isRequired && isInserting) {
      context.missing(_UnidMedIdMeta);
    }
    if (d.StatusId.present) {
      context.handle(_StatusIdMeta,
          StatusId.isAcceptableValue(d.StatusId.value, _StatusIdMeta));
    } else if (StatusId.isRequired && isInserting) {
      context.missing(_StatusIdMeta);
    }
    if (d.UsuId.present) {
      context.handle(
          _UsuIdMeta, UsuId.isAcceptableValue(d.UsuId.value, _UsuIdMeta));
    } else if (UsuId.isRequired && isInserting) {
      context.missing(_UsuIdMeta);
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (createdAt.isRequired && isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.updatedAt.present) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableValue(d.updatedAt.value, _updatedAtMeta));
    } else if (updatedAt.isRequired && isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (d.deletedAt.present) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableValue(d.deletedAt.value, _deletedAtMeta));
    } else if (deletedAt.isRequired && isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  PresMedicUniMed map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PresMedicUniMed.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TablePresMedicUniMedCompanion d) {
    final map = <String, Variable>{};
    if (d.PresMedicId.present) {
      map['pres_medic_id'] = Variable<int, IntType>(d.PresMedicId.value);
    }
    if (d.UnidMedId.present) {
      map['unid_med_id'] = Variable<int, IntType>(d.UnidMedId.value);
    }
    if (d.StatusId.present) {
      map['status_id'] = Variable<int, IntType>(d.StatusId.value);
    }
    if (d.UsuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.UsuId.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.updatedAt.present) {
      map['updated_at'] = Variable<DateTime, DateTimeType>(d.updatedAt.value);
    }
    if (d.deletedAt.present) {
      map['deleted_at'] = Variable<DateTime, DateTimeType>(d.deletedAt.value);
    }
    return map;
  }

  @override
  $TablePresMedicUniMedTable createAlias(String alias) {
    return $TablePresMedicUniMedTable(_db, alias);
  }
}

abstract class _$GeoDatabase extends GeneratedDatabase {
  _$GeoDatabase(QueryExecutor e) : super(const SqlTypeSystem.withDefaults(), e);
  $UsuariosTable _usuarios;
  $UsuariosTable get usuarios => _usuarios ??= $UsuariosTable(this);
  $TableFichaTable _tableFicha;
  $TableFichaTable get tableFicha => _tableFicha ??= $TableFichaTable(this);
  $TableFichaVerTable _tableFichaVer;
  $TableFichaVerTable get tableFichaVer =>
      _tableFichaVer ??= $TableFichaVerTable(this);
  $TableFichaVerItemsTable _tableFichaVerItems;
  $TableFichaVerItemsTable get tableFichaVerItems =>
      _tableFichaVerItems ??= $TableFichaVerItemsTable(this);
  $TablePregFrmDinaTable _tablePregFrmDina;
  $TablePregFrmDinaTable get tablePregFrmDina =>
      _tablePregFrmDina ??= $TablePregFrmDinaTable(this);
  $TableFichaVerPregTable _tableFichaVerPreg;
  $TableFichaVerPregTable get tableFichaVerPreg =>
      _tableFichaVerPreg ??= $TableFichaVerPregTable(this);
  $TableFichaVerItemsPregTabDinTable _tableFichaVerItemsPregTabDin;
  $TableFichaVerItemsPregTabDinTable get tableFichaVerItemsPregTabDin =>
      _tableFichaVerItemsPregTabDin ??=
          $TableFichaVerItemsPregTabDinTable(this);
  $TableOpcFichTable _tableOpcFich;
  $TableOpcFichTable get tableOpcFich =>
      _tableOpcFich ??= $TableOpcFichTable(this);
  $TableFichaOpcTable _tableFichaOpc;
  $TableFichaOpcTable get tableFichaOpc =>
      _tableFichaOpc ??= $TableFichaOpcTable(this);
  $TableNomTabDinTable _tableNomTabDin;
  $TableNomTabDinTable get tableNomTabDin =>
      _tableNomTabDin ??= $TableNomTabDinTable(this);
  $TableTabDinValTable _tableTabDinVal;
  $TableTabDinValTable get tableTabDinVal =>
      _tableTabDinVal ??= $TableTabDinValTable(this);
  $TableTabDinValCondTable _tableTabDinValCond;
  $TableTabDinValCondTable get tableTabDinValCond =>
      _tableTabDinValCond ??= $TableTabDinValCondTable(this);
  $TableUsuariosTable _tableUsuarios;
  $TableUsuariosTable get tableUsuarios =>
      _tableUsuarios ??= $TableUsuariosTable(this);
  $TablePerfSisTable _tablePerfSis;
  $TablePerfSisTable get tablePerfSis =>
      _tablePerfSis ??= $TablePerfSisTable(this);
  $TableSisUsuPerfTable _tableSisUsuPerf;
  $TableSisUsuPerfTable get tableSisUsuPerf =>
      _tableSisUsuPerf ??= $TableSisUsuPerfTable(this);
  $TableRolesTable _tableRoles;
  $TableRolesTable get tableRoles => _tableRoles ??= $TableRolesTable(this);
  $TableRRHHTable _tableRRHH;
  $TableRRHHTable get tableRRHH => _tableRRHH ??= $TableRRHHTable(this);
  $TableRRHHPersTable _tableRRHHPers;
  $TableRRHHPersTable get tableRRHHPers =>
      _tableRRHHPers ??= $TableRRHHPersTable(this);
  $TableRRHHRolTable _tableRRHHRol;
  $TableRRHHRolTable get tableRRHHRol =>
      _tableRRHHRol ??= $TableRRHHRolTable(this);
  $TableTipActAsistTable _tableTipActAsist;
  $TableTipActAsistTable get tableTipActAsist =>
      _tableTipActAsist ??= $TableTipActAsistTable(this);
  $TableUnidMedTable _tableUnidMed;
  $TableUnidMedTable get tableUnidMed =>
      _tableUnidMed ??= $TableUnidMedTable(this);
  $TableViaAdmMedicTable _tableViaAdmMedic;
  $TableViaAdmMedicTable get tableViaAdmMedic =>
      _tableViaAdmMedic ??= $TableViaAdmMedicTable(this);
  $TableActAsistTable _tableActAsist;
  $TableActAsistTable get tableActAsist =>
      _tableActAsist ??= $TableActAsistTable(this);
  $TableAtnClinTable _tableAtnClin;
  $TableAtnClinTable get tableAtnClin =>
      _tableAtnClin ??= $TableAtnClinTable(this);
  $TableDrogasTable _tableDrogas;
  $TableDrogasTable get tableDrogas => _tableDrogas ??= $TableDrogasTable(this);
  $TableFarmacosTable _tableFarmacos;
  $TableFarmacosTable get tableFarmacos =>
      _tableFarmacos ??= $TableFarmacosTable(this);
  $TableFarViaTable _tableFarVia;
  $TableFarViaTable get tableFarVia => _tableFarVia ??= $TableFarViaTable(this);
  $TableMaterialesTable _tableMateriales;
  $TableMaterialesTable get tableMateriales =>
      _tableMateriales ??= $TableMaterialesTable(this);
  $TableMatUniMedTable _tableMatUniMed;
  $TableMatUniMedTable get tableMatUniMed =>
      _tableMatUniMed ??= $TableMatUniMedTable(this);
  $TablePresentacionesTable _tablePresentaciones;
  $TablePresentacionesTable get tablePresentaciones =>
      _tablePresentaciones ??= $TablePresentacionesTable(this);
  $TablePresMedicViaTable _tablePresMedicVia;
  $TablePresMedicViaTable get tablePresMedicVia =>
      _tablePresMedicVia ??= $TablePresMedicViaTable(this);
  $TablePresMedicUniMedTable _tablePresMedicUniMed;
  $TablePresMedicUniMedTable get tablePresMedicUniMed =>
      _tablePresMedicUniMed ??= $TablePresMedicUniMedTable(this);
  UsuarioDao _usuarioDao;
  UsuarioDao get usuarioDao => _usuarioDao ??= UsuarioDao(this as GeoDatabase);
  @override
  List<TableInfo> get allTables => [
        usuarios,
        tableFicha,
        tableFichaVer,
        tableFichaVerItems,
        tablePregFrmDina,
        tableFichaVerPreg,
        tableFichaVerItemsPregTabDin,
        tableOpcFich,
        tableFichaOpc,
        tableNomTabDin,
        tableTabDinVal,
        tableTabDinValCond,
        tableUsuarios,
        tablePerfSis,
        tableSisUsuPerf,
        tableRoles,
        tableRRHH,
        tableRRHHPers,
        tableRRHHRol,
        tableTipActAsist,
        tableUnidMed,
        tableViaAdmMedic,
        tableActAsist,
        tableAtnClin,
        tableDrogas,
        tableFarmacos,
        tableFarVia,
        tableMateriales,
        tableMatUniMed,
        tablePresentaciones,
        tablePresMedicVia,
        tablePresMedicUniMed
      ];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$UsuarioDaoMixin on DatabaseAccessor<GeoDatabase> {
  $UsuariosTable get usuarios => db.usuarios;
}

mixin _$DaoFichaMixin on DatabaseAccessor<GeoDatabase> {
  $TableFichaTable get tableFicha => db.tableFicha;
}

mixin _$DaoFichaVerMixin on DatabaseAccessor<GeoDatabase> {
  $TableFichaVerTable get tableFichaVer => db.tableFichaVer;
}

mixin _$DaoFichaVerItemsMixin on DatabaseAccessor<GeoDatabase> {
  $TableFichaVerItemsTable get tableFichaVerItems => db.tableFichaVerItems;
}

mixin _$DaoPregFrmDinaMixin on DatabaseAccessor<GeoDatabase> {
  $TablePregFrmDinaTable get tablePregFrmDina => db.tablePregFrmDina;
}

mixin _$DaoFichaVerPregMixin on DatabaseAccessor<GeoDatabase> {
  $TableFichaVerPregTable get tableFichaVerPreg => db.tableFichaVerPreg;
}

mixin _$DaoFichaVerItemsPregTabDinMixin on DatabaseAccessor<GeoDatabase> {
  $TableFichaVerItemsPregTabDinTable get tableFichaVerItemsPregTabDin =>
      db.tableFichaVerItemsPregTabDin;
}

mixin _$DaoOpcFichMixin on DatabaseAccessor<GeoDatabase> {
  $TableOpcFichTable get tableOpcFich => db.tableOpcFich;
}

mixin _$DaoFichaOpcMixin on DatabaseAccessor<GeoDatabase> {
  $TableFichaOpcTable get tableFichaOpc => db.tableFichaOpc;
}

mixin _$DaoNomTabDinMixin on DatabaseAccessor<GeoDatabase> {
  $TableNomTabDinTable get tableNomTabDin => db.tableNomTabDin;
}

mixin _$DaoTabDinValMixin on DatabaseAccessor<GeoDatabase> {
  $TableTabDinValTable get tableTabDinVal => db.tableTabDinVal;
}

mixin _$DaoTabDinValCondMixin on DatabaseAccessor<GeoDatabase> {
  $TableTabDinValCondTable get tableTabDinValCond => db.tableTabDinValCond;
}

mixin _$DaoPerfSisMixin on DatabaseAccessor<GeoDatabase> {
  $TablePerfSisTable get tablePerfSis => db.tablePerfSis;
}

mixin _$DaoSisUsuPerfMixin on DatabaseAccessor<GeoDatabase> {
  $TableSisUsuPerfTable get tableSisUsuPerf => db.tableSisUsuPerf;
}

mixin _$DaoRolesMixin on DatabaseAccessor<GeoDatabase> {
  $TableRolesTable get tableRoles => db.tableRoles;
}

mixin _$DaoRRHHMixin on DatabaseAccessor<GeoDatabase> {
  $TableRRHHTable get tableRRHH => db.tableRRHH;
}

mixin _$DaoRRHHPersMixin on DatabaseAccessor<GeoDatabase> {
  $TableRRHHPersTable get tableRRHHPers => db.tableRRHHPers;
}

mixin _$DaoRRHHRolMixin on DatabaseAccessor<GeoDatabase> {
  $TableRRHHRolTable get tableRRHHRol => db.tableRRHHRol;
}

mixin _$DaoTipActAsistMixin on DatabaseAccessor<GeoDatabase> {
  $TableTipActAsistTable get tableTipActAsist => db.tableTipActAsist;
}

mixin _$DaoUnidMedMixin on DatabaseAccessor<GeoDatabase> {
  $TableUnidMedTable get tableUnidMed => db.tableUnidMed;
}

mixin _$DaoViaAdmMedicMixin on DatabaseAccessor<GeoDatabase> {
  $TableViaAdmMedicTable get tableViaAdmMedic => db.tableViaAdmMedic;
}

mixin _$DaoActAsistMixin on DatabaseAccessor<GeoDatabase> {
  $TableActAsistTable get tableActAsist => db.tableActAsist;
}

mixin _$DaoAtnClinMixin on DatabaseAccessor<GeoDatabase> {
  $TableAtnClinTable get tableAtnClin => db.tableAtnClin;
}

mixin _$DaoDrogasMixin on DatabaseAccessor<GeoDatabase> {
  $TableDrogasTable get tableDrogas => db.tableDrogas;
}

mixin _$DaoFarmacosMixin on DatabaseAccessor<GeoDatabase> {
  $TableFarmacosTable get tableFarmacos => db.tableFarmacos;
}

mixin _$DaoFarViaMixin on DatabaseAccessor<GeoDatabase> {
  $TableFarViaTable get tableFarVia => db.tableFarVia;
}

mixin _$DaoMaterialesMixin on DatabaseAccessor<GeoDatabase> {
  $TableMaterialesTable get tableMateriales => db.tableMateriales;
}

mixin _$DaoMatUniMedMixin on DatabaseAccessor<GeoDatabase> {
  $TableMatUniMedTable get tableMatUniMed => db.tableMatUniMed;
}

mixin _$DaoPresentacionesMixin on DatabaseAccessor<GeoDatabase> {
  $TablePresentacionesTable get tablePresentaciones => db.tablePresentaciones;
}

mixin _$DaoPresMedicViaMixin on DatabaseAccessor<GeoDatabase> {
  $TablePresMedicViaTable get tablePresMedicVia => db.tablePresMedicVia;
}

mixin _$DaoPresMedicUniMedMixin on DatabaseAccessor<GeoDatabase> {
  $TablePresMedicUniMedTable get tablePresMedicUniMed =>
      db.tablePresMedicUniMed;
}
