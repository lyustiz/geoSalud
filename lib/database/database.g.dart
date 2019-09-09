// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps
class Ficha extends DataClass implements Insertable<Ficha> {
  final int ficId;
  final String ficNom;
  final int ficFlagHab;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Ficha(
      {@required this.ficId,
      @required this.ficNom,
      @required this.ficFlagHab,
      @required this.statusId,
      @required this.usuId,
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
      ficId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      ficNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}fic_nom']),
      ficFlagHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_flag_hab']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      ficId: serializer.fromJson<int>(json['ficId']),
      ficNom: serializer.fromJson<String>(json['ficNom']),
      ficFlagHab: serializer.fromJson<int>(json['ficFlagHab']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'ficId': serializer.toJson<int>(ficId),
      'ficNom': serializer.toJson<String>(ficNom),
      'ficFlagHab': serializer.toJson<int>(ficFlagHab),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Ficha>>(bool nullToAbsent) {
    return TableFichaCompanion(
      ficId:
          ficId == null && nullToAbsent ? const Value.absent() : Value(ficId),
      ficNom:
          ficNom == null && nullToAbsent ? const Value.absent() : Value(ficNom),
      ficFlagHab: ficFlagHab == null && nullToAbsent
          ? const Value.absent()
          : Value(ficFlagHab),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int ficId,
          String ficNom,
          int ficFlagHab,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Ficha(
        ficId: ficId ?? this.ficId,
        ficNom: ficNom ?? this.ficNom,
        ficFlagHab: ficFlagHab ?? this.ficFlagHab,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Ficha(')
          ..write('ficId: $ficId, ')
          ..write('ficNom: $ficNom, ')
          ..write('ficFlagHab: $ficFlagHab, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      ficId.hashCode,
      $mrjc(
          ficNom.hashCode,
          $mrjc(
              ficFlagHab.hashCode,
              $mrjc(
                  statusId.hashCode,
                  $mrjc(
                      usuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Ficha &&
          other.ficId == ficId &&
          other.ficNom == ficNom &&
          other.ficFlagHab == ficFlagHab &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaCompanion extends UpdateCompanion<Ficha> {
  final Value<int> ficId;
  final Value<String> ficNom;
  final Value<int> ficFlagHab;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaCompanion({
    this.ficId = const Value.absent(),
    this.ficNom = const Value.absent(),
    this.ficFlagHab = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaCompanion copyWith(
      {Value<int> ficId,
      Value<String> ficNom,
      Value<int> ficFlagHab,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaCompanion(
      ficId: ficId ?? this.ficId,
      ficNom: ficNom ?? this.ficNom,
      ficFlagHab: ficFlagHab ?? this.ficFlagHab,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _ficIdMeta = const VerificationMeta('ficId');
  GeneratedIntColumn _ficId;
  @override
  GeneratedIntColumn get ficId => _ficId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _ficNomMeta = const VerificationMeta('ficNom');
  GeneratedTextColumn _ficNom;
  @override
  GeneratedTextColumn get ficNom => _ficNom ??= _constructFicNom();
  GeneratedTextColumn _constructFicNom() {
    return GeneratedTextColumn(
      'fic_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ficFlagHabMeta = const VerificationMeta('ficFlagHab');
  GeneratedIntColumn _ficFlagHab;
  @override
  GeneratedIntColumn get ficFlagHab => _ficFlagHab ??= _constructFicFlagHab();
  GeneratedIntColumn _constructFicFlagHab() {
    return GeneratedIntColumn(
      'fic_flag_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        ficId,
        ficNom,
        ficFlagHab,
        statusId,
        usuId,
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
    if (d.ficId.present) {
      context.handle(
          _ficIdMeta, ficId.isAcceptableValue(d.ficId.value, _ficIdMeta));
    } else if (ficId.isRequired && isInserting) {
      context.missing(_ficIdMeta);
    }
    if (d.ficNom.present) {
      context.handle(
          _ficNomMeta, ficNom.isAcceptableValue(d.ficNom.value, _ficNomMeta));
    } else if (ficNom.isRequired && isInserting) {
      context.missing(_ficNomMeta);
    }
    if (d.ficFlagHab.present) {
      context.handle(_ficFlagHabMeta,
          ficFlagHab.isAcceptableValue(d.ficFlagHab.value, _ficFlagHabMeta));
    } else if (ficFlagHab.isRequired && isInserting) {
      context.missing(_ficFlagHabMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {ficId};
  @override
  Ficha map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Ficha.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaCompanion d) {
    final map = <String, Variable>{};
    if (d.ficId.present) {
      map['fic_id'] = Variable<int, IntType>(d.ficId.value);
    }
    if (d.ficNom.present) {
      map['fic_nom'] = Variable<String, StringType>(d.ficNom.value);
    }
    if (d.ficFlagHab.present) {
      map['fic_flag_hab'] = Variable<int, IntType>(d.ficFlagHab.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int ficId;
  final int ficVerId;
  final String ficVerSts;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaVer(
      {@required this.ficId,
      @required this.ficVerId,
      @required this.ficVerSts,
      @required this.statusId,
      @required this.usuId,
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
      ficId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      ficVerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_id']),
      ficVerSts: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_sts']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      ficId: serializer.fromJson<int>(json['ficId']),
      ficVerId: serializer.fromJson<int>(json['ficVerId']),
      ficVerSts: serializer.fromJson<String>(json['ficVerSts']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'ficId': serializer.toJson<int>(ficId),
      'ficVerId': serializer.toJson<int>(ficVerId),
      'ficVerSts': serializer.toJson<String>(ficVerSts),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaVer>>(bool nullToAbsent) {
    return TableFichaVerCompanion(
      ficId:
          ficId == null && nullToAbsent ? const Value.absent() : Value(ficId),
      ficVerId: ficVerId == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerId),
      ficVerSts: ficVerSts == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerSts),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int ficId,
          int ficVerId,
          String ficVerSts,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaVer(
        ficId: ficId ?? this.ficId,
        ficVerId: ficVerId ?? this.ficVerId,
        ficVerSts: ficVerSts ?? this.ficVerSts,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaVer(')
          ..write('ficId: $ficId, ')
          ..write('ficVerId: $ficVerId, ')
          ..write('ficVerSts: $ficVerSts, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      ficId.hashCode,
      $mrjc(
          ficVerId.hashCode,
          $mrjc(
              ficVerSts.hashCode,
              $mrjc(
                  statusId.hashCode,
                  $mrjc(
                      usuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FichaVer &&
          other.ficId == ficId &&
          other.ficVerId == ficVerId &&
          other.ficVerSts == ficVerSts &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaVerCompanion extends UpdateCompanion<FichaVer> {
  final Value<int> ficId;
  final Value<int> ficVerId;
  final Value<String> ficVerSts;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaVerCompanion({
    this.ficId = const Value.absent(),
    this.ficVerId = const Value.absent(),
    this.ficVerSts = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaVerCompanion copyWith(
      {Value<int> ficId,
      Value<int> ficVerId,
      Value<String> ficVerSts,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaVerCompanion(
      ficId: ficId ?? this.ficId,
      ficVerId: ficVerId ?? this.ficVerId,
      ficVerSts: ficVerSts ?? this.ficVerSts,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _ficIdMeta = const VerificationMeta('ficId');
  GeneratedIntColumn _ficId;
  @override
  GeneratedIntColumn get ficId => _ficId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _ficVerIdMeta = const VerificationMeta('ficVerId');
  GeneratedIntColumn _ficVerId;
  @override
  GeneratedIntColumn get ficVerId => _ficVerId ??= _constructFicVerId();
  GeneratedIntColumn _constructFicVerId() {
    return GeneratedIntColumn('fic_ver_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _ficVerStsMeta = const VerificationMeta('ficVerSts');
  GeneratedTextColumn _ficVerSts;
  @override
  GeneratedTextColumn get ficVerSts => _ficVerSts ??= _constructFicVerSts();
  GeneratedTextColumn _constructFicVerSts() {
    return GeneratedTextColumn(
      'fic_ver_sts',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        ficId,
        ficVerId,
        ficVerSts,
        statusId,
        usuId,
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
    if (d.ficId.present) {
      context.handle(
          _ficIdMeta, ficId.isAcceptableValue(d.ficId.value, _ficIdMeta));
    } else if (ficId.isRequired && isInserting) {
      context.missing(_ficIdMeta);
    }
    if (d.ficVerId.present) {
      context.handle(_ficVerIdMeta,
          ficVerId.isAcceptableValue(d.ficVerId.value, _ficVerIdMeta));
    } else if (ficVerId.isRequired && isInserting) {
      context.missing(_ficVerIdMeta);
    }
    if (d.ficVerSts.present) {
      context.handle(_ficVerStsMeta,
          ficVerSts.isAcceptableValue(d.ficVerSts.value, _ficVerStsMeta));
    } else if (ficVerSts.isRequired && isInserting) {
      context.missing(_ficVerStsMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {ficVerId};
  @override
  FichaVer map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FichaVer.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaVerCompanion d) {
    final map = <String, Variable>{};
    if (d.ficId.present) {
      map['fic_id'] = Variable<int, IntType>(d.ficId.value);
    }
    if (d.ficVerId.present) {
      map['fic_ver_id'] = Variable<int, IntType>(d.ficVerId.value);
    }
    if (d.ficVerSts.present) {
      map['fic_ver_sts'] = Variable<String, StringType>(d.ficVerSts.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int ficId;
  final int ficVerId;
  final int ficVerItemsId;
  final String ficVerItemsNom;
  final int ficVerItemsOrd;
  final int ficVerItemsFlgEvolu;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaVerItems(
      {@required this.ficId,
      @required this.ficVerId,
      @required this.ficVerItemsId,
      @required this.ficVerItemsNom,
      @required this.ficVerItemsOrd,
      @required this.ficVerItemsFlgEvolu,
      @required this.statusId,
      @required this.usuId,
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
      ficId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      ficVerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_id']),
      ficVerItemsId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_id']),
      ficVerItemsNom: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_nom']),
      ficVerItemsOrd: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_ord']),
      ficVerItemsFlgEvolu: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}fic_ver_items_flg_evolu']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      ficId: serializer.fromJson<int>(json['ficId']),
      ficVerId: serializer.fromJson<int>(json['ficVerId']),
      ficVerItemsId: serializer.fromJson<int>(json['ficVerItemsId']),
      ficVerItemsNom: serializer.fromJson<String>(json['ficVerItemsNom']),
      ficVerItemsOrd: serializer.fromJson<int>(json['ficVerItemsOrd']),
      ficVerItemsFlgEvolu:
          serializer.fromJson<int>(json['ficVerItemsFlgEvolu']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'ficId': serializer.toJson<int>(ficId),
      'ficVerId': serializer.toJson<int>(ficVerId),
      'ficVerItemsId': serializer.toJson<int>(ficVerItemsId),
      'ficVerItemsNom': serializer.toJson<String>(ficVerItemsNom),
      'ficVerItemsOrd': serializer.toJson<int>(ficVerItemsOrd),
      'ficVerItemsFlgEvolu': serializer.toJson<int>(ficVerItemsFlgEvolu),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaVerItems>>(
      bool nullToAbsent) {
    return TableFichaVerItemsCompanion(
      ficId:
          ficId == null && nullToAbsent ? const Value.absent() : Value(ficId),
      ficVerId: ficVerId == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerId),
      ficVerItemsId: ficVerItemsId == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerItemsId),
      ficVerItemsNom: ficVerItemsNom == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerItemsNom),
      ficVerItemsOrd: ficVerItemsOrd == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerItemsOrd),
      ficVerItemsFlgEvolu: ficVerItemsFlgEvolu == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerItemsFlgEvolu),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int ficId,
          int ficVerId,
          int ficVerItemsId,
          String ficVerItemsNom,
          int ficVerItemsOrd,
          int ficVerItemsFlgEvolu,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaVerItems(
        ficId: ficId ?? this.ficId,
        ficVerId: ficVerId ?? this.ficVerId,
        ficVerItemsId: ficVerItemsId ?? this.ficVerItemsId,
        ficVerItemsNom: ficVerItemsNom ?? this.ficVerItemsNom,
        ficVerItemsOrd: ficVerItemsOrd ?? this.ficVerItemsOrd,
        ficVerItemsFlgEvolu: ficVerItemsFlgEvolu ?? this.ficVerItemsFlgEvolu,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaVerItems(')
          ..write('ficId: $ficId, ')
          ..write('ficVerId: $ficVerId, ')
          ..write('ficVerItemsId: $ficVerItemsId, ')
          ..write('ficVerItemsNom: $ficVerItemsNom, ')
          ..write('ficVerItemsOrd: $ficVerItemsOrd, ')
          ..write('ficVerItemsFlgEvolu: $ficVerItemsFlgEvolu, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      ficId.hashCode,
      $mrjc(
          ficVerId.hashCode,
          $mrjc(
              ficVerItemsId.hashCode,
              $mrjc(
                  ficVerItemsNom.hashCode,
                  $mrjc(
                      ficVerItemsOrd.hashCode,
                      $mrjc(
                          ficVerItemsFlgEvolu.hashCode,
                          $mrjc(
                              statusId.hashCode,
                              $mrjc(
                                  usuId.hashCode,
                                  $mrjc(
                                      createdAt.hashCode,
                                      $mrjc(updatedAt.hashCode,
                                          deletedAt.hashCode)))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FichaVerItems &&
          other.ficId == ficId &&
          other.ficVerId == ficVerId &&
          other.ficVerItemsId == ficVerItemsId &&
          other.ficVerItemsNom == ficVerItemsNom &&
          other.ficVerItemsOrd == ficVerItemsOrd &&
          other.ficVerItemsFlgEvolu == ficVerItemsFlgEvolu &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaVerItemsCompanion extends UpdateCompanion<FichaVerItems> {
  final Value<int> ficId;
  final Value<int> ficVerId;
  final Value<int> ficVerItemsId;
  final Value<String> ficVerItemsNom;
  final Value<int> ficVerItemsOrd;
  final Value<int> ficVerItemsFlgEvolu;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaVerItemsCompanion({
    this.ficId = const Value.absent(),
    this.ficVerId = const Value.absent(),
    this.ficVerItemsId = const Value.absent(),
    this.ficVerItemsNom = const Value.absent(),
    this.ficVerItemsOrd = const Value.absent(),
    this.ficVerItemsFlgEvolu = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaVerItemsCompanion copyWith(
      {Value<int> ficId,
      Value<int> ficVerId,
      Value<int> ficVerItemsId,
      Value<String> ficVerItemsNom,
      Value<int> ficVerItemsOrd,
      Value<int> ficVerItemsFlgEvolu,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaVerItemsCompanion(
      ficId: ficId ?? this.ficId,
      ficVerId: ficVerId ?? this.ficVerId,
      ficVerItemsId: ficVerItemsId ?? this.ficVerItemsId,
      ficVerItemsNom: ficVerItemsNom ?? this.ficVerItemsNom,
      ficVerItemsOrd: ficVerItemsOrd ?? this.ficVerItemsOrd,
      ficVerItemsFlgEvolu: ficVerItemsFlgEvolu ?? this.ficVerItemsFlgEvolu,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _ficIdMeta = const VerificationMeta('ficId');
  GeneratedIntColumn _ficId;
  @override
  GeneratedIntColumn get ficId => _ficId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _ficVerIdMeta = const VerificationMeta('ficVerId');
  GeneratedIntColumn _ficVerId;
  @override
  GeneratedIntColumn get ficVerId => _ficVerId ??= _constructFicVerId();
  GeneratedIntColumn _constructFicVerId() {
    return GeneratedIntColumn('fic_ver_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVer(ficVerId)');
  }

  final VerificationMeta _ficVerItemsIdMeta =
      const VerificationMeta('ficVerItemsId');
  GeneratedIntColumn _ficVerItemsId;
  @override
  GeneratedIntColumn get ficVerItemsId =>
      _ficVerItemsId ??= _constructFicVerItemsId();
  GeneratedIntColumn _constructFicVerItemsId() {
    return GeneratedIntColumn('fic_ver_items_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _ficVerItemsNomMeta =
      const VerificationMeta('ficVerItemsNom');
  GeneratedTextColumn _ficVerItemsNom;
  @override
  GeneratedTextColumn get ficVerItemsNom =>
      _ficVerItemsNom ??= _constructFicVerItemsNom();
  GeneratedTextColumn _constructFicVerItemsNom() {
    return GeneratedTextColumn(
      'fic_ver_items_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ficVerItemsOrdMeta =
      const VerificationMeta('ficVerItemsOrd');
  GeneratedIntColumn _ficVerItemsOrd;
  @override
  GeneratedIntColumn get ficVerItemsOrd =>
      _ficVerItemsOrd ??= _constructFicVerItemsOrd();
  GeneratedIntColumn _constructFicVerItemsOrd() {
    return GeneratedIntColumn(
      'fic_ver_items_ord',
      $tableName,
      false,
    );
  }

  final VerificationMeta _ficVerItemsFlgEvoluMeta =
      const VerificationMeta('ficVerItemsFlgEvolu');
  GeneratedIntColumn _ficVerItemsFlgEvolu;
  @override
  GeneratedIntColumn get ficVerItemsFlgEvolu =>
      _ficVerItemsFlgEvolu ??= _constructFicVerItemsFlgEvolu();
  GeneratedIntColumn _constructFicVerItemsFlgEvolu() {
    return GeneratedIntColumn(
      'fic_ver_items_flg_evolu',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        ficId,
        ficVerId,
        ficVerItemsId,
        ficVerItemsNom,
        ficVerItemsOrd,
        ficVerItemsFlgEvolu,
        statusId,
        usuId,
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
    if (d.ficId.present) {
      context.handle(
          _ficIdMeta, ficId.isAcceptableValue(d.ficId.value, _ficIdMeta));
    } else if (ficId.isRequired && isInserting) {
      context.missing(_ficIdMeta);
    }
    if (d.ficVerId.present) {
      context.handle(_ficVerIdMeta,
          ficVerId.isAcceptableValue(d.ficVerId.value, _ficVerIdMeta));
    } else if (ficVerId.isRequired && isInserting) {
      context.missing(_ficVerIdMeta);
    }
    if (d.ficVerItemsId.present) {
      context.handle(
          _ficVerItemsIdMeta,
          ficVerItemsId.isAcceptableValue(
              d.ficVerItemsId.value, _ficVerItemsIdMeta));
    } else if (ficVerItemsId.isRequired && isInserting) {
      context.missing(_ficVerItemsIdMeta);
    }
    if (d.ficVerItemsNom.present) {
      context.handle(
          _ficVerItemsNomMeta,
          ficVerItemsNom.isAcceptableValue(
              d.ficVerItemsNom.value, _ficVerItemsNomMeta));
    } else if (ficVerItemsNom.isRequired && isInserting) {
      context.missing(_ficVerItemsNomMeta);
    }
    if (d.ficVerItemsOrd.present) {
      context.handle(
          _ficVerItemsOrdMeta,
          ficVerItemsOrd.isAcceptableValue(
              d.ficVerItemsOrd.value, _ficVerItemsOrdMeta));
    } else if (ficVerItemsOrd.isRequired && isInserting) {
      context.missing(_ficVerItemsOrdMeta);
    }
    if (d.ficVerItemsFlgEvolu.present) {
      context.handle(
          _ficVerItemsFlgEvoluMeta,
          ficVerItemsFlgEvolu.isAcceptableValue(
              d.ficVerItemsFlgEvolu.value, _ficVerItemsFlgEvoluMeta));
    } else if (ficVerItemsFlgEvolu.isRequired && isInserting) {
      context.missing(_ficVerItemsFlgEvoluMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {ficVerItemsId};
  @override
  FichaVerItems map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FichaVerItems.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaVerItemsCompanion d) {
    final map = <String, Variable>{};
    if (d.ficId.present) {
      map['fic_id'] = Variable<int, IntType>(d.ficId.value);
    }
    if (d.ficVerId.present) {
      map['fic_ver_id'] = Variable<int, IntType>(d.ficVerId.value);
    }
    if (d.ficVerItemsId.present) {
      map['fic_ver_items_id'] = Variable<int, IntType>(d.ficVerItemsId.value);
    }
    if (d.ficVerItemsNom.present) {
      map['fic_ver_items_nom'] =
          Variable<String, StringType>(d.ficVerItemsNom.value);
    }
    if (d.ficVerItemsOrd.present) {
      map['fic_ver_items_ord'] = Variable<int, IntType>(d.ficVerItemsOrd.value);
    }
    if (d.ficVerItemsFlgEvolu.present) {
      map['fic_ver_items_flg_evolu'] =
          Variable<int, IntType>(d.ficVerItemsFlgEvolu.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int pregFrmDinaId;
  final String pregFrmDinaDesc;
  final String pregFrmDinaTitulo;
  final int pregFrmDinaTipPreg;
  final int pregFrmDinaDefaNomTabDinId;
  final int pregFrmDinaValMin;
  final int pregFrmDinaValMax;
  final String pregFrmDinaTipDefa;
  final String pregFrmDinaValDefa;
  final String pregFrmDinaDefaValMemo;
  final int pregFrmDinaDefaTabDinValId;
  final String pregFrmDinaSufijo;
  final String pregFrmDinaHelp;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  PregFrmDina(
      {@required this.pregFrmDinaId,
      @required this.pregFrmDinaDesc,
      @required this.pregFrmDinaTitulo,
      @required this.pregFrmDinaTipPreg,
      @required this.pregFrmDinaDefaNomTabDinId,
      @required this.pregFrmDinaValMin,
      @required this.pregFrmDinaValMax,
      @required this.pregFrmDinaTipDefa,
      @required this.pregFrmDinaValDefa,
      @required this.pregFrmDinaDefaValMemo,
      @required this.pregFrmDinaDefaTabDinValId,
      @required this.pregFrmDinaSufijo,
      @required this.pregFrmDinaHelp,
      @required this.statusId,
      @required this.usuId,
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
      pregFrmDinaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}preg_frm_dina_id']),
      pregFrmDinaDesc: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_desc']),
      pregFrmDinaTitulo: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_titulo']),
      pregFrmDinaTipPreg: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_tip_preg']),
      pregFrmDinaDefaNomTabDinId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_defa_nom_tab_din_id']),
      pregFrmDinaValMin: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_val_min']),
      pregFrmDinaValMax: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_val_max']),
      pregFrmDinaTipDefa: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_tip_defa']),
      pregFrmDinaValDefa: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_val_defa']),
      pregFrmDinaDefaValMemo: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_defa_val_memo']),
      pregFrmDinaDefaTabDinValId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_defa_tab_din_val_id']),
      pregFrmDinaSufijo: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_sufijo']),
      pregFrmDinaHelp: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}preg_frm_dina_help']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      pregFrmDinaId: serializer.fromJson<int>(json['pregFrmDinaId']),
      pregFrmDinaDesc: serializer.fromJson<String>(json['pregFrmDinaDesc']),
      pregFrmDinaTitulo: serializer.fromJson<String>(json['pregFrmDinaTitulo']),
      pregFrmDinaTipPreg: serializer.fromJson<int>(json['pregFrmDinaTipPreg']),
      pregFrmDinaDefaNomTabDinId:
          serializer.fromJson<int>(json['pregFrmDinaDefaNomTabDinId']),
      pregFrmDinaValMin: serializer.fromJson<int>(json['pregFrmDinaValMin']),
      pregFrmDinaValMax: serializer.fromJson<int>(json['pregFrmDinaValMax']),
      pregFrmDinaTipDefa:
          serializer.fromJson<String>(json['pregFrmDinaTipDefa']),
      pregFrmDinaValDefa:
          serializer.fromJson<String>(json['pregFrmDinaValDefa']),
      pregFrmDinaDefaValMemo:
          serializer.fromJson<String>(json['pregFrmDinaDefaValMemo']),
      pregFrmDinaDefaTabDinValId:
          serializer.fromJson<int>(json['pregFrmDinaDefaTabDinValId']),
      pregFrmDinaSufijo: serializer.fromJson<String>(json['pregFrmDinaSufijo']),
      pregFrmDinaHelp: serializer.fromJson<String>(json['pregFrmDinaHelp']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'pregFrmDinaId': serializer.toJson<int>(pregFrmDinaId),
      'pregFrmDinaDesc': serializer.toJson<String>(pregFrmDinaDesc),
      'pregFrmDinaTitulo': serializer.toJson<String>(pregFrmDinaTitulo),
      'pregFrmDinaTipPreg': serializer.toJson<int>(pregFrmDinaTipPreg),
      'pregFrmDinaDefaNomTabDinId':
          serializer.toJson<int>(pregFrmDinaDefaNomTabDinId),
      'pregFrmDinaValMin': serializer.toJson<int>(pregFrmDinaValMin),
      'pregFrmDinaValMax': serializer.toJson<int>(pregFrmDinaValMax),
      'pregFrmDinaTipDefa': serializer.toJson<String>(pregFrmDinaTipDefa),
      'pregFrmDinaValDefa': serializer.toJson<String>(pregFrmDinaValDefa),
      'pregFrmDinaDefaValMemo':
          serializer.toJson<String>(pregFrmDinaDefaValMemo),
      'pregFrmDinaDefaTabDinValId':
          serializer.toJson<int>(pregFrmDinaDefaTabDinValId),
      'pregFrmDinaSufijo': serializer.toJson<String>(pregFrmDinaSufijo),
      'pregFrmDinaHelp': serializer.toJson<String>(pregFrmDinaHelp),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<PregFrmDina>>(bool nullToAbsent) {
    return TablePregFrmDinaCompanion(
      pregFrmDinaId: pregFrmDinaId == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaId),
      pregFrmDinaDesc: pregFrmDinaDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaDesc),
      pregFrmDinaTitulo: pregFrmDinaTitulo == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaTitulo),
      pregFrmDinaTipPreg: pregFrmDinaTipPreg == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaTipPreg),
      pregFrmDinaDefaNomTabDinId:
          pregFrmDinaDefaNomTabDinId == null && nullToAbsent
              ? const Value.absent()
              : Value(pregFrmDinaDefaNomTabDinId),
      pregFrmDinaValMin: pregFrmDinaValMin == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaValMin),
      pregFrmDinaValMax: pregFrmDinaValMax == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaValMax),
      pregFrmDinaTipDefa: pregFrmDinaTipDefa == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaTipDefa),
      pregFrmDinaValDefa: pregFrmDinaValDefa == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaValDefa),
      pregFrmDinaDefaValMemo: pregFrmDinaDefaValMemo == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaDefaValMemo),
      pregFrmDinaDefaTabDinValId:
          pregFrmDinaDefaTabDinValId == null && nullToAbsent
              ? const Value.absent()
              : Value(pregFrmDinaDefaTabDinValId),
      pregFrmDinaSufijo: pregFrmDinaSufijo == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaSufijo),
      pregFrmDinaHelp: pregFrmDinaHelp == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaHelp),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int pregFrmDinaId,
          String pregFrmDinaDesc,
          String pregFrmDinaTitulo,
          int pregFrmDinaTipPreg,
          int pregFrmDinaDefaNomTabDinId,
          int pregFrmDinaValMin,
          int pregFrmDinaValMax,
          String pregFrmDinaTipDefa,
          String pregFrmDinaValDefa,
          String pregFrmDinaDefaValMemo,
          int pregFrmDinaDefaTabDinValId,
          String pregFrmDinaSufijo,
          String pregFrmDinaHelp,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      PregFrmDina(
        pregFrmDinaId: pregFrmDinaId ?? this.pregFrmDinaId,
        pregFrmDinaDesc: pregFrmDinaDesc ?? this.pregFrmDinaDesc,
        pregFrmDinaTitulo: pregFrmDinaTitulo ?? this.pregFrmDinaTitulo,
        pregFrmDinaTipPreg: pregFrmDinaTipPreg ?? this.pregFrmDinaTipPreg,
        pregFrmDinaDefaNomTabDinId:
            pregFrmDinaDefaNomTabDinId ?? this.pregFrmDinaDefaNomTabDinId,
        pregFrmDinaValMin: pregFrmDinaValMin ?? this.pregFrmDinaValMin,
        pregFrmDinaValMax: pregFrmDinaValMax ?? this.pregFrmDinaValMax,
        pregFrmDinaTipDefa: pregFrmDinaTipDefa ?? this.pregFrmDinaTipDefa,
        pregFrmDinaValDefa: pregFrmDinaValDefa ?? this.pregFrmDinaValDefa,
        pregFrmDinaDefaValMemo:
            pregFrmDinaDefaValMemo ?? this.pregFrmDinaDefaValMemo,
        pregFrmDinaDefaTabDinValId:
            pregFrmDinaDefaTabDinValId ?? this.pregFrmDinaDefaTabDinValId,
        pregFrmDinaSufijo: pregFrmDinaSufijo ?? this.pregFrmDinaSufijo,
        pregFrmDinaHelp: pregFrmDinaHelp ?? this.pregFrmDinaHelp,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PregFrmDina(')
          ..write('pregFrmDinaId: $pregFrmDinaId, ')
          ..write('pregFrmDinaDesc: $pregFrmDinaDesc, ')
          ..write('pregFrmDinaTitulo: $pregFrmDinaTitulo, ')
          ..write('pregFrmDinaTipPreg: $pregFrmDinaTipPreg, ')
          ..write('pregFrmDinaDefaNomTabDinId: $pregFrmDinaDefaNomTabDinId, ')
          ..write('pregFrmDinaValMin: $pregFrmDinaValMin, ')
          ..write('pregFrmDinaValMax: $pregFrmDinaValMax, ')
          ..write('pregFrmDinaTipDefa: $pregFrmDinaTipDefa, ')
          ..write('pregFrmDinaValDefa: $pregFrmDinaValDefa, ')
          ..write('pregFrmDinaDefaValMemo: $pregFrmDinaDefaValMemo, ')
          ..write('pregFrmDinaDefaTabDinValId: $pregFrmDinaDefaTabDinValId, ')
          ..write('pregFrmDinaSufijo: $pregFrmDinaSufijo, ')
          ..write('pregFrmDinaHelp: $pregFrmDinaHelp, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      pregFrmDinaId.hashCode,
      $mrjc(
          pregFrmDinaDesc.hashCode,
          $mrjc(
              pregFrmDinaTitulo.hashCode,
              $mrjc(
                  pregFrmDinaTipPreg.hashCode,
                  $mrjc(
                      pregFrmDinaDefaNomTabDinId.hashCode,
                      $mrjc(
                          pregFrmDinaValMin.hashCode,
                          $mrjc(
                              pregFrmDinaValMax.hashCode,
                              $mrjc(
                                  pregFrmDinaTipDefa.hashCode,
                                  $mrjc(
                                      pregFrmDinaValDefa.hashCode,
                                      $mrjc(
                                          pregFrmDinaDefaValMemo.hashCode,
                                          $mrjc(
                                              pregFrmDinaDefaTabDinValId
                                                  .hashCode,
                                              $mrjc(
                                                  pregFrmDinaSufijo.hashCode,
                                                  $mrjc(
                                                      pregFrmDinaHelp.hashCode,
                                                      $mrjc(
                                                          statusId.hashCode,
                                                          $mrjc(
                                                              usuId.hashCode,
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
          other.pregFrmDinaId == pregFrmDinaId &&
          other.pregFrmDinaDesc == pregFrmDinaDesc &&
          other.pregFrmDinaTitulo == pregFrmDinaTitulo &&
          other.pregFrmDinaTipPreg == pregFrmDinaTipPreg &&
          other.pregFrmDinaDefaNomTabDinId == pregFrmDinaDefaNomTabDinId &&
          other.pregFrmDinaValMin == pregFrmDinaValMin &&
          other.pregFrmDinaValMax == pregFrmDinaValMax &&
          other.pregFrmDinaTipDefa == pregFrmDinaTipDefa &&
          other.pregFrmDinaValDefa == pregFrmDinaValDefa &&
          other.pregFrmDinaDefaValMemo == pregFrmDinaDefaValMemo &&
          other.pregFrmDinaDefaTabDinValId == pregFrmDinaDefaTabDinValId &&
          other.pregFrmDinaSufijo == pregFrmDinaSufijo &&
          other.pregFrmDinaHelp == pregFrmDinaHelp &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePregFrmDinaCompanion extends UpdateCompanion<PregFrmDina> {
  final Value<int> pregFrmDinaId;
  final Value<String> pregFrmDinaDesc;
  final Value<String> pregFrmDinaTitulo;
  final Value<int> pregFrmDinaTipPreg;
  final Value<int> pregFrmDinaDefaNomTabDinId;
  final Value<int> pregFrmDinaValMin;
  final Value<int> pregFrmDinaValMax;
  final Value<String> pregFrmDinaTipDefa;
  final Value<String> pregFrmDinaValDefa;
  final Value<String> pregFrmDinaDefaValMemo;
  final Value<int> pregFrmDinaDefaTabDinValId;
  final Value<String> pregFrmDinaSufijo;
  final Value<String> pregFrmDinaHelp;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePregFrmDinaCompanion({
    this.pregFrmDinaId = const Value.absent(),
    this.pregFrmDinaDesc = const Value.absent(),
    this.pregFrmDinaTitulo = const Value.absent(),
    this.pregFrmDinaTipPreg = const Value.absent(),
    this.pregFrmDinaDefaNomTabDinId = const Value.absent(),
    this.pregFrmDinaValMin = const Value.absent(),
    this.pregFrmDinaValMax = const Value.absent(),
    this.pregFrmDinaTipDefa = const Value.absent(),
    this.pregFrmDinaValDefa = const Value.absent(),
    this.pregFrmDinaDefaValMemo = const Value.absent(),
    this.pregFrmDinaDefaTabDinValId = const Value.absent(),
    this.pregFrmDinaSufijo = const Value.absent(),
    this.pregFrmDinaHelp = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePregFrmDinaCompanion copyWith(
      {Value<int> pregFrmDinaId,
      Value<String> pregFrmDinaDesc,
      Value<String> pregFrmDinaTitulo,
      Value<int> pregFrmDinaTipPreg,
      Value<int> pregFrmDinaDefaNomTabDinId,
      Value<int> pregFrmDinaValMin,
      Value<int> pregFrmDinaValMax,
      Value<String> pregFrmDinaTipDefa,
      Value<String> pregFrmDinaValDefa,
      Value<String> pregFrmDinaDefaValMemo,
      Value<int> pregFrmDinaDefaTabDinValId,
      Value<String> pregFrmDinaSufijo,
      Value<String> pregFrmDinaHelp,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePregFrmDinaCompanion(
      pregFrmDinaId: pregFrmDinaId ?? this.pregFrmDinaId,
      pregFrmDinaDesc: pregFrmDinaDesc ?? this.pregFrmDinaDesc,
      pregFrmDinaTitulo: pregFrmDinaTitulo ?? this.pregFrmDinaTitulo,
      pregFrmDinaTipPreg: pregFrmDinaTipPreg ?? this.pregFrmDinaTipPreg,
      pregFrmDinaDefaNomTabDinId:
          pregFrmDinaDefaNomTabDinId ?? this.pregFrmDinaDefaNomTabDinId,
      pregFrmDinaValMin: pregFrmDinaValMin ?? this.pregFrmDinaValMin,
      pregFrmDinaValMax: pregFrmDinaValMax ?? this.pregFrmDinaValMax,
      pregFrmDinaTipDefa: pregFrmDinaTipDefa ?? this.pregFrmDinaTipDefa,
      pregFrmDinaValDefa: pregFrmDinaValDefa ?? this.pregFrmDinaValDefa,
      pregFrmDinaDefaValMemo:
          pregFrmDinaDefaValMemo ?? this.pregFrmDinaDefaValMemo,
      pregFrmDinaDefaTabDinValId:
          pregFrmDinaDefaTabDinValId ?? this.pregFrmDinaDefaTabDinValId,
      pregFrmDinaSufijo: pregFrmDinaSufijo ?? this.pregFrmDinaSufijo,
      pregFrmDinaHelp: pregFrmDinaHelp ?? this.pregFrmDinaHelp,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _pregFrmDinaIdMeta =
      const VerificationMeta('pregFrmDinaId');
  GeneratedIntColumn _pregFrmDinaId;
  @override
  GeneratedIntColumn get pregFrmDinaId =>
      _pregFrmDinaId ??= _constructPregFrmDinaId();
  GeneratedIntColumn _constructPregFrmDinaId() {
    return GeneratedIntColumn('preg_frm_dina_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _pregFrmDinaDescMeta =
      const VerificationMeta('pregFrmDinaDesc');
  GeneratedTextColumn _pregFrmDinaDesc;
  @override
  GeneratedTextColumn get pregFrmDinaDesc =>
      _pregFrmDinaDesc ??= _constructPregFrmDinaDesc();
  GeneratedTextColumn _constructPregFrmDinaDesc() {
    return GeneratedTextColumn(
      'preg_frm_dina_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaTituloMeta =
      const VerificationMeta('pregFrmDinaTitulo');
  GeneratedTextColumn _pregFrmDinaTitulo;
  @override
  GeneratedTextColumn get pregFrmDinaTitulo =>
      _pregFrmDinaTitulo ??= _constructPregFrmDinaTitulo();
  GeneratedTextColumn _constructPregFrmDinaTitulo() {
    return GeneratedTextColumn(
      'preg_frm_dina_titulo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaTipPregMeta =
      const VerificationMeta('pregFrmDinaTipPreg');
  GeneratedIntColumn _pregFrmDinaTipPreg;
  @override
  GeneratedIntColumn get pregFrmDinaTipPreg =>
      _pregFrmDinaTipPreg ??= _constructPregFrmDinaTipPreg();
  GeneratedIntColumn _constructPregFrmDinaTipPreg() {
    return GeneratedIntColumn(
      'preg_frm_dina_tip_preg',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaDefaNomTabDinIdMeta =
      const VerificationMeta('pregFrmDinaDefaNomTabDinId');
  GeneratedIntColumn _pregFrmDinaDefaNomTabDinId;
  @override
  GeneratedIntColumn get pregFrmDinaDefaNomTabDinId =>
      _pregFrmDinaDefaNomTabDinId ??= _constructPregFrmDinaDefaNomTabDinId();
  GeneratedIntColumn _constructPregFrmDinaDefaNomTabDinId() {
    return GeneratedIntColumn(
      'preg_frm_dina_defa_nom_tab_din_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaValMinMeta =
      const VerificationMeta('pregFrmDinaValMin');
  GeneratedIntColumn _pregFrmDinaValMin;
  @override
  GeneratedIntColumn get pregFrmDinaValMin =>
      _pregFrmDinaValMin ??= _constructPregFrmDinaValMin();
  GeneratedIntColumn _constructPregFrmDinaValMin() {
    return GeneratedIntColumn(
      'preg_frm_dina_val_min',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaValMaxMeta =
      const VerificationMeta('pregFrmDinaValMax');
  GeneratedIntColumn _pregFrmDinaValMax;
  @override
  GeneratedIntColumn get pregFrmDinaValMax =>
      _pregFrmDinaValMax ??= _constructPregFrmDinaValMax();
  GeneratedIntColumn _constructPregFrmDinaValMax() {
    return GeneratedIntColumn(
      'preg_frm_dina_val_max',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaTipDefaMeta =
      const VerificationMeta('pregFrmDinaTipDefa');
  GeneratedTextColumn _pregFrmDinaTipDefa;
  @override
  GeneratedTextColumn get pregFrmDinaTipDefa =>
      _pregFrmDinaTipDefa ??= _constructPregFrmDinaTipDefa();
  GeneratedTextColumn _constructPregFrmDinaTipDefa() {
    return GeneratedTextColumn(
      'preg_frm_dina_tip_defa',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaValDefaMeta =
      const VerificationMeta('pregFrmDinaValDefa');
  GeneratedTextColumn _pregFrmDinaValDefa;
  @override
  GeneratedTextColumn get pregFrmDinaValDefa =>
      _pregFrmDinaValDefa ??= _constructPregFrmDinaValDefa();
  GeneratedTextColumn _constructPregFrmDinaValDefa() {
    return GeneratedTextColumn(
      'preg_frm_dina_val_defa',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaDefaValMemoMeta =
      const VerificationMeta('pregFrmDinaDefaValMemo');
  GeneratedTextColumn _pregFrmDinaDefaValMemo;
  @override
  GeneratedTextColumn get pregFrmDinaDefaValMemo =>
      _pregFrmDinaDefaValMemo ??= _constructPregFrmDinaDefaValMemo();
  GeneratedTextColumn _constructPregFrmDinaDefaValMemo() {
    return GeneratedTextColumn(
      'preg_frm_dina_defa_val_memo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaDefaTabDinValIdMeta =
      const VerificationMeta('pregFrmDinaDefaTabDinValId');
  GeneratedIntColumn _pregFrmDinaDefaTabDinValId;
  @override
  GeneratedIntColumn get pregFrmDinaDefaTabDinValId =>
      _pregFrmDinaDefaTabDinValId ??= _constructPregFrmDinaDefaTabDinValId();
  GeneratedIntColumn _constructPregFrmDinaDefaTabDinValId() {
    return GeneratedIntColumn(
      'preg_frm_dina_defa_tab_din_val_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaSufijoMeta =
      const VerificationMeta('pregFrmDinaSufijo');
  GeneratedTextColumn _pregFrmDinaSufijo;
  @override
  GeneratedTextColumn get pregFrmDinaSufijo =>
      _pregFrmDinaSufijo ??= _constructPregFrmDinaSufijo();
  GeneratedTextColumn _constructPregFrmDinaSufijo() {
    return GeneratedTextColumn(
      'preg_frm_dina_sufijo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pregFrmDinaHelpMeta =
      const VerificationMeta('pregFrmDinaHelp');
  GeneratedTextColumn _pregFrmDinaHelp;
  @override
  GeneratedTextColumn get pregFrmDinaHelp =>
      _pregFrmDinaHelp ??= _constructPregFrmDinaHelp();
  GeneratedTextColumn _constructPregFrmDinaHelp() {
    return GeneratedTextColumn(
      'preg_frm_dina_help',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        pregFrmDinaId,
        pregFrmDinaDesc,
        pregFrmDinaTitulo,
        pregFrmDinaTipPreg,
        pregFrmDinaDefaNomTabDinId,
        pregFrmDinaValMin,
        pregFrmDinaValMax,
        pregFrmDinaTipDefa,
        pregFrmDinaValDefa,
        pregFrmDinaDefaValMemo,
        pregFrmDinaDefaTabDinValId,
        pregFrmDinaSufijo,
        pregFrmDinaHelp,
        statusId,
        usuId,
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
    if (d.pregFrmDinaId.present) {
      context.handle(
          _pregFrmDinaIdMeta,
          pregFrmDinaId.isAcceptableValue(
              d.pregFrmDinaId.value, _pregFrmDinaIdMeta));
    } else if (pregFrmDinaId.isRequired && isInserting) {
      context.missing(_pregFrmDinaIdMeta);
    }
    if (d.pregFrmDinaDesc.present) {
      context.handle(
          _pregFrmDinaDescMeta,
          pregFrmDinaDesc.isAcceptableValue(
              d.pregFrmDinaDesc.value, _pregFrmDinaDescMeta));
    } else if (pregFrmDinaDesc.isRequired && isInserting) {
      context.missing(_pregFrmDinaDescMeta);
    }
    if (d.pregFrmDinaTitulo.present) {
      context.handle(
          _pregFrmDinaTituloMeta,
          pregFrmDinaTitulo.isAcceptableValue(
              d.pregFrmDinaTitulo.value, _pregFrmDinaTituloMeta));
    } else if (pregFrmDinaTitulo.isRequired && isInserting) {
      context.missing(_pregFrmDinaTituloMeta);
    }
    if (d.pregFrmDinaTipPreg.present) {
      context.handle(
          _pregFrmDinaTipPregMeta,
          pregFrmDinaTipPreg.isAcceptableValue(
              d.pregFrmDinaTipPreg.value, _pregFrmDinaTipPregMeta));
    } else if (pregFrmDinaTipPreg.isRequired && isInserting) {
      context.missing(_pregFrmDinaTipPregMeta);
    }
    if (d.pregFrmDinaDefaNomTabDinId.present) {
      context.handle(
          _pregFrmDinaDefaNomTabDinIdMeta,
          pregFrmDinaDefaNomTabDinId.isAcceptableValue(
              d.pregFrmDinaDefaNomTabDinId.value,
              _pregFrmDinaDefaNomTabDinIdMeta));
    } else if (pregFrmDinaDefaNomTabDinId.isRequired && isInserting) {
      context.missing(_pregFrmDinaDefaNomTabDinIdMeta);
    }
    if (d.pregFrmDinaValMin.present) {
      context.handle(
          _pregFrmDinaValMinMeta,
          pregFrmDinaValMin.isAcceptableValue(
              d.pregFrmDinaValMin.value, _pregFrmDinaValMinMeta));
    } else if (pregFrmDinaValMin.isRequired && isInserting) {
      context.missing(_pregFrmDinaValMinMeta);
    }
    if (d.pregFrmDinaValMax.present) {
      context.handle(
          _pregFrmDinaValMaxMeta,
          pregFrmDinaValMax.isAcceptableValue(
              d.pregFrmDinaValMax.value, _pregFrmDinaValMaxMeta));
    } else if (pregFrmDinaValMax.isRequired && isInserting) {
      context.missing(_pregFrmDinaValMaxMeta);
    }
    if (d.pregFrmDinaTipDefa.present) {
      context.handle(
          _pregFrmDinaTipDefaMeta,
          pregFrmDinaTipDefa.isAcceptableValue(
              d.pregFrmDinaTipDefa.value, _pregFrmDinaTipDefaMeta));
    } else if (pregFrmDinaTipDefa.isRequired && isInserting) {
      context.missing(_pregFrmDinaTipDefaMeta);
    }
    if (d.pregFrmDinaValDefa.present) {
      context.handle(
          _pregFrmDinaValDefaMeta,
          pregFrmDinaValDefa.isAcceptableValue(
              d.pregFrmDinaValDefa.value, _pregFrmDinaValDefaMeta));
    } else if (pregFrmDinaValDefa.isRequired && isInserting) {
      context.missing(_pregFrmDinaValDefaMeta);
    }
    if (d.pregFrmDinaDefaValMemo.present) {
      context.handle(
          _pregFrmDinaDefaValMemoMeta,
          pregFrmDinaDefaValMemo.isAcceptableValue(
              d.pregFrmDinaDefaValMemo.value, _pregFrmDinaDefaValMemoMeta));
    } else if (pregFrmDinaDefaValMemo.isRequired && isInserting) {
      context.missing(_pregFrmDinaDefaValMemoMeta);
    }
    if (d.pregFrmDinaDefaTabDinValId.present) {
      context.handle(
          _pregFrmDinaDefaTabDinValIdMeta,
          pregFrmDinaDefaTabDinValId.isAcceptableValue(
              d.pregFrmDinaDefaTabDinValId.value,
              _pregFrmDinaDefaTabDinValIdMeta));
    } else if (pregFrmDinaDefaTabDinValId.isRequired && isInserting) {
      context.missing(_pregFrmDinaDefaTabDinValIdMeta);
    }
    if (d.pregFrmDinaSufijo.present) {
      context.handle(
          _pregFrmDinaSufijoMeta,
          pregFrmDinaSufijo.isAcceptableValue(
              d.pregFrmDinaSufijo.value, _pregFrmDinaSufijoMeta));
    } else if (pregFrmDinaSufijo.isRequired && isInserting) {
      context.missing(_pregFrmDinaSufijoMeta);
    }
    if (d.pregFrmDinaHelp.present) {
      context.handle(
          _pregFrmDinaHelpMeta,
          pregFrmDinaHelp.isAcceptableValue(
              d.pregFrmDinaHelp.value, _pregFrmDinaHelpMeta));
    } else if (pregFrmDinaHelp.isRequired && isInserting) {
      context.missing(_pregFrmDinaHelpMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {pregFrmDinaId};
  @override
  PregFrmDina map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PregFrmDina.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TablePregFrmDinaCompanion d) {
    final map = <String, Variable>{};
    if (d.pregFrmDinaId.present) {
      map['preg_frm_dina_id'] = Variable<int, IntType>(d.pregFrmDinaId.value);
    }
    if (d.pregFrmDinaDesc.present) {
      map['preg_frm_dina_desc'] =
          Variable<String, StringType>(d.pregFrmDinaDesc.value);
    }
    if (d.pregFrmDinaTitulo.present) {
      map['preg_frm_dina_titulo'] =
          Variable<String, StringType>(d.pregFrmDinaTitulo.value);
    }
    if (d.pregFrmDinaTipPreg.present) {
      map['preg_frm_dina_tip_preg'] =
          Variable<int, IntType>(d.pregFrmDinaTipPreg.value);
    }
    if (d.pregFrmDinaDefaNomTabDinId.present) {
      map['preg_frm_dina_defa_nom_tab_din_id'] =
          Variable<int, IntType>(d.pregFrmDinaDefaNomTabDinId.value);
    }
    if (d.pregFrmDinaValMin.present) {
      map['preg_frm_dina_val_min'] =
          Variable<int, IntType>(d.pregFrmDinaValMin.value);
    }
    if (d.pregFrmDinaValMax.present) {
      map['preg_frm_dina_val_max'] =
          Variable<int, IntType>(d.pregFrmDinaValMax.value);
    }
    if (d.pregFrmDinaTipDefa.present) {
      map['preg_frm_dina_tip_defa'] =
          Variable<String, StringType>(d.pregFrmDinaTipDefa.value);
    }
    if (d.pregFrmDinaValDefa.present) {
      map['preg_frm_dina_val_defa'] =
          Variable<String, StringType>(d.pregFrmDinaValDefa.value);
    }
    if (d.pregFrmDinaDefaValMemo.present) {
      map['preg_frm_dina_defa_val_memo'] =
          Variable<String, StringType>(d.pregFrmDinaDefaValMemo.value);
    }
    if (d.pregFrmDinaDefaTabDinValId.present) {
      map['preg_frm_dina_defa_tab_din_val_id'] =
          Variable<int, IntType>(d.pregFrmDinaDefaTabDinValId.value);
    }
    if (d.pregFrmDinaSufijo.present) {
      map['preg_frm_dina_sufijo'] =
          Variable<String, StringType>(d.pregFrmDinaSufijo.value);
    }
    if (d.pregFrmDinaHelp.present) {
      map['preg_frm_dina_help'] =
          Variable<String, StringType>(d.pregFrmDinaHelp.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int ficId;
  final int ficVerId;
  final int ficVerItemsId;
  final int pregFrmDinaId;
  final int pregFrmDinaOrd;
  final int fichaVerPregFlgObli;
  final int fichaVerCondPregFrmDinaId;
  final String fichaVerPregSex;
  final String fichaVerPregFlgSexObl;
  final int fichaVerPregEdadMin;
  final int fichaVerPregEdadMax;
  final String fichaVerPregEdadEd;
  final int fichaVerPregFlgEdadObl;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaVerPreg(
      {@required this.ficId,
      @required this.ficVerId,
      @required this.ficVerItemsId,
      @required this.pregFrmDinaId,
      @required this.pregFrmDinaOrd,
      @required this.fichaVerPregFlgObli,
      @required this.fichaVerCondPregFrmDinaId,
      @required this.fichaVerPregSex,
      @required this.fichaVerPregFlgSexObl,
      @required this.fichaVerPregEdadMin,
      @required this.fichaVerPregEdadMax,
      @required this.fichaVerPregEdadEd,
      @required this.fichaVerPregFlgEdadObl,
      @required this.statusId,
      @required this.usuId,
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
      ficId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      ficVerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_id']),
      ficVerItemsId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_id']),
      pregFrmDinaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}preg_frm_dina_id']),
      pregFrmDinaOrd: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}preg_frm_dina_ord']),
      fichaVerPregFlgObli: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_flg_obli']),
      fichaVerCondPregFrmDinaId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_cond_preg_frm_dina_id']),
      fichaVerPregSex: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_sex']),
      fichaVerPregFlgSexObl: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_flg_sex_obl']),
      fichaVerPregEdadMin: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_edad_min']),
      fichaVerPregEdadMax: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_edad_max']),
      fichaVerPregEdadEd: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_edad_ed']),
      fichaVerPregFlgEdadObl: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_preg_flg_edad_obl']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      ficId: serializer.fromJson<int>(json['ficId']),
      ficVerId: serializer.fromJson<int>(json['ficVerId']),
      ficVerItemsId: serializer.fromJson<int>(json['ficVerItemsId']),
      pregFrmDinaId: serializer.fromJson<int>(json['pregFrmDinaId']),
      pregFrmDinaOrd: serializer.fromJson<int>(json['pregFrmDinaOrd']),
      fichaVerPregFlgObli:
          serializer.fromJson<int>(json['fichaVerPregFlgObli']),
      fichaVerCondPregFrmDinaId:
          serializer.fromJson<int>(json['fichaVerCondPregFrmDinaId']),
      fichaVerPregSex: serializer.fromJson<String>(json['fichaVerPregSex']),
      fichaVerPregFlgSexObl:
          serializer.fromJson<String>(json['fichaVerPregFlgSexObl']),
      fichaVerPregEdadMin:
          serializer.fromJson<int>(json['fichaVerPregEdadMin']),
      fichaVerPregEdadMax:
          serializer.fromJson<int>(json['fichaVerPregEdadMax']),
      fichaVerPregEdadEd:
          serializer.fromJson<String>(json['fichaVerPregEdadEd']),
      fichaVerPregFlgEdadObl:
          serializer.fromJson<int>(json['fichaVerPregFlgEdadObl']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'ficId': serializer.toJson<int>(ficId),
      'ficVerId': serializer.toJson<int>(ficVerId),
      'ficVerItemsId': serializer.toJson<int>(ficVerItemsId),
      'pregFrmDinaId': serializer.toJson<int>(pregFrmDinaId),
      'pregFrmDinaOrd': serializer.toJson<int>(pregFrmDinaOrd),
      'fichaVerPregFlgObli': serializer.toJson<int>(fichaVerPregFlgObli),
      'fichaVerCondPregFrmDinaId':
          serializer.toJson<int>(fichaVerCondPregFrmDinaId),
      'fichaVerPregSex': serializer.toJson<String>(fichaVerPregSex),
      'fichaVerPregFlgSexObl': serializer.toJson<String>(fichaVerPregFlgSexObl),
      'fichaVerPregEdadMin': serializer.toJson<int>(fichaVerPregEdadMin),
      'fichaVerPregEdadMax': serializer.toJson<int>(fichaVerPregEdadMax),
      'fichaVerPregEdadEd': serializer.toJson<String>(fichaVerPregEdadEd),
      'fichaVerPregFlgEdadObl': serializer.toJson<int>(fichaVerPregFlgEdadObl),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaVerPreg>>(
      bool nullToAbsent) {
    return TableFichaVerPregCompanion(
      ficId:
          ficId == null && nullToAbsent ? const Value.absent() : Value(ficId),
      ficVerId: ficVerId == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerId),
      ficVerItemsId: ficVerItemsId == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerItemsId),
      pregFrmDinaId: pregFrmDinaId == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaId),
      pregFrmDinaOrd: pregFrmDinaOrd == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaOrd),
      fichaVerPregFlgObli: fichaVerPregFlgObli == null && nullToAbsent
          ? const Value.absent()
          : Value(fichaVerPregFlgObli),
      fichaVerCondPregFrmDinaId:
          fichaVerCondPregFrmDinaId == null && nullToAbsent
              ? const Value.absent()
              : Value(fichaVerCondPregFrmDinaId),
      fichaVerPregSex: fichaVerPregSex == null && nullToAbsent
          ? const Value.absent()
          : Value(fichaVerPregSex),
      fichaVerPregFlgSexObl: fichaVerPregFlgSexObl == null && nullToAbsent
          ? const Value.absent()
          : Value(fichaVerPregFlgSexObl),
      fichaVerPregEdadMin: fichaVerPregEdadMin == null && nullToAbsent
          ? const Value.absent()
          : Value(fichaVerPregEdadMin),
      fichaVerPregEdadMax: fichaVerPregEdadMax == null && nullToAbsent
          ? const Value.absent()
          : Value(fichaVerPregEdadMax),
      fichaVerPregEdadEd: fichaVerPregEdadEd == null && nullToAbsent
          ? const Value.absent()
          : Value(fichaVerPregEdadEd),
      fichaVerPregFlgEdadObl: fichaVerPregFlgEdadObl == null && nullToAbsent
          ? const Value.absent()
          : Value(fichaVerPregFlgEdadObl),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int ficId,
          int ficVerId,
          int ficVerItemsId,
          int pregFrmDinaId,
          int pregFrmDinaOrd,
          int fichaVerPregFlgObli,
          int fichaVerCondPregFrmDinaId,
          String fichaVerPregSex,
          String fichaVerPregFlgSexObl,
          int fichaVerPregEdadMin,
          int fichaVerPregEdadMax,
          String fichaVerPregEdadEd,
          int fichaVerPregFlgEdadObl,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaVerPreg(
        ficId: ficId ?? this.ficId,
        ficVerId: ficVerId ?? this.ficVerId,
        ficVerItemsId: ficVerItemsId ?? this.ficVerItemsId,
        pregFrmDinaId: pregFrmDinaId ?? this.pregFrmDinaId,
        pregFrmDinaOrd: pregFrmDinaOrd ?? this.pregFrmDinaOrd,
        fichaVerPregFlgObli: fichaVerPregFlgObli ?? this.fichaVerPregFlgObli,
        fichaVerCondPregFrmDinaId:
            fichaVerCondPregFrmDinaId ?? this.fichaVerCondPregFrmDinaId,
        fichaVerPregSex: fichaVerPregSex ?? this.fichaVerPregSex,
        fichaVerPregFlgSexObl:
            fichaVerPregFlgSexObl ?? this.fichaVerPregFlgSexObl,
        fichaVerPregEdadMin: fichaVerPregEdadMin ?? this.fichaVerPregEdadMin,
        fichaVerPregEdadMax: fichaVerPregEdadMax ?? this.fichaVerPregEdadMax,
        fichaVerPregEdadEd: fichaVerPregEdadEd ?? this.fichaVerPregEdadEd,
        fichaVerPregFlgEdadObl:
            fichaVerPregFlgEdadObl ?? this.fichaVerPregFlgEdadObl,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaVerPreg(')
          ..write('ficId: $ficId, ')
          ..write('ficVerId: $ficVerId, ')
          ..write('ficVerItemsId: $ficVerItemsId, ')
          ..write('pregFrmDinaId: $pregFrmDinaId, ')
          ..write('pregFrmDinaOrd: $pregFrmDinaOrd, ')
          ..write('fichaVerPregFlgObli: $fichaVerPregFlgObli, ')
          ..write('fichaVerCondPregFrmDinaId: $fichaVerCondPregFrmDinaId, ')
          ..write('fichaVerPregSex: $fichaVerPregSex, ')
          ..write('fichaVerPregFlgSexObl: $fichaVerPregFlgSexObl, ')
          ..write('fichaVerPregEdadMin: $fichaVerPregEdadMin, ')
          ..write('fichaVerPregEdadMax: $fichaVerPregEdadMax, ')
          ..write('fichaVerPregEdadEd: $fichaVerPregEdadEd, ')
          ..write('fichaVerPregFlgEdadObl: $fichaVerPregFlgEdadObl, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      ficId.hashCode,
      $mrjc(
          ficVerId.hashCode,
          $mrjc(
              ficVerItemsId.hashCode,
              $mrjc(
                  pregFrmDinaId.hashCode,
                  $mrjc(
                      pregFrmDinaOrd.hashCode,
                      $mrjc(
                          fichaVerPregFlgObli.hashCode,
                          $mrjc(
                              fichaVerCondPregFrmDinaId.hashCode,
                              $mrjc(
                                  fichaVerPregSex.hashCode,
                                  $mrjc(
                                      fichaVerPregFlgSexObl.hashCode,
                                      $mrjc(
                                          fichaVerPregEdadMin.hashCode,
                                          $mrjc(
                                              fichaVerPregEdadMax.hashCode,
                                              $mrjc(
                                                  fichaVerPregEdadEd.hashCode,
                                                  $mrjc(
                                                      fichaVerPregFlgEdadObl
                                                          .hashCode,
                                                      $mrjc(
                                                          statusId.hashCode,
                                                          $mrjc(
                                                              usuId.hashCode,
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
          other.ficId == ficId &&
          other.ficVerId == ficVerId &&
          other.ficVerItemsId == ficVerItemsId &&
          other.pregFrmDinaId == pregFrmDinaId &&
          other.pregFrmDinaOrd == pregFrmDinaOrd &&
          other.fichaVerPregFlgObli == fichaVerPregFlgObli &&
          other.fichaVerCondPregFrmDinaId == fichaVerCondPregFrmDinaId &&
          other.fichaVerPregSex == fichaVerPregSex &&
          other.fichaVerPregFlgSexObl == fichaVerPregFlgSexObl &&
          other.fichaVerPregEdadMin == fichaVerPregEdadMin &&
          other.fichaVerPregEdadMax == fichaVerPregEdadMax &&
          other.fichaVerPregEdadEd == fichaVerPregEdadEd &&
          other.fichaVerPregFlgEdadObl == fichaVerPregFlgEdadObl &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaVerPregCompanion extends UpdateCompanion<FichaVerPreg> {
  final Value<int> ficId;
  final Value<int> ficVerId;
  final Value<int> ficVerItemsId;
  final Value<int> pregFrmDinaId;
  final Value<int> pregFrmDinaOrd;
  final Value<int> fichaVerPregFlgObli;
  final Value<int> fichaVerCondPregFrmDinaId;
  final Value<String> fichaVerPregSex;
  final Value<String> fichaVerPregFlgSexObl;
  final Value<int> fichaVerPregEdadMin;
  final Value<int> fichaVerPregEdadMax;
  final Value<String> fichaVerPregEdadEd;
  final Value<int> fichaVerPregFlgEdadObl;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaVerPregCompanion({
    this.ficId = const Value.absent(),
    this.ficVerId = const Value.absent(),
    this.ficVerItemsId = const Value.absent(),
    this.pregFrmDinaId = const Value.absent(),
    this.pregFrmDinaOrd = const Value.absent(),
    this.fichaVerPregFlgObli = const Value.absent(),
    this.fichaVerCondPregFrmDinaId = const Value.absent(),
    this.fichaVerPregSex = const Value.absent(),
    this.fichaVerPregFlgSexObl = const Value.absent(),
    this.fichaVerPregEdadMin = const Value.absent(),
    this.fichaVerPregEdadMax = const Value.absent(),
    this.fichaVerPregEdadEd = const Value.absent(),
    this.fichaVerPregFlgEdadObl = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaVerPregCompanion copyWith(
      {Value<int> ficId,
      Value<int> ficVerId,
      Value<int> ficVerItemsId,
      Value<int> pregFrmDinaId,
      Value<int> pregFrmDinaOrd,
      Value<int> fichaVerPregFlgObli,
      Value<int> fichaVerCondPregFrmDinaId,
      Value<String> fichaVerPregSex,
      Value<String> fichaVerPregFlgSexObl,
      Value<int> fichaVerPregEdadMin,
      Value<int> fichaVerPregEdadMax,
      Value<String> fichaVerPregEdadEd,
      Value<int> fichaVerPregFlgEdadObl,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaVerPregCompanion(
      ficId: ficId ?? this.ficId,
      ficVerId: ficVerId ?? this.ficVerId,
      ficVerItemsId: ficVerItemsId ?? this.ficVerItemsId,
      pregFrmDinaId: pregFrmDinaId ?? this.pregFrmDinaId,
      pregFrmDinaOrd: pregFrmDinaOrd ?? this.pregFrmDinaOrd,
      fichaVerPregFlgObli: fichaVerPregFlgObli ?? this.fichaVerPregFlgObli,
      fichaVerCondPregFrmDinaId:
          fichaVerCondPregFrmDinaId ?? this.fichaVerCondPregFrmDinaId,
      fichaVerPregSex: fichaVerPregSex ?? this.fichaVerPregSex,
      fichaVerPregFlgSexObl:
          fichaVerPregFlgSexObl ?? this.fichaVerPregFlgSexObl,
      fichaVerPregEdadMin: fichaVerPregEdadMin ?? this.fichaVerPregEdadMin,
      fichaVerPregEdadMax: fichaVerPregEdadMax ?? this.fichaVerPregEdadMax,
      fichaVerPregEdadEd: fichaVerPregEdadEd ?? this.fichaVerPregEdadEd,
      fichaVerPregFlgEdadObl:
          fichaVerPregFlgEdadObl ?? this.fichaVerPregFlgEdadObl,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _ficIdMeta = const VerificationMeta('ficId');
  GeneratedIntColumn _ficId;
  @override
  GeneratedIntColumn get ficId => _ficId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _ficVerIdMeta = const VerificationMeta('ficVerId');
  GeneratedIntColumn _ficVerId;
  @override
  GeneratedIntColumn get ficVerId => _ficVerId ??= _constructFicVerId();
  GeneratedIntColumn _constructFicVerId() {
    return GeneratedIntColumn('fic_ver_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVer(ficVerId)');
  }

  final VerificationMeta _ficVerItemsIdMeta =
      const VerificationMeta('ficVerItemsId');
  GeneratedIntColumn _ficVerItemsId;
  @override
  GeneratedIntColumn get ficVerItemsId =>
      _ficVerItemsId ??= _constructFicVerItemsId();
  GeneratedIntColumn _constructFicVerItemsId() {
    return GeneratedIntColumn('fic_ver_items_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVerItems(ficVerItemsId)');
  }

  final VerificationMeta _pregFrmDinaIdMeta =
      const VerificationMeta('pregFrmDinaId');
  GeneratedIntColumn _pregFrmDinaId;
  @override
  GeneratedIntColumn get pregFrmDinaId =>
      _pregFrmDinaId ??= _constructPregFrmDinaId();
  GeneratedIntColumn _constructPregFrmDinaId() {
    return GeneratedIntColumn('preg_frm_dina_id', $tableName, false,
        $customConstraints: 'REFERENCES PregFrmDina(pregFrmDinaId)');
  }

  final VerificationMeta _pregFrmDinaOrdMeta =
      const VerificationMeta('pregFrmDinaOrd');
  GeneratedIntColumn _pregFrmDinaOrd;
  @override
  GeneratedIntColumn get pregFrmDinaOrd =>
      _pregFrmDinaOrd ??= _constructPregFrmDinaOrd();
  GeneratedIntColumn _constructPregFrmDinaOrd() {
    return GeneratedIntColumn(
      'preg_frm_dina_ord',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fichaVerPregFlgObliMeta =
      const VerificationMeta('fichaVerPregFlgObli');
  GeneratedIntColumn _fichaVerPregFlgObli;
  @override
  GeneratedIntColumn get fichaVerPregFlgObli =>
      _fichaVerPregFlgObli ??= _constructFichaVerPregFlgObli();
  GeneratedIntColumn _constructFichaVerPregFlgObli() {
    return GeneratedIntColumn(
      'ficha_ver_preg_flg_obli',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fichaVerCondPregFrmDinaIdMeta =
      const VerificationMeta('fichaVerCondPregFrmDinaId');
  GeneratedIntColumn _fichaVerCondPregFrmDinaId;
  @override
  GeneratedIntColumn get fichaVerCondPregFrmDinaId =>
      _fichaVerCondPregFrmDinaId ??= _constructFichaVerCondPregFrmDinaId();
  GeneratedIntColumn _constructFichaVerCondPregFrmDinaId() {
    return GeneratedIntColumn(
      'ficha_ver_cond_preg_frm_dina_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fichaVerPregSexMeta =
      const VerificationMeta('fichaVerPregSex');
  GeneratedTextColumn _fichaVerPregSex;
  @override
  GeneratedTextColumn get fichaVerPregSex =>
      _fichaVerPregSex ??= _constructFichaVerPregSex();
  GeneratedTextColumn _constructFichaVerPregSex() {
    return GeneratedTextColumn(
      'ficha_ver_preg_sex',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fichaVerPregFlgSexOblMeta =
      const VerificationMeta('fichaVerPregFlgSexObl');
  GeneratedTextColumn _fichaVerPregFlgSexObl;
  @override
  GeneratedTextColumn get fichaVerPregFlgSexObl =>
      _fichaVerPregFlgSexObl ??= _constructFichaVerPregFlgSexObl();
  GeneratedTextColumn _constructFichaVerPregFlgSexObl() {
    return GeneratedTextColumn(
      'ficha_ver_preg_flg_sex_obl',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fichaVerPregEdadMinMeta =
      const VerificationMeta('fichaVerPregEdadMin');
  GeneratedIntColumn _fichaVerPregEdadMin;
  @override
  GeneratedIntColumn get fichaVerPregEdadMin =>
      _fichaVerPregEdadMin ??= _constructFichaVerPregEdadMin();
  GeneratedIntColumn _constructFichaVerPregEdadMin() {
    return GeneratedIntColumn(
      'ficha_ver_preg_edad_min',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fichaVerPregEdadMaxMeta =
      const VerificationMeta('fichaVerPregEdadMax');
  GeneratedIntColumn _fichaVerPregEdadMax;
  @override
  GeneratedIntColumn get fichaVerPregEdadMax =>
      _fichaVerPregEdadMax ??= _constructFichaVerPregEdadMax();
  GeneratedIntColumn _constructFichaVerPregEdadMax() {
    return GeneratedIntColumn(
      'ficha_ver_preg_edad_max',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fichaVerPregEdadEdMeta =
      const VerificationMeta('fichaVerPregEdadEd');
  GeneratedTextColumn _fichaVerPregEdadEd;
  @override
  GeneratedTextColumn get fichaVerPregEdadEd =>
      _fichaVerPregEdadEd ??= _constructFichaVerPregEdadEd();
  GeneratedTextColumn _constructFichaVerPregEdadEd() {
    return GeneratedTextColumn(
      'ficha_ver_preg_edad_ed',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fichaVerPregFlgEdadOblMeta =
      const VerificationMeta('fichaVerPregFlgEdadObl');
  GeneratedIntColumn _fichaVerPregFlgEdadObl;
  @override
  GeneratedIntColumn get fichaVerPregFlgEdadObl =>
      _fichaVerPregFlgEdadObl ??= _constructFichaVerPregFlgEdadObl();
  GeneratedIntColumn _constructFichaVerPregFlgEdadObl() {
    return GeneratedIntColumn(
      'ficha_ver_preg_flg_edad_obl',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        ficId,
        ficVerId,
        ficVerItemsId,
        pregFrmDinaId,
        pregFrmDinaOrd,
        fichaVerPregFlgObli,
        fichaVerCondPregFrmDinaId,
        fichaVerPregSex,
        fichaVerPregFlgSexObl,
        fichaVerPregEdadMin,
        fichaVerPregEdadMax,
        fichaVerPregEdadEd,
        fichaVerPregFlgEdadObl,
        statusId,
        usuId,
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
    if (d.ficId.present) {
      context.handle(
          _ficIdMeta, ficId.isAcceptableValue(d.ficId.value, _ficIdMeta));
    } else if (ficId.isRequired && isInserting) {
      context.missing(_ficIdMeta);
    }
    if (d.ficVerId.present) {
      context.handle(_ficVerIdMeta,
          ficVerId.isAcceptableValue(d.ficVerId.value, _ficVerIdMeta));
    } else if (ficVerId.isRequired && isInserting) {
      context.missing(_ficVerIdMeta);
    }
    if (d.ficVerItemsId.present) {
      context.handle(
          _ficVerItemsIdMeta,
          ficVerItemsId.isAcceptableValue(
              d.ficVerItemsId.value, _ficVerItemsIdMeta));
    } else if (ficVerItemsId.isRequired && isInserting) {
      context.missing(_ficVerItemsIdMeta);
    }
    if (d.pregFrmDinaId.present) {
      context.handle(
          _pregFrmDinaIdMeta,
          pregFrmDinaId.isAcceptableValue(
              d.pregFrmDinaId.value, _pregFrmDinaIdMeta));
    } else if (pregFrmDinaId.isRequired && isInserting) {
      context.missing(_pregFrmDinaIdMeta);
    }
    if (d.pregFrmDinaOrd.present) {
      context.handle(
          _pregFrmDinaOrdMeta,
          pregFrmDinaOrd.isAcceptableValue(
              d.pregFrmDinaOrd.value, _pregFrmDinaOrdMeta));
    } else if (pregFrmDinaOrd.isRequired && isInserting) {
      context.missing(_pregFrmDinaOrdMeta);
    }
    if (d.fichaVerPregFlgObli.present) {
      context.handle(
          _fichaVerPregFlgObliMeta,
          fichaVerPregFlgObli.isAcceptableValue(
              d.fichaVerPregFlgObli.value, _fichaVerPregFlgObliMeta));
    } else if (fichaVerPregFlgObli.isRequired && isInserting) {
      context.missing(_fichaVerPregFlgObliMeta);
    }
    if (d.fichaVerCondPregFrmDinaId.present) {
      context.handle(
          _fichaVerCondPregFrmDinaIdMeta,
          fichaVerCondPregFrmDinaId.isAcceptableValue(
              d.fichaVerCondPregFrmDinaId.value,
              _fichaVerCondPregFrmDinaIdMeta));
    } else if (fichaVerCondPregFrmDinaId.isRequired && isInserting) {
      context.missing(_fichaVerCondPregFrmDinaIdMeta);
    }
    if (d.fichaVerPregSex.present) {
      context.handle(
          _fichaVerPregSexMeta,
          fichaVerPregSex.isAcceptableValue(
              d.fichaVerPregSex.value, _fichaVerPregSexMeta));
    } else if (fichaVerPregSex.isRequired && isInserting) {
      context.missing(_fichaVerPregSexMeta);
    }
    if (d.fichaVerPregFlgSexObl.present) {
      context.handle(
          _fichaVerPregFlgSexOblMeta,
          fichaVerPregFlgSexObl.isAcceptableValue(
              d.fichaVerPregFlgSexObl.value, _fichaVerPregFlgSexOblMeta));
    } else if (fichaVerPregFlgSexObl.isRequired && isInserting) {
      context.missing(_fichaVerPregFlgSexOblMeta);
    }
    if (d.fichaVerPregEdadMin.present) {
      context.handle(
          _fichaVerPregEdadMinMeta,
          fichaVerPregEdadMin.isAcceptableValue(
              d.fichaVerPregEdadMin.value, _fichaVerPregEdadMinMeta));
    } else if (fichaVerPregEdadMin.isRequired && isInserting) {
      context.missing(_fichaVerPregEdadMinMeta);
    }
    if (d.fichaVerPregEdadMax.present) {
      context.handle(
          _fichaVerPregEdadMaxMeta,
          fichaVerPregEdadMax.isAcceptableValue(
              d.fichaVerPregEdadMax.value, _fichaVerPregEdadMaxMeta));
    } else if (fichaVerPregEdadMax.isRequired && isInserting) {
      context.missing(_fichaVerPregEdadMaxMeta);
    }
    if (d.fichaVerPregEdadEd.present) {
      context.handle(
          _fichaVerPregEdadEdMeta,
          fichaVerPregEdadEd.isAcceptableValue(
              d.fichaVerPregEdadEd.value, _fichaVerPregEdadEdMeta));
    } else if (fichaVerPregEdadEd.isRequired && isInserting) {
      context.missing(_fichaVerPregEdadEdMeta);
    }
    if (d.fichaVerPregFlgEdadObl.present) {
      context.handle(
          _fichaVerPregFlgEdadOblMeta,
          fichaVerPregFlgEdadObl.isAcceptableValue(
              d.fichaVerPregFlgEdadObl.value, _fichaVerPregFlgEdadOblMeta));
    } else if (fichaVerPregFlgEdadObl.isRequired && isInserting) {
      context.missing(_fichaVerPregFlgEdadOblMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
    if (d.ficId.present) {
      map['fic_id'] = Variable<int, IntType>(d.ficId.value);
    }
    if (d.ficVerId.present) {
      map['fic_ver_id'] = Variable<int, IntType>(d.ficVerId.value);
    }
    if (d.ficVerItemsId.present) {
      map['fic_ver_items_id'] = Variable<int, IntType>(d.ficVerItemsId.value);
    }
    if (d.pregFrmDinaId.present) {
      map['preg_frm_dina_id'] = Variable<int, IntType>(d.pregFrmDinaId.value);
    }
    if (d.pregFrmDinaOrd.present) {
      map['preg_frm_dina_ord'] = Variable<int, IntType>(d.pregFrmDinaOrd.value);
    }
    if (d.fichaVerPregFlgObli.present) {
      map['ficha_ver_preg_flg_obli'] =
          Variable<int, IntType>(d.fichaVerPregFlgObli.value);
    }
    if (d.fichaVerCondPregFrmDinaId.present) {
      map['ficha_ver_cond_preg_frm_dina_id'] =
          Variable<int, IntType>(d.fichaVerCondPregFrmDinaId.value);
    }
    if (d.fichaVerPregSex.present) {
      map['ficha_ver_preg_sex'] =
          Variable<String, StringType>(d.fichaVerPregSex.value);
    }
    if (d.fichaVerPregFlgSexObl.present) {
      map['ficha_ver_preg_flg_sex_obl'] =
          Variable<String, StringType>(d.fichaVerPregFlgSexObl.value);
    }
    if (d.fichaVerPregEdadMin.present) {
      map['ficha_ver_preg_edad_min'] =
          Variable<int, IntType>(d.fichaVerPregEdadMin.value);
    }
    if (d.fichaVerPregEdadMax.present) {
      map['ficha_ver_preg_edad_max'] =
          Variable<int, IntType>(d.fichaVerPregEdadMax.value);
    }
    if (d.fichaVerPregEdadEd.present) {
      map['ficha_ver_preg_edad_ed'] =
          Variable<String, StringType>(d.fichaVerPregEdadEd.value);
    }
    if (d.fichaVerPregFlgEdadObl.present) {
      map['ficha_ver_preg_flg_edad_obl'] =
          Variable<int, IntType>(d.fichaVerPregFlgEdadObl.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int ficId;
  final int ficVerId;
  final int ficVerItemsId;
  final int pregFrmDinaId;
  final int fichaVerTabDinId;
  final int fichaVerTabDinValId;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaVerItemsPregTabDin(
      {@required this.ficId,
      @required this.ficVerId,
      @required this.ficVerItemsId,
      @required this.pregFrmDinaId,
      @required this.fichaVerTabDinId,
      @required this.fichaVerTabDinValId,
      @required this.statusId,
      @required this.usuId,
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
      ficId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      ficVerId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_id']),
      ficVerItemsId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}fic_ver_items_id']),
      pregFrmDinaId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}preg_frm_dina_id']),
      fichaVerTabDinId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_tab_din_id']),
      fichaVerTabDinValId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ficha_ver_tab_din_val_id']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      ficId: serializer.fromJson<int>(json['ficId']),
      ficVerId: serializer.fromJson<int>(json['ficVerId']),
      ficVerItemsId: serializer.fromJson<int>(json['ficVerItemsId']),
      pregFrmDinaId: serializer.fromJson<int>(json['pregFrmDinaId']),
      fichaVerTabDinId: serializer.fromJson<int>(json['fichaVerTabDinId']),
      fichaVerTabDinValId:
          serializer.fromJson<int>(json['fichaVerTabDinValId']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'ficId': serializer.toJson<int>(ficId),
      'ficVerId': serializer.toJson<int>(ficVerId),
      'ficVerItemsId': serializer.toJson<int>(ficVerItemsId),
      'pregFrmDinaId': serializer.toJson<int>(pregFrmDinaId),
      'fichaVerTabDinId': serializer.toJson<int>(fichaVerTabDinId),
      'fichaVerTabDinValId': serializer.toJson<int>(fichaVerTabDinValId),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaVerItemsPregTabDin>>(
      bool nullToAbsent) {
    return TableFichaVerItemsPregTabDinCompanion(
      ficId:
          ficId == null && nullToAbsent ? const Value.absent() : Value(ficId),
      ficVerId: ficVerId == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerId),
      ficVerItemsId: ficVerItemsId == null && nullToAbsent
          ? const Value.absent()
          : Value(ficVerItemsId),
      pregFrmDinaId: pregFrmDinaId == null && nullToAbsent
          ? const Value.absent()
          : Value(pregFrmDinaId),
      fichaVerTabDinId: fichaVerTabDinId == null && nullToAbsent
          ? const Value.absent()
          : Value(fichaVerTabDinId),
      fichaVerTabDinValId: fichaVerTabDinValId == null && nullToAbsent
          ? const Value.absent()
          : Value(fichaVerTabDinValId),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int ficId,
          int ficVerId,
          int ficVerItemsId,
          int pregFrmDinaId,
          int fichaVerTabDinId,
          int fichaVerTabDinValId,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaVerItemsPregTabDin(
        ficId: ficId ?? this.ficId,
        ficVerId: ficVerId ?? this.ficVerId,
        ficVerItemsId: ficVerItemsId ?? this.ficVerItemsId,
        pregFrmDinaId: pregFrmDinaId ?? this.pregFrmDinaId,
        fichaVerTabDinId: fichaVerTabDinId ?? this.fichaVerTabDinId,
        fichaVerTabDinValId: fichaVerTabDinValId ?? this.fichaVerTabDinValId,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaVerItemsPregTabDin(')
          ..write('ficId: $ficId, ')
          ..write('ficVerId: $ficVerId, ')
          ..write('ficVerItemsId: $ficVerItemsId, ')
          ..write('pregFrmDinaId: $pregFrmDinaId, ')
          ..write('fichaVerTabDinId: $fichaVerTabDinId, ')
          ..write('fichaVerTabDinValId: $fichaVerTabDinValId, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      ficId.hashCode,
      $mrjc(
          ficVerId.hashCode,
          $mrjc(
              ficVerItemsId.hashCode,
              $mrjc(
                  pregFrmDinaId.hashCode,
                  $mrjc(
                      fichaVerTabDinId.hashCode,
                      $mrjc(
                          fichaVerTabDinValId.hashCode,
                          $mrjc(
                              statusId.hashCode,
                              $mrjc(
                                  usuId.hashCode,
                                  $mrjc(
                                      createdAt.hashCode,
                                      $mrjc(updatedAt.hashCode,
                                          deletedAt.hashCode)))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FichaVerItemsPregTabDin &&
          other.ficId == ficId &&
          other.ficVerId == ficVerId &&
          other.ficVerItemsId == ficVerItemsId &&
          other.pregFrmDinaId == pregFrmDinaId &&
          other.fichaVerTabDinId == fichaVerTabDinId &&
          other.fichaVerTabDinValId == fichaVerTabDinValId &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaVerItemsPregTabDinCompanion
    extends UpdateCompanion<FichaVerItemsPregTabDin> {
  final Value<int> ficId;
  final Value<int> ficVerId;
  final Value<int> ficVerItemsId;
  final Value<int> pregFrmDinaId;
  final Value<int> fichaVerTabDinId;
  final Value<int> fichaVerTabDinValId;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaVerItemsPregTabDinCompanion({
    this.ficId = const Value.absent(),
    this.ficVerId = const Value.absent(),
    this.ficVerItemsId = const Value.absent(),
    this.pregFrmDinaId = const Value.absent(),
    this.fichaVerTabDinId = const Value.absent(),
    this.fichaVerTabDinValId = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaVerItemsPregTabDinCompanion copyWith(
      {Value<int> ficId,
      Value<int> ficVerId,
      Value<int> ficVerItemsId,
      Value<int> pregFrmDinaId,
      Value<int> fichaVerTabDinId,
      Value<int> fichaVerTabDinValId,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaVerItemsPregTabDinCompanion(
      ficId: ficId ?? this.ficId,
      ficVerId: ficVerId ?? this.ficVerId,
      ficVerItemsId: ficVerItemsId ?? this.ficVerItemsId,
      pregFrmDinaId: pregFrmDinaId ?? this.pregFrmDinaId,
      fichaVerTabDinId: fichaVerTabDinId ?? this.fichaVerTabDinId,
      fichaVerTabDinValId: fichaVerTabDinValId ?? this.fichaVerTabDinValId,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _ficIdMeta = const VerificationMeta('ficId');
  GeneratedIntColumn _ficId;
  @override
  GeneratedIntColumn get ficId => _ficId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _ficVerIdMeta = const VerificationMeta('ficVerId');
  GeneratedIntColumn _ficVerId;
  @override
  GeneratedIntColumn get ficVerId => _ficVerId ??= _constructFicVerId();
  GeneratedIntColumn _constructFicVerId() {
    return GeneratedIntColumn('fic_ver_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVer(ficVerId)');
  }

  final VerificationMeta _ficVerItemsIdMeta =
      const VerificationMeta('ficVerItemsId');
  GeneratedIntColumn _ficVerItemsId;
  @override
  GeneratedIntColumn get ficVerItemsId =>
      _ficVerItemsId ??= _constructFicVerItemsId();
  GeneratedIntColumn _constructFicVerItemsId() {
    return GeneratedIntColumn('fic_ver_items_id', $tableName, false,
        $customConstraints: 'REFERENCES FichaVerItems(ficVerItemsId)');
  }

  final VerificationMeta _pregFrmDinaIdMeta =
      const VerificationMeta('pregFrmDinaId');
  GeneratedIntColumn _pregFrmDinaId;
  @override
  GeneratedIntColumn get pregFrmDinaId =>
      _pregFrmDinaId ??= _constructPregFrmDinaId();
  GeneratedIntColumn _constructPregFrmDinaId() {
    return GeneratedIntColumn('preg_frm_dina_id', $tableName, false,
        $customConstraints: 'REFERENCES PregFrmDina(pregFrmDinaId)');
  }

  final VerificationMeta _fichaVerTabDinIdMeta =
      const VerificationMeta('fichaVerTabDinId');
  GeneratedIntColumn _fichaVerTabDinId;
  @override
  GeneratedIntColumn get fichaVerTabDinId =>
      _fichaVerTabDinId ??= _constructFichaVerTabDinId();
  GeneratedIntColumn _constructFichaVerTabDinId() {
    return GeneratedIntColumn('ficha_ver_tab_din_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _fichaVerTabDinValIdMeta =
      const VerificationMeta('fichaVerTabDinValId');
  GeneratedIntColumn _fichaVerTabDinValId;
  @override
  GeneratedIntColumn get fichaVerTabDinValId =>
      _fichaVerTabDinValId ??= _constructFichaVerTabDinValId();
  GeneratedIntColumn _constructFichaVerTabDinValId() {
    return GeneratedIntColumn(
      'ficha_ver_tab_din_val_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        ficId,
        ficVerId,
        ficVerItemsId,
        pregFrmDinaId,
        fichaVerTabDinId,
        fichaVerTabDinValId,
        statusId,
        usuId,
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
    if (d.ficId.present) {
      context.handle(
          _ficIdMeta, ficId.isAcceptableValue(d.ficId.value, _ficIdMeta));
    } else if (ficId.isRequired && isInserting) {
      context.missing(_ficIdMeta);
    }
    if (d.ficVerId.present) {
      context.handle(_ficVerIdMeta,
          ficVerId.isAcceptableValue(d.ficVerId.value, _ficVerIdMeta));
    } else if (ficVerId.isRequired && isInserting) {
      context.missing(_ficVerIdMeta);
    }
    if (d.ficVerItemsId.present) {
      context.handle(
          _ficVerItemsIdMeta,
          ficVerItemsId.isAcceptableValue(
              d.ficVerItemsId.value, _ficVerItemsIdMeta));
    } else if (ficVerItemsId.isRequired && isInserting) {
      context.missing(_ficVerItemsIdMeta);
    }
    if (d.pregFrmDinaId.present) {
      context.handle(
          _pregFrmDinaIdMeta,
          pregFrmDinaId.isAcceptableValue(
              d.pregFrmDinaId.value, _pregFrmDinaIdMeta));
    } else if (pregFrmDinaId.isRequired && isInserting) {
      context.missing(_pregFrmDinaIdMeta);
    }
    if (d.fichaVerTabDinId.present) {
      context.handle(
          _fichaVerTabDinIdMeta,
          fichaVerTabDinId.isAcceptableValue(
              d.fichaVerTabDinId.value, _fichaVerTabDinIdMeta));
    } else if (fichaVerTabDinId.isRequired && isInserting) {
      context.missing(_fichaVerTabDinIdMeta);
    }
    if (d.fichaVerTabDinValId.present) {
      context.handle(
          _fichaVerTabDinValIdMeta,
          fichaVerTabDinValId.isAcceptableValue(
              d.fichaVerTabDinValId.value, _fichaVerTabDinValIdMeta));
    } else if (fichaVerTabDinValId.isRequired && isInserting) {
      context.missing(_fichaVerTabDinValIdMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {fichaVerTabDinId};
  @override
  FichaVerItemsPregTabDin map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FichaVerItemsPregTabDin.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFichaVerItemsPregTabDinCompanion d) {
    final map = <String, Variable>{};
    if (d.ficId.present) {
      map['fic_id'] = Variable<int, IntType>(d.ficId.value);
    }
    if (d.ficVerId.present) {
      map['fic_ver_id'] = Variable<int, IntType>(d.ficVerId.value);
    }
    if (d.ficVerItemsId.present) {
      map['fic_ver_items_id'] = Variable<int, IntType>(d.ficVerItemsId.value);
    }
    if (d.pregFrmDinaId.present) {
      map['preg_frm_dina_id'] = Variable<int, IntType>(d.pregFrmDinaId.value);
    }
    if (d.fichaVerTabDinId.present) {
      map['ficha_ver_tab_din_id'] =
          Variable<int, IntType>(d.fichaVerTabDinId.value);
    }
    if (d.fichaVerTabDinValId.present) {
      map['ficha_ver_tab_din_val_id'] =
          Variable<int, IntType>(d.fichaVerTabDinValId.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final String opcFichCod;
  final String opcFichDesc;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  OpcFich(
      {@required this.opcFichCod,
      @required this.opcFichDesc,
      @required this.statusId,
      @required this.usuId,
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
      opcFichCod: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}opc_fich_cod']),
      opcFichDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}opc_fich_desc']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      opcFichCod: serializer.fromJson<String>(json['opcFichCod']),
      opcFichDesc: serializer.fromJson<String>(json['opcFichDesc']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'opcFichCod': serializer.toJson<String>(opcFichCod),
      'opcFichDesc': serializer.toJson<String>(opcFichDesc),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<OpcFich>>(bool nullToAbsent) {
    return TableOpcFichCompanion(
      opcFichCod: opcFichCod == null && nullToAbsent
          ? const Value.absent()
          : Value(opcFichCod),
      opcFichDesc: opcFichDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(opcFichDesc),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {String opcFichCod,
          String opcFichDesc,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      OpcFich(
        opcFichCod: opcFichCod ?? this.opcFichCod,
        opcFichDesc: opcFichDesc ?? this.opcFichDesc,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('OpcFich(')
          ..write('opcFichCod: $opcFichCod, ')
          ..write('opcFichDesc: $opcFichDesc, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      opcFichCod.hashCode,
      $mrjc(
          opcFichDesc.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is OpcFich &&
          other.opcFichCod == opcFichCod &&
          other.opcFichDesc == opcFichDesc &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableOpcFichCompanion extends UpdateCompanion<OpcFich> {
  final Value<String> opcFichCod;
  final Value<String> opcFichDesc;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableOpcFichCompanion({
    this.opcFichCod = const Value.absent(),
    this.opcFichDesc = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableOpcFichCompanion copyWith(
      {Value<String> opcFichCod,
      Value<String> opcFichDesc,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableOpcFichCompanion(
      opcFichCod: opcFichCod ?? this.opcFichCod,
      opcFichDesc: opcFichDesc ?? this.opcFichDesc,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _opcFichCodMeta = const VerificationMeta('opcFichCod');
  GeneratedTextColumn _opcFichCod;
  @override
  GeneratedTextColumn get opcFichCod => _opcFichCod ??= _constructOpcFichCod();
  GeneratedTextColumn _constructOpcFichCod() {
    return GeneratedTextColumn(
      'opc_fich_cod',
      $tableName,
      false,
    );
  }

  final VerificationMeta _opcFichDescMeta =
      const VerificationMeta('opcFichDesc');
  GeneratedTextColumn _opcFichDesc;
  @override
  GeneratedTextColumn get opcFichDesc =>
      _opcFichDesc ??= _constructOpcFichDesc();
  GeneratedTextColumn _constructOpcFichDesc() {
    return GeneratedTextColumn(
      'opc_fich_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        opcFichCod,
        opcFichDesc,
        statusId,
        usuId,
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
    if (d.opcFichCod.present) {
      context.handle(_opcFichCodMeta,
          opcFichCod.isAcceptableValue(d.opcFichCod.value, _opcFichCodMeta));
    } else if (opcFichCod.isRequired && isInserting) {
      context.missing(_opcFichCodMeta);
    }
    if (d.opcFichDesc.present) {
      context.handle(_opcFichDescMeta,
          opcFichDesc.isAcceptableValue(d.opcFichDesc.value, _opcFichDescMeta));
    } else if (opcFichDesc.isRequired && isInserting) {
      context.missing(_opcFichDescMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {opcFichCod};
  @override
  OpcFich map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return OpcFich.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableOpcFichCompanion d) {
    final map = <String, Variable>{};
    if (d.opcFichCod.present) {
      map['opc_fich_cod'] = Variable<String, StringType>(d.opcFichCod.value);
    }
    if (d.opcFichDesc.present) {
      map['opc_fich_desc'] = Variable<String, StringType>(d.opcFichDesc.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int ficId;
  final String opcFichCod;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FichaOpc(
      {@required this.ficId,
      @required this.opcFichCod,
      @required this.statusId,
      @required this.usuId,
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
      ficId: intType.mapFromDatabaseResponse(data['${effectivePrefix}fic_id']),
      opcFichCod: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}opc_fich_cod']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      ficId: serializer.fromJson<int>(json['ficId']),
      opcFichCod: serializer.fromJson<String>(json['opcFichCod']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'ficId': serializer.toJson<int>(ficId),
      'opcFichCod': serializer.toJson<String>(opcFichCod),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FichaOpc>>(bool nullToAbsent) {
    return TableFichaOpcCompanion(
      ficId:
          ficId == null && nullToAbsent ? const Value.absent() : Value(ficId),
      opcFichCod: opcFichCod == null && nullToAbsent
          ? const Value.absent()
          : Value(opcFichCod),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int ficId,
          String opcFichCod,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FichaOpc(
        ficId: ficId ?? this.ficId,
        opcFichCod: opcFichCod ?? this.opcFichCod,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FichaOpc(')
          ..write('ficId: $ficId, ')
          ..write('opcFichCod: $opcFichCod, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      ficId.hashCode,
      $mrjc(
          opcFichCod.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FichaOpc &&
          other.ficId == ficId &&
          other.opcFichCod == opcFichCod &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFichaOpcCompanion extends UpdateCompanion<FichaOpc> {
  final Value<int> ficId;
  final Value<String> opcFichCod;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFichaOpcCompanion({
    this.ficId = const Value.absent(),
    this.opcFichCod = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFichaOpcCompanion copyWith(
      {Value<int> ficId,
      Value<String> opcFichCod,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFichaOpcCompanion(
      ficId: ficId ?? this.ficId,
      opcFichCod: opcFichCod ?? this.opcFichCod,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _ficIdMeta = const VerificationMeta('ficId');
  GeneratedIntColumn _ficId;
  @override
  GeneratedIntColumn get ficId => _ficId ??= _constructFicId();
  GeneratedIntColumn _constructFicId() {
    return GeneratedIntColumn('fic_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _opcFichCodMeta = const VerificationMeta('opcFichCod');
  GeneratedTextColumn _opcFichCod;
  @override
  GeneratedTextColumn get opcFichCod => _opcFichCod ??= _constructOpcFichCod();
  GeneratedTextColumn _constructOpcFichCod() {
    return GeneratedTextColumn('opc_fich_cod', $tableName, false,
        $customConstraints: 'REFERENCES OpcFich(opcFichCod)');
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
      [ficId, opcFichCod, statusId, usuId, createdAt, updatedAt, deletedAt];
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
    if (d.ficId.present) {
      context.handle(
          _ficIdMeta, ficId.isAcceptableValue(d.ficId.value, _ficIdMeta));
    } else if (ficId.isRequired && isInserting) {
      context.missing(_ficIdMeta);
    }
    if (d.opcFichCod.present) {
      context.handle(_opcFichCodMeta,
          opcFichCod.isAcceptableValue(d.opcFichCod.value, _opcFichCodMeta));
    } else if (opcFichCod.isRequired && isInserting) {
      context.missing(_opcFichCodMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
    if (d.ficId.present) {
      map['fic_id'] = Variable<int, IntType>(d.ficId.value);
    }
    if (d.opcFichCod.present) {
      map['opc_fich_cod'] = Variable<String, StringType>(d.opcFichCod.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int nomTabDinId;
  final String nomTabDinNom;
  final int nomTabDinFlgAct;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  NomTabDin(
      {@required this.nomTabDinId,
      @required this.nomTabDinNom,
      @required this.nomTabDinFlgAct,
      @required this.statusId,
      @required this.usuId,
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
      nomTabDinId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}nom_tab_din_id']),
      nomTabDinNom: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}nom_tab_din_nom']),
      nomTabDinFlgAct: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}nom_tab_din_flg_act']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      nomTabDinId: serializer.fromJson<int>(json['nomTabDinId']),
      nomTabDinNom: serializer.fromJson<String>(json['nomTabDinNom']),
      nomTabDinFlgAct: serializer.fromJson<int>(json['nomTabDinFlgAct']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'nomTabDinId': serializer.toJson<int>(nomTabDinId),
      'nomTabDinNom': serializer.toJson<String>(nomTabDinNom),
      'nomTabDinFlgAct': serializer.toJson<int>(nomTabDinFlgAct),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<NomTabDin>>(bool nullToAbsent) {
    return TableNomTabDinCompanion(
      nomTabDinId: nomTabDinId == null && nullToAbsent
          ? const Value.absent()
          : Value(nomTabDinId),
      nomTabDinNom: nomTabDinNom == null && nullToAbsent
          ? const Value.absent()
          : Value(nomTabDinNom),
      nomTabDinFlgAct: nomTabDinFlgAct == null && nullToAbsent
          ? const Value.absent()
          : Value(nomTabDinFlgAct),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int nomTabDinId,
          String nomTabDinNom,
          int nomTabDinFlgAct,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      NomTabDin(
        nomTabDinId: nomTabDinId ?? this.nomTabDinId,
        nomTabDinNom: nomTabDinNom ?? this.nomTabDinNom,
        nomTabDinFlgAct: nomTabDinFlgAct ?? this.nomTabDinFlgAct,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('NomTabDin(')
          ..write('nomTabDinId: $nomTabDinId, ')
          ..write('nomTabDinNom: $nomTabDinNom, ')
          ..write('nomTabDinFlgAct: $nomTabDinFlgAct, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      nomTabDinId.hashCode,
      $mrjc(
          nomTabDinNom.hashCode,
          $mrjc(
              nomTabDinFlgAct.hashCode,
              $mrjc(
                  statusId.hashCode,
                  $mrjc(
                      usuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is NomTabDin &&
          other.nomTabDinId == nomTabDinId &&
          other.nomTabDinNom == nomTabDinNom &&
          other.nomTabDinFlgAct == nomTabDinFlgAct &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableNomTabDinCompanion extends UpdateCompanion<NomTabDin> {
  final Value<int> nomTabDinId;
  final Value<String> nomTabDinNom;
  final Value<int> nomTabDinFlgAct;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableNomTabDinCompanion({
    this.nomTabDinId = const Value.absent(),
    this.nomTabDinNom = const Value.absent(),
    this.nomTabDinFlgAct = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableNomTabDinCompanion copyWith(
      {Value<int> nomTabDinId,
      Value<String> nomTabDinNom,
      Value<int> nomTabDinFlgAct,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableNomTabDinCompanion(
      nomTabDinId: nomTabDinId ?? this.nomTabDinId,
      nomTabDinNom: nomTabDinNom ?? this.nomTabDinNom,
      nomTabDinFlgAct: nomTabDinFlgAct ?? this.nomTabDinFlgAct,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _nomTabDinIdMeta =
      const VerificationMeta('nomTabDinId');
  GeneratedIntColumn _nomTabDinId;
  @override
  GeneratedIntColumn get nomTabDinId =>
      _nomTabDinId ??= _constructNomTabDinId();
  GeneratedIntColumn _constructNomTabDinId() {
    return GeneratedIntColumn('nom_tab_din_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nomTabDinNomMeta =
      const VerificationMeta('nomTabDinNom');
  GeneratedTextColumn _nomTabDinNom;
  @override
  GeneratedTextColumn get nomTabDinNom =>
      _nomTabDinNom ??= _constructNomTabDinNom();
  GeneratedTextColumn _constructNomTabDinNom() {
    return GeneratedTextColumn(
      'nom_tab_din_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nomTabDinFlgActMeta =
      const VerificationMeta('nomTabDinFlgAct');
  GeneratedIntColumn _nomTabDinFlgAct;
  @override
  GeneratedIntColumn get nomTabDinFlgAct =>
      _nomTabDinFlgAct ??= _constructNomTabDinFlgAct();
  GeneratedIntColumn _constructNomTabDinFlgAct() {
    return GeneratedIntColumn(
      'nom_tab_din_flg_act',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        nomTabDinId,
        nomTabDinNom,
        nomTabDinFlgAct,
        statusId,
        usuId,
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
    if (d.nomTabDinId.present) {
      context.handle(_nomTabDinIdMeta,
          nomTabDinId.isAcceptableValue(d.nomTabDinId.value, _nomTabDinIdMeta));
    } else if (nomTabDinId.isRequired && isInserting) {
      context.missing(_nomTabDinIdMeta);
    }
    if (d.nomTabDinNom.present) {
      context.handle(
          _nomTabDinNomMeta,
          nomTabDinNom.isAcceptableValue(
              d.nomTabDinNom.value, _nomTabDinNomMeta));
    } else if (nomTabDinNom.isRequired && isInserting) {
      context.missing(_nomTabDinNomMeta);
    }
    if (d.nomTabDinFlgAct.present) {
      context.handle(
          _nomTabDinFlgActMeta,
          nomTabDinFlgAct.isAcceptableValue(
              d.nomTabDinFlgAct.value, _nomTabDinFlgActMeta));
    } else if (nomTabDinFlgAct.isRequired && isInserting) {
      context.missing(_nomTabDinFlgActMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {nomTabDinId};
  @override
  NomTabDin map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return NomTabDin.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableNomTabDinCompanion d) {
    final map = <String, Variable>{};
    if (d.nomTabDinId.present) {
      map['nom_tab_din_id'] = Variable<int, IntType>(d.nomTabDinId.value);
    }
    if (d.nomTabDinNom.present) {
      map['nom_tab_din_nom'] =
          Variable<String, StringType>(d.nomTabDinNom.value);
    }
    if (d.nomTabDinFlgAct.present) {
      map['nom_tab_din_flg_act'] =
          Variable<int, IntType>(d.nomTabDinFlgAct.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int nomTabDinId;
  final int tabDinValId;
  final int tabDinValFlgAct;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  TabDinVal(
      {@required this.nomTabDinId,
      @required this.tabDinValId,
      @required this.tabDinValFlgAct,
      @required this.statusId,
      @required this.usuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory TabDinVal.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return TabDinVal(
      nomTabDinId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}nom_tab_din_id']),
      tabDinValId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tab_din_val_id']),
      tabDinValFlgAct: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tab_din_val_flg_act']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      nomTabDinId: serializer.fromJson<int>(json['nomTabDinId']),
      tabDinValId: serializer.fromJson<int>(json['tabDinValId']),
      tabDinValFlgAct: serializer.fromJson<int>(json['tabDinValFlgAct']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'nomTabDinId': serializer.toJson<int>(nomTabDinId),
      'tabDinValId': serializer.toJson<int>(tabDinValId),
      'tabDinValFlgAct': serializer.toJson<int>(tabDinValFlgAct),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<TabDinVal>>(bool nullToAbsent) {
    return TableTabDinValCompanion(
      nomTabDinId: nomTabDinId == null && nullToAbsent
          ? const Value.absent()
          : Value(nomTabDinId),
      tabDinValId: tabDinValId == null && nullToAbsent
          ? const Value.absent()
          : Value(tabDinValId),
      tabDinValFlgAct: tabDinValFlgAct == null && nullToAbsent
          ? const Value.absent()
          : Value(tabDinValFlgAct),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int nomTabDinId,
          int tabDinValId,
          int tabDinValFlgAct,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      TabDinVal(
        nomTabDinId: nomTabDinId ?? this.nomTabDinId,
        tabDinValId: tabDinValId ?? this.tabDinValId,
        tabDinValFlgAct: tabDinValFlgAct ?? this.tabDinValFlgAct,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('TabDinVal(')
          ..write('nomTabDinId: $nomTabDinId, ')
          ..write('tabDinValId: $tabDinValId, ')
          ..write('tabDinValFlgAct: $tabDinValFlgAct, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      nomTabDinId.hashCode,
      $mrjc(
          tabDinValId.hashCode,
          $mrjc(
              tabDinValFlgAct.hashCode,
              $mrjc(
                  statusId.hashCode,
                  $mrjc(
                      usuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is TabDinVal &&
          other.nomTabDinId == nomTabDinId &&
          other.tabDinValId == tabDinValId &&
          other.tabDinValFlgAct == tabDinValFlgAct &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableTabDinValCompanion extends UpdateCompanion<TabDinVal> {
  final Value<int> nomTabDinId;
  final Value<int> tabDinValId;
  final Value<int> tabDinValFlgAct;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableTabDinValCompanion({
    this.nomTabDinId = const Value.absent(),
    this.tabDinValId = const Value.absent(),
    this.tabDinValFlgAct = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableTabDinValCompanion copyWith(
      {Value<int> nomTabDinId,
      Value<int> tabDinValId,
      Value<int> tabDinValFlgAct,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableTabDinValCompanion(
      nomTabDinId: nomTabDinId ?? this.nomTabDinId,
      tabDinValId: tabDinValId ?? this.tabDinValId,
      tabDinValFlgAct: tabDinValFlgAct ?? this.tabDinValFlgAct,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _nomTabDinIdMeta =
      const VerificationMeta('nomTabDinId');
  GeneratedIntColumn _nomTabDinId;
  @override
  GeneratedIntColumn get nomTabDinId =>
      _nomTabDinId ??= _constructNomTabDinId();
  GeneratedIntColumn _constructNomTabDinId() {
    return GeneratedIntColumn('nom_tab_din_id', $tableName, false,
        $customConstraints: 'REFERENCES NomTabDin(nomTabDinId)');
  }

  final VerificationMeta _tabDinValIdMeta =
      const VerificationMeta('tabDinValId');
  GeneratedIntColumn _tabDinValId;
  @override
  GeneratedIntColumn get tabDinValId =>
      _tabDinValId ??= _constructTabDinValId();
  GeneratedIntColumn _constructTabDinValId() {
    return GeneratedIntColumn('tab_din_val_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tabDinValFlgActMeta =
      const VerificationMeta('tabDinValFlgAct');
  GeneratedIntColumn _tabDinValFlgAct;
  @override
  GeneratedIntColumn get tabDinValFlgAct =>
      _tabDinValFlgAct ??= _constructTabDinValFlgAct();
  GeneratedIntColumn _constructTabDinValFlgAct() {
    return GeneratedIntColumn(
      'tab_din_val_flg_act',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        nomTabDinId,
        tabDinValId,
        tabDinValFlgAct,
        statusId,
        usuId,
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
    if (d.nomTabDinId.present) {
      context.handle(_nomTabDinIdMeta,
          nomTabDinId.isAcceptableValue(d.nomTabDinId.value, _nomTabDinIdMeta));
    } else if (nomTabDinId.isRequired && isInserting) {
      context.missing(_nomTabDinIdMeta);
    }
    if (d.tabDinValId.present) {
      context.handle(_tabDinValIdMeta,
          tabDinValId.isAcceptableValue(d.tabDinValId.value, _tabDinValIdMeta));
    } else if (tabDinValId.isRequired && isInserting) {
      context.missing(_tabDinValIdMeta);
    }
    if (d.tabDinValFlgAct.present) {
      context.handle(
          _tabDinValFlgActMeta,
          tabDinValFlgAct.isAcceptableValue(
              d.tabDinValFlgAct.value, _tabDinValFlgActMeta));
    } else if (tabDinValFlgAct.isRequired && isInserting) {
      context.missing(_tabDinValFlgActMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {tabDinValId};
  @override
  TabDinVal map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TabDinVal.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableTabDinValCompanion d) {
    final map = <String, Variable>{};
    if (d.nomTabDinId.present) {
      map['nom_tab_din_id'] = Variable<int, IntType>(d.nomTabDinId.value);
    }
    if (d.tabDinValId.present) {
      map['tab_din_val_id'] = Variable<int, IntType>(d.tabDinValId.value);
    }
    if (d.tabDinValFlgAct.present) {
      map['tab_din_val_flg_act'] =
          Variable<int, IntType>(d.tabDinValFlgAct.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int tabDinValCondTDId;
  final int tabDinValCondTDValId;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  TabDinValCond(
      {@required this.tabDinValCondTDId,
      @required this.tabDinValCondTDValId,
      @required this.statusId,
      @required this.usuId,
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
      tabDinValCondTDId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tab_din_val_cond_t_d_id']),
      tabDinValCondTDValId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tab_din_val_cond_t_d_val_id']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      tabDinValCondTDId: serializer.fromJson<int>(json['tabDinValCondTDId']),
      tabDinValCondTDValId:
          serializer.fromJson<int>(json['tabDinValCondTDValId']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'tabDinValCondTDId': serializer.toJson<int>(tabDinValCondTDId),
      'tabDinValCondTDValId': serializer.toJson<int>(tabDinValCondTDValId),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<TabDinValCond>>(
      bool nullToAbsent) {
    return TableTabDinValCondCompanion(
      tabDinValCondTDId: tabDinValCondTDId == null && nullToAbsent
          ? const Value.absent()
          : Value(tabDinValCondTDId),
      tabDinValCondTDValId: tabDinValCondTDValId == null && nullToAbsent
          ? const Value.absent()
          : Value(tabDinValCondTDValId),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int tabDinValCondTDId,
          int tabDinValCondTDValId,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      TabDinValCond(
        tabDinValCondTDId: tabDinValCondTDId ?? this.tabDinValCondTDId,
        tabDinValCondTDValId: tabDinValCondTDValId ?? this.tabDinValCondTDValId,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('TabDinValCond(')
          ..write('tabDinValCondTDId: $tabDinValCondTDId, ')
          ..write('tabDinValCondTDValId: $tabDinValCondTDValId, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tabDinValCondTDId.hashCode,
      $mrjc(
          tabDinValCondTDValId.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is TabDinValCond &&
          other.tabDinValCondTDId == tabDinValCondTDId &&
          other.tabDinValCondTDValId == tabDinValCondTDValId &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableTabDinValCondCompanion extends UpdateCompanion<TabDinValCond> {
  final Value<int> tabDinValCondTDId;
  final Value<int> tabDinValCondTDValId;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableTabDinValCondCompanion({
    this.tabDinValCondTDId = const Value.absent(),
    this.tabDinValCondTDValId = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableTabDinValCondCompanion copyWith(
      {Value<int> tabDinValCondTDId,
      Value<int> tabDinValCondTDValId,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableTabDinValCondCompanion(
      tabDinValCondTDId: tabDinValCondTDId ?? this.tabDinValCondTDId,
      tabDinValCondTDValId: tabDinValCondTDValId ?? this.tabDinValCondTDValId,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _tabDinValCondTDIdMeta =
      const VerificationMeta('tabDinValCondTDId');
  GeneratedIntColumn _tabDinValCondTDId;
  @override
  GeneratedIntColumn get tabDinValCondTDId =>
      _tabDinValCondTDId ??= _constructTabDinValCondTDId();
  GeneratedIntColumn _constructTabDinValCondTDId() {
    return GeneratedIntColumn('tab_din_val_cond_t_d_id', $tableName, false,
        $customConstraints: 'REFERENCES NomTabDin(nomTabDinId)');
  }

  final VerificationMeta _tabDinValCondTDValIdMeta =
      const VerificationMeta('tabDinValCondTDValId');
  GeneratedIntColumn _tabDinValCondTDValId;
  @override
  GeneratedIntColumn get tabDinValCondTDValId =>
      _tabDinValCondTDValId ??= _constructTabDinValCondTDValId();
  GeneratedIntColumn _constructTabDinValCondTDValId() {
    return GeneratedIntColumn('tab_din_val_cond_t_d_val_id', $tableName, false,
        $customConstraints: 'REFERENCES TabDinVal(tabDinValId)');
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        tabDinValCondTDId,
        tabDinValCondTDValId,
        statusId,
        usuId,
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
    if (d.tabDinValCondTDId.present) {
      context.handle(
          _tabDinValCondTDIdMeta,
          tabDinValCondTDId.isAcceptableValue(
              d.tabDinValCondTDId.value, _tabDinValCondTDIdMeta));
    } else if (tabDinValCondTDId.isRequired && isInserting) {
      context.missing(_tabDinValCondTDIdMeta);
    }
    if (d.tabDinValCondTDValId.present) {
      context.handle(
          _tabDinValCondTDValIdMeta,
          tabDinValCondTDValId.isAcceptableValue(
              d.tabDinValCondTDValId.value, _tabDinValCondTDValIdMeta));
    } else if (tabDinValCondTDValId.isRequired && isInserting) {
      context.missing(_tabDinValCondTDValIdMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
    if (d.tabDinValCondTDId.present) {
      map['tab_din_val_cond_t_d_id'] =
          Variable<int, IntType>(d.tabDinValCondTDId.value);
    }
    if (d.tabDinValCondTDValId.present) {
      map['tab_din_val_cond_t_d_val_id'] =
          Variable<int, IntType>(d.tabDinValCondTDValId.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int usuId;
  final String usuNom;
  final String usuNom2;
  final String usuApe;
  final String usuApe2;
  final String usuNick;
  final String usuKeyPass;
  final String usuHashPass;
  final String usuPassAlgoritmo;
  final int usuFlgAct;
  final int usuFlgGenerico;
  final int statusId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Usuarios(
      {@required this.usuId,
      @required this.usuNom,
      @required this.usuNom2,
      @required this.usuApe,
      @required this.usuApe2,
      @required this.usuNick,
      @required this.usuKeyPass,
      @required this.usuHashPass,
      @required this.usuPassAlgoritmo,
      @required this.usuFlgAct,
      @required this.usuFlgGenerico,
      @required this.statusId,
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
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      usuNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}usu_nom']),
      usuNom2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_nom2']),
      usuApe:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}usu_ape']),
      usuApe2: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_ape2']),
      usuNick: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_nick']),
      usuKeyPass: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_key_pass']),
      usuHashPass: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_hash_pass']),
      usuPassAlgoritmo: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}usu_pass_algoritmo']),
      usuFlgAct: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_flg_act']),
      usuFlgGenerico: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}usu_flg_generico']),
      statusId:
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
      usuId: serializer.fromJson<int>(json['usuId']),
      usuNom: serializer.fromJson<String>(json['usuNom']),
      usuNom2: serializer.fromJson<String>(json['usuNom2']),
      usuApe: serializer.fromJson<String>(json['usuApe']),
      usuApe2: serializer.fromJson<String>(json['usuApe2']),
      usuNick: serializer.fromJson<String>(json['usuNick']),
      usuKeyPass: serializer.fromJson<String>(json['usuKeyPass']),
      usuHashPass: serializer.fromJson<String>(json['usuHashPass']),
      usuPassAlgoritmo: serializer.fromJson<String>(json['usuPassAlgoritmo']),
      usuFlgAct: serializer.fromJson<int>(json['usuFlgAct']),
      usuFlgGenerico: serializer.fromJson<int>(json['usuFlgGenerico']),
      statusId: serializer.fromJson<int>(json['statusId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'usuId': serializer.toJson<int>(usuId),
      'usuNom': serializer.toJson<String>(usuNom),
      'usuNom2': serializer.toJson<String>(usuNom2),
      'usuApe': serializer.toJson<String>(usuApe),
      'usuApe2': serializer.toJson<String>(usuApe2),
      'usuNick': serializer.toJson<String>(usuNick),
      'usuKeyPass': serializer.toJson<String>(usuKeyPass),
      'usuHashPass': serializer.toJson<String>(usuHashPass),
      'usuPassAlgoritmo': serializer.toJson<String>(usuPassAlgoritmo),
      'usuFlgAct': serializer.toJson<int>(usuFlgAct),
      'usuFlgGenerico': serializer.toJson<int>(usuFlgGenerico),
      'statusId': serializer.toJson<int>(statusId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Usuarios>>(bool nullToAbsent) {
    return TableUsuariosCompanion(
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
      usuNom:
          usuNom == null && nullToAbsent ? const Value.absent() : Value(usuNom),
      usuNom2: usuNom2 == null && nullToAbsent
          ? const Value.absent()
          : Value(usuNom2),
      usuApe:
          usuApe == null && nullToAbsent ? const Value.absent() : Value(usuApe),
      usuApe2: usuApe2 == null && nullToAbsent
          ? const Value.absent()
          : Value(usuApe2),
      usuNick: usuNick == null && nullToAbsent
          ? const Value.absent()
          : Value(usuNick),
      usuKeyPass: usuKeyPass == null && nullToAbsent
          ? const Value.absent()
          : Value(usuKeyPass),
      usuHashPass: usuHashPass == null && nullToAbsent
          ? const Value.absent()
          : Value(usuHashPass),
      usuPassAlgoritmo: usuPassAlgoritmo == null && nullToAbsent
          ? const Value.absent()
          : Value(usuPassAlgoritmo),
      usuFlgAct: usuFlgAct == null && nullToAbsent
          ? const Value.absent()
          : Value(usuFlgAct),
      usuFlgGenerico: usuFlgGenerico == null && nullToAbsent
          ? const Value.absent()
          : Value(usuFlgGenerico),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
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
          {int usuId,
          String usuNom,
          String usuNom2,
          String usuApe,
          String usuApe2,
          String usuNick,
          String usuKeyPass,
          String usuHashPass,
          String usuPassAlgoritmo,
          int usuFlgAct,
          int usuFlgGenerico,
          int statusId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Usuarios(
        usuId: usuId ?? this.usuId,
        usuNom: usuNom ?? this.usuNom,
        usuNom2: usuNom2 ?? this.usuNom2,
        usuApe: usuApe ?? this.usuApe,
        usuApe2: usuApe2 ?? this.usuApe2,
        usuNick: usuNick ?? this.usuNick,
        usuKeyPass: usuKeyPass ?? this.usuKeyPass,
        usuHashPass: usuHashPass ?? this.usuHashPass,
        usuPassAlgoritmo: usuPassAlgoritmo ?? this.usuPassAlgoritmo,
        usuFlgAct: usuFlgAct ?? this.usuFlgAct,
        usuFlgGenerico: usuFlgGenerico ?? this.usuFlgGenerico,
        statusId: statusId ?? this.statusId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Usuarios(')
          ..write('usuId: $usuId, ')
          ..write('usuNom: $usuNom, ')
          ..write('usuNom2: $usuNom2, ')
          ..write('usuApe: $usuApe, ')
          ..write('usuApe2: $usuApe2, ')
          ..write('usuNick: $usuNick, ')
          ..write('usuKeyPass: $usuKeyPass, ')
          ..write('usuHashPass: $usuHashPass, ')
          ..write('usuPassAlgoritmo: $usuPassAlgoritmo, ')
          ..write('usuFlgAct: $usuFlgAct, ')
          ..write('usuFlgGenerico: $usuFlgGenerico, ')
          ..write('statusId: $statusId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      usuId.hashCode,
      $mrjc(
          usuNom.hashCode,
          $mrjc(
              usuNom2.hashCode,
              $mrjc(
                  usuApe.hashCode,
                  $mrjc(
                      usuApe2.hashCode,
                      $mrjc(
                          usuNick.hashCode,
                          $mrjc(
                              usuKeyPass.hashCode,
                              $mrjc(
                                  usuHashPass.hashCode,
                                  $mrjc(
                                      usuPassAlgoritmo.hashCode,
                                      $mrjc(
                                          usuFlgAct.hashCode,
                                          $mrjc(
                                              usuFlgGenerico.hashCode,
                                              $mrjc(
                                                  statusId.hashCode,
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
          other.usuId == usuId &&
          other.usuNom == usuNom &&
          other.usuNom2 == usuNom2 &&
          other.usuApe == usuApe &&
          other.usuApe2 == usuApe2 &&
          other.usuNick == usuNick &&
          other.usuKeyPass == usuKeyPass &&
          other.usuHashPass == usuHashPass &&
          other.usuPassAlgoritmo == usuPassAlgoritmo &&
          other.usuFlgAct == usuFlgAct &&
          other.usuFlgGenerico == usuFlgGenerico &&
          other.statusId == statusId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableUsuariosCompanion extends UpdateCompanion<Usuarios> {
  final Value<int> usuId;
  final Value<String> usuNom;
  final Value<String> usuNom2;
  final Value<String> usuApe;
  final Value<String> usuApe2;
  final Value<String> usuNick;
  final Value<String> usuKeyPass;
  final Value<String> usuHashPass;
  final Value<String> usuPassAlgoritmo;
  final Value<int> usuFlgAct;
  final Value<int> usuFlgGenerico;
  final Value<int> statusId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableUsuariosCompanion({
    this.usuId = const Value.absent(),
    this.usuNom = const Value.absent(),
    this.usuNom2 = const Value.absent(),
    this.usuApe = const Value.absent(),
    this.usuApe2 = const Value.absent(),
    this.usuNick = const Value.absent(),
    this.usuKeyPass = const Value.absent(),
    this.usuHashPass = const Value.absent(),
    this.usuPassAlgoritmo = const Value.absent(),
    this.usuFlgAct = const Value.absent(),
    this.usuFlgGenerico = const Value.absent(),
    this.statusId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableUsuariosCompanion copyWith(
      {Value<int> usuId,
      Value<String> usuNom,
      Value<String> usuNom2,
      Value<String> usuApe,
      Value<String> usuApe2,
      Value<String> usuNick,
      Value<String> usuKeyPass,
      Value<String> usuHashPass,
      Value<String> usuPassAlgoritmo,
      Value<int> usuFlgAct,
      Value<int> usuFlgGenerico,
      Value<int> statusId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableUsuariosCompanion(
      usuId: usuId ?? this.usuId,
      usuNom: usuNom ?? this.usuNom,
      usuNom2: usuNom2 ?? this.usuNom2,
      usuApe: usuApe ?? this.usuApe,
      usuApe2: usuApe2 ?? this.usuApe2,
      usuNick: usuNick ?? this.usuNick,
      usuKeyPass: usuKeyPass ?? this.usuKeyPass,
      usuHashPass: usuHashPass ?? this.usuHashPass,
      usuPassAlgoritmo: usuPassAlgoritmo ?? this.usuPassAlgoritmo,
      usuFlgAct: usuFlgAct ?? this.usuFlgAct,
      usuFlgGenerico: usuFlgGenerico ?? this.usuFlgGenerico,
      statusId: statusId ?? this.statusId,
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
  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _usuNomMeta = const VerificationMeta('usuNom');
  GeneratedTextColumn _usuNom;
  @override
  GeneratedTextColumn get usuNom => _usuNom ??= _constructUsuNom();
  GeneratedTextColumn _constructUsuNom() {
    return GeneratedTextColumn(
      'usu_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuNom2Meta = const VerificationMeta('usuNom2');
  GeneratedTextColumn _usuNom2;
  @override
  GeneratedTextColumn get usuNom2 => _usuNom2 ??= _constructUsuNom2();
  GeneratedTextColumn _constructUsuNom2() {
    return GeneratedTextColumn(
      'usu_nom2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuApeMeta = const VerificationMeta('usuApe');
  GeneratedTextColumn _usuApe;
  @override
  GeneratedTextColumn get usuApe => _usuApe ??= _constructUsuApe();
  GeneratedTextColumn _constructUsuApe() {
    return GeneratedTextColumn(
      'usu_ape',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuApe2Meta = const VerificationMeta('usuApe2');
  GeneratedTextColumn _usuApe2;
  @override
  GeneratedTextColumn get usuApe2 => _usuApe2 ??= _constructUsuApe2();
  GeneratedTextColumn _constructUsuApe2() {
    return GeneratedTextColumn(
      'usu_ape2',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuNickMeta = const VerificationMeta('usuNick');
  GeneratedTextColumn _usuNick;
  @override
  GeneratedTextColumn get usuNick => _usuNick ??= _constructUsuNick();
  GeneratedTextColumn _constructUsuNick() {
    return GeneratedTextColumn(
      'usu_nick',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuKeyPassMeta = const VerificationMeta('usuKeyPass');
  GeneratedTextColumn _usuKeyPass;
  @override
  GeneratedTextColumn get usuKeyPass => _usuKeyPass ??= _constructUsuKeyPass();
  GeneratedTextColumn _constructUsuKeyPass() {
    return GeneratedTextColumn(
      'usu_key_pass',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuHashPassMeta =
      const VerificationMeta('usuHashPass');
  GeneratedTextColumn _usuHashPass;
  @override
  GeneratedTextColumn get usuHashPass =>
      _usuHashPass ??= _constructUsuHashPass();
  GeneratedTextColumn _constructUsuHashPass() {
    return GeneratedTextColumn(
      'usu_hash_pass',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuPassAlgoritmoMeta =
      const VerificationMeta('usuPassAlgoritmo');
  GeneratedTextColumn _usuPassAlgoritmo;
  @override
  GeneratedTextColumn get usuPassAlgoritmo =>
      _usuPassAlgoritmo ??= _constructUsuPassAlgoritmo();
  GeneratedTextColumn _constructUsuPassAlgoritmo() {
    return GeneratedTextColumn(
      'usu_pass_algoritmo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuFlgActMeta = const VerificationMeta('usuFlgAct');
  GeneratedIntColumn _usuFlgAct;
  @override
  GeneratedIntColumn get usuFlgAct => _usuFlgAct ??= _constructUsuFlgAct();
  GeneratedIntColumn _constructUsuFlgAct() {
    return GeneratedIntColumn(
      'usu_flg_act',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuFlgGenericoMeta =
      const VerificationMeta('usuFlgGenerico');
  GeneratedIntColumn _usuFlgGenerico;
  @override
  GeneratedIntColumn get usuFlgGenerico =>
      _usuFlgGenerico ??= _constructUsuFlgGenerico();
  GeneratedIntColumn _constructUsuFlgGenerico() {
    return GeneratedIntColumn(
      'usu_flg_generico',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
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
        usuId,
        usuNom,
        usuNom2,
        usuApe,
        usuApe2,
        usuNick,
        usuKeyPass,
        usuHashPass,
        usuPassAlgoritmo,
        usuFlgAct,
        usuFlgGenerico,
        statusId,
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
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
    }
    if (d.usuNom.present) {
      context.handle(
          _usuNomMeta, usuNom.isAcceptableValue(d.usuNom.value, _usuNomMeta));
    } else if (usuNom.isRequired && isInserting) {
      context.missing(_usuNomMeta);
    }
    if (d.usuNom2.present) {
      context.handle(_usuNom2Meta,
          usuNom2.isAcceptableValue(d.usuNom2.value, _usuNom2Meta));
    } else if (usuNom2.isRequired && isInserting) {
      context.missing(_usuNom2Meta);
    }
    if (d.usuApe.present) {
      context.handle(
          _usuApeMeta, usuApe.isAcceptableValue(d.usuApe.value, _usuApeMeta));
    } else if (usuApe.isRequired && isInserting) {
      context.missing(_usuApeMeta);
    }
    if (d.usuApe2.present) {
      context.handle(_usuApe2Meta,
          usuApe2.isAcceptableValue(d.usuApe2.value, _usuApe2Meta));
    } else if (usuApe2.isRequired && isInserting) {
      context.missing(_usuApe2Meta);
    }
    if (d.usuNick.present) {
      context.handle(_usuNickMeta,
          usuNick.isAcceptableValue(d.usuNick.value, _usuNickMeta));
    } else if (usuNick.isRequired && isInserting) {
      context.missing(_usuNickMeta);
    }
    if (d.usuKeyPass.present) {
      context.handle(_usuKeyPassMeta,
          usuKeyPass.isAcceptableValue(d.usuKeyPass.value, _usuKeyPassMeta));
    } else if (usuKeyPass.isRequired && isInserting) {
      context.missing(_usuKeyPassMeta);
    }
    if (d.usuHashPass.present) {
      context.handle(_usuHashPassMeta,
          usuHashPass.isAcceptableValue(d.usuHashPass.value, _usuHashPassMeta));
    } else if (usuHashPass.isRequired && isInserting) {
      context.missing(_usuHashPassMeta);
    }
    if (d.usuPassAlgoritmo.present) {
      context.handle(
          _usuPassAlgoritmoMeta,
          usuPassAlgoritmo.isAcceptableValue(
              d.usuPassAlgoritmo.value, _usuPassAlgoritmoMeta));
    } else if (usuPassAlgoritmo.isRequired && isInserting) {
      context.missing(_usuPassAlgoritmoMeta);
    }
    if (d.usuFlgAct.present) {
      context.handle(_usuFlgActMeta,
          usuFlgAct.isAcceptableValue(d.usuFlgAct.value, _usuFlgActMeta));
    } else if (usuFlgAct.isRequired && isInserting) {
      context.missing(_usuFlgActMeta);
    }
    if (d.usuFlgGenerico.present) {
      context.handle(
          _usuFlgGenericoMeta,
          usuFlgGenerico.isAcceptableValue(
              d.usuFlgGenerico.value, _usuFlgGenericoMeta));
    } else if (usuFlgGenerico.isRequired && isInserting) {
      context.missing(_usuFlgGenericoMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {usuId};
  @override
  Usuarios map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Usuarios.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableUsuariosCompanion d) {
    final map = <String, Variable>{};
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
    }
    if (d.usuNom.present) {
      map['usu_nom'] = Variable<String, StringType>(d.usuNom.value);
    }
    if (d.usuNom2.present) {
      map['usu_nom2'] = Variable<String, StringType>(d.usuNom2.value);
    }
    if (d.usuApe.present) {
      map['usu_ape'] = Variable<String, StringType>(d.usuApe.value);
    }
    if (d.usuApe2.present) {
      map['usu_ape2'] = Variable<String, StringType>(d.usuApe2.value);
    }
    if (d.usuNick.present) {
      map['usu_nick'] = Variable<String, StringType>(d.usuNick.value);
    }
    if (d.usuKeyPass.present) {
      map['usu_key_pass'] = Variable<String, StringType>(d.usuKeyPass.value);
    }
    if (d.usuHashPass.present) {
      map['usu_hash_pass'] = Variable<String, StringType>(d.usuHashPass.value);
    }
    if (d.usuPassAlgoritmo.present) {
      map['usu_pass_algoritmo'] =
          Variable<String, StringType>(d.usuPassAlgoritmo.value);
    }
    if (d.usuFlgAct.present) {
      map['usu_flg_act'] = Variable<int, IntType>(d.usuFlgAct.value);
    }
    if (d.usuFlgGenerico.present) {
      map['usu_flg_generico'] = Variable<int, IntType>(d.usuFlgGenerico.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
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
  final int perfSisId;
  final String perfSisDesc;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  PerfSis(
      {@required this.perfSisId,
      @required this.perfSisDesc,
      @required this.statusId,
      @required this.usuId,
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
      perfSisId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}perf_sis_id']),
      perfSisDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}perf_sis_desc']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      perfSisId: serializer.fromJson<int>(json['perfSisId']),
      perfSisDesc: serializer.fromJson<String>(json['perfSisDesc']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'perfSisId': serializer.toJson<int>(perfSisId),
      'perfSisDesc': serializer.toJson<String>(perfSisDesc),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<PerfSis>>(bool nullToAbsent) {
    return TablePerfSisCompanion(
      perfSisId: perfSisId == null && nullToAbsent
          ? const Value.absent()
          : Value(perfSisId),
      perfSisDesc: perfSisDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(perfSisDesc),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int perfSisId,
          String perfSisDesc,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      PerfSis(
        perfSisId: perfSisId ?? this.perfSisId,
        perfSisDesc: perfSisDesc ?? this.perfSisDesc,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PerfSis(')
          ..write('perfSisId: $perfSisId, ')
          ..write('perfSisDesc: $perfSisDesc, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      perfSisId.hashCode,
      $mrjc(
          perfSisDesc.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is PerfSis &&
          other.perfSisId == perfSisId &&
          other.perfSisDesc == perfSisDesc &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePerfSisCompanion extends UpdateCompanion<PerfSis> {
  final Value<int> perfSisId;
  final Value<String> perfSisDesc;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePerfSisCompanion({
    this.perfSisId = const Value.absent(),
    this.perfSisDesc = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePerfSisCompanion copyWith(
      {Value<int> perfSisId,
      Value<String> perfSisDesc,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePerfSisCompanion(
      perfSisId: perfSisId ?? this.perfSisId,
      perfSisDesc: perfSisDesc ?? this.perfSisDesc,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _perfSisIdMeta = const VerificationMeta('perfSisId');
  GeneratedIntColumn _perfSisId;
  @override
  GeneratedIntColumn get perfSisId => _perfSisId ??= _constructPerfSisId();
  GeneratedIntColumn _constructPerfSisId() {
    return GeneratedIntColumn('perf_sis_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _perfSisDescMeta =
      const VerificationMeta('perfSisDesc');
  GeneratedTextColumn _perfSisDesc;
  @override
  GeneratedTextColumn get perfSisDesc =>
      _perfSisDesc ??= _constructPerfSisDesc();
  GeneratedTextColumn _constructPerfSisDesc() {
    return GeneratedTextColumn(
      'perf_sis_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        perfSisId,
        perfSisDesc,
        statusId,
        usuId,
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
    if (d.perfSisId.present) {
      context.handle(_perfSisIdMeta,
          perfSisId.isAcceptableValue(d.perfSisId.value, _perfSisIdMeta));
    } else if (perfSisId.isRequired && isInserting) {
      context.missing(_perfSisIdMeta);
    }
    if (d.perfSisDesc.present) {
      context.handle(_perfSisDescMeta,
          perfSisDesc.isAcceptableValue(d.perfSisDesc.value, _perfSisDescMeta));
    } else if (perfSisDesc.isRequired && isInserting) {
      context.missing(_perfSisDescMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {perfSisId};
  @override
  PerfSis map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return PerfSis.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TablePerfSisCompanion d) {
    final map = <String, Variable>{};
    if (d.perfSisId.present) {
      map['perf_sis_id'] = Variable<int, IntType>(d.perfSisId.value);
    }
    if (d.perfSisDesc.present) {
      map['perf_sis_desc'] = Variable<String, StringType>(d.perfSisDesc.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int sisId;
  final int perfSisId;
  final int usuId;
  final int sisUsuPerfHab;
  final int statusId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  SisUsuPerf(
      {@required this.sisId,
      @required this.perfSisId,
      @required this.usuId,
      @required this.sisUsuPerfHab,
      @required this.statusId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory SisUsuPerf.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return SisUsuPerf(
      sisId: intType.mapFromDatabaseResponse(data['${effectivePrefix}sis_id']),
      perfSisId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}perf_sis_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      sisUsuPerfHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}sis_usu_perf_hab']),
      statusId:
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
      sisId: serializer.fromJson<int>(json['sisId']),
      perfSisId: serializer.fromJson<int>(json['perfSisId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      sisUsuPerfHab: serializer.fromJson<int>(json['sisUsuPerfHab']),
      statusId: serializer.fromJson<int>(json['statusId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'sisId': serializer.toJson<int>(sisId),
      'perfSisId': serializer.toJson<int>(perfSisId),
      'usuId': serializer.toJson<int>(usuId),
      'sisUsuPerfHab': serializer.toJson<int>(sisUsuPerfHab),
      'statusId': serializer.toJson<int>(statusId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<SisUsuPerf>>(bool nullToAbsent) {
    return TableSisUsuPerfCompanion(
      sisId:
          sisId == null && nullToAbsent ? const Value.absent() : Value(sisId),
      perfSisId: perfSisId == null && nullToAbsent
          ? const Value.absent()
          : Value(perfSisId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
      sisUsuPerfHab: sisUsuPerfHab == null && nullToAbsent
          ? const Value.absent()
          : Value(sisUsuPerfHab),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
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
          {int sisId,
          int perfSisId,
          int usuId,
          int sisUsuPerfHab,
          int statusId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      SisUsuPerf(
        sisId: sisId ?? this.sisId,
        perfSisId: perfSisId ?? this.perfSisId,
        usuId: usuId ?? this.usuId,
        sisUsuPerfHab: sisUsuPerfHab ?? this.sisUsuPerfHab,
        statusId: statusId ?? this.statusId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('SisUsuPerf(')
          ..write('sisId: $sisId, ')
          ..write('perfSisId: $perfSisId, ')
          ..write('usuId: $usuId, ')
          ..write('sisUsuPerfHab: $sisUsuPerfHab, ')
          ..write('statusId: $statusId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      sisId.hashCode,
      $mrjc(
          perfSisId.hashCode,
          $mrjc(
              usuId.hashCode,
              $mrjc(
                  sisUsuPerfHab.hashCode,
                  $mrjc(
                      statusId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is SisUsuPerf &&
          other.sisId == sisId &&
          other.perfSisId == perfSisId &&
          other.usuId == usuId &&
          other.sisUsuPerfHab == sisUsuPerfHab &&
          other.statusId == statusId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableSisUsuPerfCompanion extends UpdateCompanion<SisUsuPerf> {
  final Value<int> sisId;
  final Value<int> perfSisId;
  final Value<int> usuId;
  final Value<int> sisUsuPerfHab;
  final Value<int> statusId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableSisUsuPerfCompanion({
    this.sisId = const Value.absent(),
    this.perfSisId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.sisUsuPerfHab = const Value.absent(),
    this.statusId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableSisUsuPerfCompanion copyWith(
      {Value<int> sisId,
      Value<int> perfSisId,
      Value<int> usuId,
      Value<int> sisUsuPerfHab,
      Value<int> statusId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableSisUsuPerfCompanion(
      sisId: sisId ?? this.sisId,
      perfSisId: perfSisId ?? this.perfSisId,
      usuId: usuId ?? this.usuId,
      sisUsuPerfHab: sisUsuPerfHab ?? this.sisUsuPerfHab,
      statusId: statusId ?? this.statusId,
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
  final VerificationMeta _sisIdMeta = const VerificationMeta('sisId');
  GeneratedIntColumn _sisId;
  @override
  GeneratedIntColumn get sisId => _sisId ??= _constructSisId();
  GeneratedIntColumn _constructSisId() {
    return GeneratedIntColumn(
      'sis_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _perfSisIdMeta = const VerificationMeta('perfSisId');
  GeneratedIntColumn _perfSisId;
  @override
  GeneratedIntColumn get perfSisId => _perfSisId ??= _constructPerfSisId();
  GeneratedIntColumn _constructPerfSisId() {
    return GeneratedIntColumn('perf_sis_id', $tableName, false,
        $customConstraints: 'REFERENCES PerfSis(perfSisId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
  }

  final VerificationMeta _sisUsuPerfHabMeta =
      const VerificationMeta('sisUsuPerfHab');
  GeneratedIntColumn _sisUsuPerfHab;
  @override
  GeneratedIntColumn get sisUsuPerfHab =>
      _sisUsuPerfHab ??= _constructSisUsuPerfHab();
  GeneratedIntColumn _constructSisUsuPerfHab() {
    return GeneratedIntColumn(
      'sis_usu_perf_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
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
        sisId,
        perfSisId,
        usuId,
        sisUsuPerfHab,
        statusId,
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
    if (d.sisId.present) {
      context.handle(
          _sisIdMeta, sisId.isAcceptableValue(d.sisId.value, _sisIdMeta));
    } else if (sisId.isRequired && isInserting) {
      context.missing(_sisIdMeta);
    }
    if (d.perfSisId.present) {
      context.handle(_perfSisIdMeta,
          perfSisId.isAcceptableValue(d.perfSisId.value, _perfSisIdMeta));
    } else if (perfSisId.isRequired && isInserting) {
      context.missing(_perfSisIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
    }
    if (d.sisUsuPerfHab.present) {
      context.handle(
          _sisUsuPerfHabMeta,
          sisUsuPerfHab.isAcceptableValue(
              d.sisUsuPerfHab.value, _sisUsuPerfHabMeta));
    } else if (sisUsuPerfHab.isRequired && isInserting) {
      context.missing(_sisUsuPerfHabMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
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
    if (d.sisId.present) {
      map['sis_id'] = Variable<int, IntType>(d.sisId.value);
    }
    if (d.perfSisId.present) {
      map['perf_sis_id'] = Variable<int, IntType>(d.perfSisId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
    }
    if (d.sisUsuPerfHab.present) {
      map['sis_usu_perf_hab'] = Variable<int, IntType>(d.sisUsuPerfHab.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
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
  final int rolId;
  final String rolNom;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Roles(
      {@required this.rolId,
      @required this.rolNom,
      @required this.statusId,
      @required this.usuId,
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
      rolId: intType.mapFromDatabaseResponse(data['${effectivePrefix}rol_id']),
      rolNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}rol_nom']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      rolId: serializer.fromJson<int>(json['rolId']),
      rolNom: serializer.fromJson<String>(json['rolNom']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'rolId': serializer.toJson<int>(rolId),
      'rolNom': serializer.toJson<String>(rolNom),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Roles>>(bool nullToAbsent) {
    return TableRolesCompanion(
      rolId:
          rolId == null && nullToAbsent ? const Value.absent() : Value(rolId),
      rolNom:
          rolNom == null && nullToAbsent ? const Value.absent() : Value(rolNom),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int rolId,
          String rolNom,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Roles(
        rolId: rolId ?? this.rolId,
        rolNom: rolNom ?? this.rolNom,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Roles(')
          ..write('rolId: $rolId, ')
          ..write('rolNom: $rolNom, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      rolId.hashCode,
      $mrjc(
          rolNom.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Roles &&
          other.rolId == rolId &&
          other.rolNom == rolNom &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableRolesCompanion extends UpdateCompanion<Roles> {
  final Value<int> rolId;
  final Value<String> rolNom;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableRolesCompanion({
    this.rolId = const Value.absent(),
    this.rolNom = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableRolesCompanion copyWith(
      {Value<int> rolId,
      Value<String> rolNom,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableRolesCompanion(
      rolId: rolId ?? this.rolId,
      rolNom: rolNom ?? this.rolNom,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _rolIdMeta = const VerificationMeta('rolId');
  GeneratedIntColumn _rolId;
  @override
  GeneratedIntColumn get rolId => _rolId ??= _constructRolId();
  GeneratedIntColumn _constructRolId() {
    return GeneratedIntColumn('rol_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _rolNomMeta = const VerificationMeta('rolNom');
  GeneratedTextColumn _rolNom;
  @override
  GeneratedTextColumn get rolNom => _rolNom ??= _constructRolNom();
  GeneratedTextColumn _constructRolNom() {
    return GeneratedTextColumn(
      'rol_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
      [rolId, rolNom, statusId, usuId, createdAt, updatedAt, deletedAt];
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
    if (d.rolId.present) {
      context.handle(
          _rolIdMeta, rolId.isAcceptableValue(d.rolId.value, _rolIdMeta));
    } else if (rolId.isRequired && isInserting) {
      context.missing(_rolIdMeta);
    }
    if (d.rolNom.present) {
      context.handle(
          _rolNomMeta, rolNom.isAcceptableValue(d.rolNom.value, _rolNomMeta));
    } else if (rolNom.isRequired && isInserting) {
      context.missing(_rolNomMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {rolId};
  @override
  Roles map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Roles.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableRolesCompanion d) {
    final map = <String, Variable>{};
    if (d.rolId.present) {
      map['rol_id'] = Variable<int, IntType>(d.rolId.value);
    }
    if (d.rolNom.present) {
      map['rol_nom'] = Variable<String, StringType>(d.rolNom.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int rRHHId;
  final String rRHHDesc;
  final int rRHHFlgAct;
  final String rRHHPref;
  final String rRHHSuf;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  RRHH(
      {@required this.rRHHId,
      @required this.rRHHDesc,
      @required this.rRHHFlgAct,
      @required this.rRHHPref,
      @required this.rRHHSuf,
      @required this.statusId,
      @required this.usuId,
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
      rRHHId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_id']),
      rRHHDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_desc']),
      rRHHFlgAct: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_flg_act']),
      rRHHPref: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_pref']),
      rRHHSuf: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_suf']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      rRHHId: serializer.fromJson<int>(json['rRHHId']),
      rRHHDesc: serializer.fromJson<String>(json['rRHHDesc']),
      rRHHFlgAct: serializer.fromJson<int>(json['rRHHFlgAct']),
      rRHHPref: serializer.fromJson<String>(json['rRHHPref']),
      rRHHSuf: serializer.fromJson<String>(json['rRHHSuf']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'rRHHId': serializer.toJson<int>(rRHHId),
      'rRHHDesc': serializer.toJson<String>(rRHHDesc),
      'rRHHFlgAct': serializer.toJson<int>(rRHHFlgAct),
      'rRHHPref': serializer.toJson<String>(rRHHPref),
      'rRHHSuf': serializer.toJson<String>(rRHHSuf),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<RRHH>>(bool nullToAbsent) {
    return TableRRHHCompanion(
      rRHHId:
          rRHHId == null && nullToAbsent ? const Value.absent() : Value(rRHHId),
      rRHHDesc: rRHHDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(rRHHDesc),
      rRHHFlgAct: rRHHFlgAct == null && nullToAbsent
          ? const Value.absent()
          : Value(rRHHFlgAct),
      rRHHPref: rRHHPref == null && nullToAbsent
          ? const Value.absent()
          : Value(rRHHPref),
      rRHHSuf: rRHHSuf == null && nullToAbsent
          ? const Value.absent()
          : Value(rRHHSuf),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int rRHHId,
          String rRHHDesc,
          int rRHHFlgAct,
          String rRHHPref,
          String rRHHSuf,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      RRHH(
        rRHHId: rRHHId ?? this.rRHHId,
        rRHHDesc: rRHHDesc ?? this.rRHHDesc,
        rRHHFlgAct: rRHHFlgAct ?? this.rRHHFlgAct,
        rRHHPref: rRHHPref ?? this.rRHHPref,
        rRHHSuf: rRHHSuf ?? this.rRHHSuf,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RRHH(')
          ..write('rRHHId: $rRHHId, ')
          ..write('rRHHDesc: $rRHHDesc, ')
          ..write('rRHHFlgAct: $rRHHFlgAct, ')
          ..write('rRHHPref: $rRHHPref, ')
          ..write('rRHHSuf: $rRHHSuf, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      rRHHId.hashCode,
      $mrjc(
          rRHHDesc.hashCode,
          $mrjc(
              rRHHFlgAct.hashCode,
              $mrjc(
                  rRHHPref.hashCode,
                  $mrjc(
                      rRHHSuf.hashCode,
                      $mrjc(
                          statusId.hashCode,
                          $mrjc(
                              usuId.hashCode,
                              $mrjc(
                                  createdAt.hashCode,
                                  $mrjc(updatedAt.hashCode,
                                      deletedAt.hashCode))))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is RRHH &&
          other.rRHHId == rRHHId &&
          other.rRHHDesc == rRHHDesc &&
          other.rRHHFlgAct == rRHHFlgAct &&
          other.rRHHPref == rRHHPref &&
          other.rRHHSuf == rRHHSuf &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableRRHHCompanion extends UpdateCompanion<RRHH> {
  final Value<int> rRHHId;
  final Value<String> rRHHDesc;
  final Value<int> rRHHFlgAct;
  final Value<String> rRHHPref;
  final Value<String> rRHHSuf;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableRRHHCompanion({
    this.rRHHId = const Value.absent(),
    this.rRHHDesc = const Value.absent(),
    this.rRHHFlgAct = const Value.absent(),
    this.rRHHPref = const Value.absent(),
    this.rRHHSuf = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableRRHHCompanion copyWith(
      {Value<int> rRHHId,
      Value<String> rRHHDesc,
      Value<int> rRHHFlgAct,
      Value<String> rRHHPref,
      Value<String> rRHHSuf,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableRRHHCompanion(
      rRHHId: rRHHId ?? this.rRHHId,
      rRHHDesc: rRHHDesc ?? this.rRHHDesc,
      rRHHFlgAct: rRHHFlgAct ?? this.rRHHFlgAct,
      rRHHPref: rRHHPref ?? this.rRHHPref,
      rRHHSuf: rRHHSuf ?? this.rRHHSuf,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _rRHHIdMeta = const VerificationMeta('rRHHId');
  GeneratedIntColumn _rRHHId;
  @override
  GeneratedIntColumn get rRHHId => _rRHHId ??= _constructRRHHId();
  GeneratedIntColumn _constructRRHHId() {
    return GeneratedIntColumn('r_r_h_h_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _rRHHDescMeta = const VerificationMeta('rRHHDesc');
  GeneratedTextColumn _rRHHDesc;
  @override
  GeneratedTextColumn get rRHHDesc => _rRHHDesc ??= _constructRRHHDesc();
  GeneratedTextColumn _constructRRHHDesc() {
    return GeneratedTextColumn(
      'r_r_h_h_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rRHHFlgActMeta = const VerificationMeta('rRHHFlgAct');
  GeneratedIntColumn _rRHHFlgAct;
  @override
  GeneratedIntColumn get rRHHFlgAct => _rRHHFlgAct ??= _constructRRHHFlgAct();
  GeneratedIntColumn _constructRRHHFlgAct() {
    return GeneratedIntColumn(
      'r_r_h_h_flg_act',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rRHHPrefMeta = const VerificationMeta('rRHHPref');
  GeneratedTextColumn _rRHHPref;
  @override
  GeneratedTextColumn get rRHHPref => _rRHHPref ??= _constructRRHHPref();
  GeneratedTextColumn _constructRRHHPref() {
    return GeneratedTextColumn(
      'r_r_h_h_pref',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rRHHSufMeta = const VerificationMeta('rRHHSuf');
  GeneratedTextColumn _rRHHSuf;
  @override
  GeneratedTextColumn get rRHHSuf => _rRHHSuf ??= _constructRRHHSuf();
  GeneratedTextColumn _constructRRHHSuf() {
    return GeneratedTextColumn(
      'r_r_h_h_suf',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        rRHHId,
        rRHHDesc,
        rRHHFlgAct,
        rRHHPref,
        rRHHSuf,
        statusId,
        usuId,
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
    if (d.rRHHId.present) {
      context.handle(
          _rRHHIdMeta, rRHHId.isAcceptableValue(d.rRHHId.value, _rRHHIdMeta));
    } else if (rRHHId.isRequired && isInserting) {
      context.missing(_rRHHIdMeta);
    }
    if (d.rRHHDesc.present) {
      context.handle(_rRHHDescMeta,
          rRHHDesc.isAcceptableValue(d.rRHHDesc.value, _rRHHDescMeta));
    } else if (rRHHDesc.isRequired && isInserting) {
      context.missing(_rRHHDescMeta);
    }
    if (d.rRHHFlgAct.present) {
      context.handle(_rRHHFlgActMeta,
          rRHHFlgAct.isAcceptableValue(d.rRHHFlgAct.value, _rRHHFlgActMeta));
    } else if (rRHHFlgAct.isRequired && isInserting) {
      context.missing(_rRHHFlgActMeta);
    }
    if (d.rRHHPref.present) {
      context.handle(_rRHHPrefMeta,
          rRHHPref.isAcceptableValue(d.rRHHPref.value, _rRHHPrefMeta));
    } else if (rRHHPref.isRequired && isInserting) {
      context.missing(_rRHHPrefMeta);
    }
    if (d.rRHHSuf.present) {
      context.handle(_rRHHSufMeta,
          rRHHSuf.isAcceptableValue(d.rRHHSuf.value, _rRHHSufMeta));
    } else if (rRHHSuf.isRequired && isInserting) {
      context.missing(_rRHHSufMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {rRHHId};
  @override
  RRHH map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RRHH.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableRRHHCompanion d) {
    final map = <String, Variable>{};
    if (d.rRHHId.present) {
      map['r_r_h_h_id'] = Variable<int, IntType>(d.rRHHId.value);
    }
    if (d.rRHHDesc.present) {
      map['r_r_h_h_desc'] = Variable<String, StringType>(d.rRHHDesc.value);
    }
    if (d.rRHHFlgAct.present) {
      map['r_r_h_h_flg_act'] = Variable<int, IntType>(d.rRHHFlgAct.value);
    }
    if (d.rRHHPref.present) {
      map['r_r_h_h_pref'] = Variable<String, StringType>(d.rRHHPref.value);
    }
    if (d.rRHHSuf.present) {
      map['r_r_h_h_suf'] = Variable<String, StringType>(d.rRHHSuf.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int rRHHId;
  final int usuId;
  final int statusId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  RRHHPers(
      {@required this.rRHHId,
      @required this.usuId,
      @required this.statusId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory RRHHPers.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return RRHHPers(
      rRHHId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
      statusId:
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
      rRHHId: serializer.fromJson<int>(json['rRHHId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      statusId: serializer.fromJson<int>(json['statusId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'rRHHId': serializer.toJson<int>(rRHHId),
      'usuId': serializer.toJson<int>(usuId),
      'statusId': serializer.toJson<int>(statusId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<RRHHPers>>(bool nullToAbsent) {
    return TableRRHHPersCompanion(
      rRHHId:
          rRHHId == null && nullToAbsent ? const Value.absent() : Value(rRHHId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
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
          {int rRHHId,
          int usuId,
          int statusId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      RRHHPers(
        rRHHId: rRHHId ?? this.rRHHId,
        usuId: usuId ?? this.usuId,
        statusId: statusId ?? this.statusId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RRHHPers(')
          ..write('rRHHId: $rRHHId, ')
          ..write('usuId: $usuId, ')
          ..write('statusId: $statusId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      rRHHId.hashCode,
      $mrjc(
          usuId.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(createdAt.hashCode,
                  $mrjc(updatedAt.hashCode, deletedAt.hashCode))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is RRHHPers &&
          other.rRHHId == rRHHId &&
          other.usuId == usuId &&
          other.statusId == statusId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableRRHHPersCompanion extends UpdateCompanion<RRHHPers> {
  final Value<int> rRHHId;
  final Value<int> usuId;
  final Value<int> statusId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableRRHHPersCompanion({
    this.rRHHId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.statusId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableRRHHPersCompanion copyWith(
      {Value<int> rRHHId,
      Value<int> usuId,
      Value<int> statusId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableRRHHPersCompanion(
      rRHHId: rRHHId ?? this.rRHHId,
      usuId: usuId ?? this.usuId,
      statusId: statusId ?? this.statusId,
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
  final VerificationMeta _rRHHIdMeta = const VerificationMeta('rRHHId');
  GeneratedIntColumn _rRHHId;
  @override
  GeneratedIntColumn get rRHHId => _rRHHId ??= _constructRRHHId();
  GeneratedIntColumn _constructRRHHId() {
    return GeneratedIntColumn(
      'r_r_h_h_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
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
      [rRHHId, usuId, statusId, createdAt, updatedAt, deletedAt];
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
    if (d.rRHHId.present) {
      context.handle(
          _rRHHIdMeta, rRHHId.isAcceptableValue(d.rRHHId.value, _rRHHIdMeta));
    } else if (rRHHId.isRequired && isInserting) {
      context.missing(_rRHHIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
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
    if (d.rRHHId.present) {
      map['r_r_h_h_id'] = Variable<int, IntType>(d.rRHHId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
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
  final int rRHHId;
  final String rRHHRolFchIni;
  final int rolId;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  RRHHRol(
      {@required this.rRHHId,
      @required this.rRHHRolFchIni,
      @required this.rolId,
      @required this.statusId,
      @required this.usuId,
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
      rRHHId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}r_r_h_h_id']),
      rRHHRolFchIni: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}r_r_h_h_rol_fch_ini']),
      rolId: intType.mapFromDatabaseResponse(data['${effectivePrefix}rol_id']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      rRHHId: serializer.fromJson<int>(json['rRHHId']),
      rRHHRolFchIni: serializer.fromJson<String>(json['rRHHRolFchIni']),
      rolId: serializer.fromJson<int>(json['rolId']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'rRHHId': serializer.toJson<int>(rRHHId),
      'rRHHRolFchIni': serializer.toJson<String>(rRHHRolFchIni),
      'rolId': serializer.toJson<int>(rolId),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<RRHHRol>>(bool nullToAbsent) {
    return TableRRHHRolCompanion(
      rRHHId:
          rRHHId == null && nullToAbsent ? const Value.absent() : Value(rRHHId),
      rRHHRolFchIni: rRHHRolFchIni == null && nullToAbsent
          ? const Value.absent()
          : Value(rRHHRolFchIni),
      rolId:
          rolId == null && nullToAbsent ? const Value.absent() : Value(rolId),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int rRHHId,
          String rRHHRolFchIni,
          int rolId,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      RRHHRol(
        rRHHId: rRHHId ?? this.rRHHId,
        rRHHRolFchIni: rRHHRolFchIni ?? this.rRHHRolFchIni,
        rolId: rolId ?? this.rolId,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('RRHHRol(')
          ..write('rRHHId: $rRHHId, ')
          ..write('rRHHRolFchIni: $rRHHRolFchIni, ')
          ..write('rolId: $rolId, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      rRHHId.hashCode,
      $mrjc(
          rRHHRolFchIni.hashCode,
          $mrjc(
              rolId.hashCode,
              $mrjc(
                  statusId.hashCode,
                  $mrjc(
                      usuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is RRHHRol &&
          other.rRHHId == rRHHId &&
          other.rRHHRolFchIni == rRHHRolFchIni &&
          other.rolId == rolId &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableRRHHRolCompanion extends UpdateCompanion<RRHHRol> {
  final Value<int> rRHHId;
  final Value<String> rRHHRolFchIni;
  final Value<int> rolId;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableRRHHRolCompanion({
    this.rRHHId = const Value.absent(),
    this.rRHHRolFchIni = const Value.absent(),
    this.rolId = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableRRHHRolCompanion copyWith(
      {Value<int> rRHHId,
      Value<String> rRHHRolFchIni,
      Value<int> rolId,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableRRHHRolCompanion(
      rRHHId: rRHHId ?? this.rRHHId,
      rRHHRolFchIni: rRHHRolFchIni ?? this.rRHHRolFchIni,
      rolId: rolId ?? this.rolId,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _rRHHIdMeta = const VerificationMeta('rRHHId');
  GeneratedIntColumn _rRHHId;
  @override
  GeneratedIntColumn get rRHHId => _rRHHId ??= _constructRRHHId();
  GeneratedIntColumn _constructRRHHId() {
    return GeneratedIntColumn(
      'r_r_h_h_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rRHHRolFchIniMeta =
      const VerificationMeta('rRHHRolFchIni');
  GeneratedTextColumn _rRHHRolFchIni;
  @override
  GeneratedTextColumn get rRHHRolFchIni =>
      _rRHHRolFchIni ??= _constructRRHHRolFchIni();
  GeneratedTextColumn _constructRRHHRolFchIni() {
    return GeneratedTextColumn(
      'r_r_h_h_rol_fch_ini',
      $tableName,
      false,
    );
  }

  final VerificationMeta _rolIdMeta = const VerificationMeta('rolId');
  GeneratedIntColumn _rolId;
  @override
  GeneratedIntColumn get rolId => _rolId ??= _constructRolId();
  GeneratedIntColumn _constructRolId() {
    return GeneratedIntColumn('rol_id', $tableName, false,
        $customConstraints: 'REFERENCES Roles(rolId)');
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        rRHHId,
        rRHHRolFchIni,
        rolId,
        statusId,
        usuId,
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
    if (d.rRHHId.present) {
      context.handle(
          _rRHHIdMeta, rRHHId.isAcceptableValue(d.rRHHId.value, _rRHHIdMeta));
    } else if (rRHHId.isRequired && isInserting) {
      context.missing(_rRHHIdMeta);
    }
    if (d.rRHHRolFchIni.present) {
      context.handle(
          _rRHHRolFchIniMeta,
          rRHHRolFchIni.isAcceptableValue(
              d.rRHHRolFchIni.value, _rRHHRolFchIniMeta));
    } else if (rRHHRolFchIni.isRequired && isInserting) {
      context.missing(_rRHHRolFchIniMeta);
    }
    if (d.rolId.present) {
      context.handle(
          _rolIdMeta, rolId.isAcceptableValue(d.rolId.value, _rolIdMeta));
    } else if (rolId.isRequired && isInserting) {
      context.missing(_rolIdMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
    if (d.rRHHId.present) {
      map['r_r_h_h_id'] = Variable<int, IntType>(d.rRHHId.value);
    }
    if (d.rRHHRolFchIni.present) {
      map['r_r_h_h_rol_fch_ini'] =
          Variable<String, StringType>(d.rRHHRolFchIni.value);
    }
    if (d.rolId.present) {
      map['rol_id'] = Variable<int, IntType>(d.rolId.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int tipActAsistId;
  final String tipActAsistDesc;
  final int tipActAsistFlgSeIndica;
  final int tipActAsistFlgParacl;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  TipActAsist(
      {@required this.tipActAsistId,
      @required this.tipActAsistDesc,
      @required this.tipActAsistFlgSeIndica,
      @required this.tipActAsistFlgParacl,
      @required this.statusId,
      @required this.usuId,
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
      tipActAsistId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tip_act_asist_id']),
      tipActAsistDesc: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}tip_act_asist_desc']),
      tipActAsistFlgSeIndica: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tip_act_asist_flg_se_indica']),
      tipActAsistFlgParacl: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}tip_act_asist_flg_paracl']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      tipActAsistId: serializer.fromJson<int>(json['tipActAsistId']),
      tipActAsistDesc: serializer.fromJson<String>(json['tipActAsistDesc']),
      tipActAsistFlgSeIndica:
          serializer.fromJson<int>(json['tipActAsistFlgSeIndica']),
      tipActAsistFlgParacl:
          serializer.fromJson<int>(json['tipActAsistFlgParacl']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'tipActAsistId': serializer.toJson<int>(tipActAsistId),
      'tipActAsistDesc': serializer.toJson<String>(tipActAsistDesc),
      'tipActAsistFlgSeIndica': serializer.toJson<int>(tipActAsistFlgSeIndica),
      'tipActAsistFlgParacl': serializer.toJson<int>(tipActAsistFlgParacl),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<TipActAsist>>(bool nullToAbsent) {
    return TableTipActAsistCompanion(
      tipActAsistId: tipActAsistId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipActAsistId),
      tipActAsistDesc: tipActAsistDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(tipActAsistDesc),
      tipActAsistFlgSeIndica: tipActAsistFlgSeIndica == null && nullToAbsent
          ? const Value.absent()
          : Value(tipActAsistFlgSeIndica),
      tipActAsistFlgParacl: tipActAsistFlgParacl == null && nullToAbsent
          ? const Value.absent()
          : Value(tipActAsistFlgParacl),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int tipActAsistId,
          String tipActAsistDesc,
          int tipActAsistFlgSeIndica,
          int tipActAsistFlgParacl,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      TipActAsist(
        tipActAsistId: tipActAsistId ?? this.tipActAsistId,
        tipActAsistDesc: tipActAsistDesc ?? this.tipActAsistDesc,
        tipActAsistFlgSeIndica:
            tipActAsistFlgSeIndica ?? this.tipActAsistFlgSeIndica,
        tipActAsistFlgParacl: tipActAsistFlgParacl ?? this.tipActAsistFlgParacl,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('TipActAsist(')
          ..write('tipActAsistId: $tipActAsistId, ')
          ..write('tipActAsistDesc: $tipActAsistDesc, ')
          ..write('tipActAsistFlgSeIndica: $tipActAsistFlgSeIndica, ')
          ..write('tipActAsistFlgParacl: $tipActAsistFlgParacl, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      tipActAsistId.hashCode,
      $mrjc(
          tipActAsistDesc.hashCode,
          $mrjc(
              tipActAsistFlgSeIndica.hashCode,
              $mrjc(
                  tipActAsistFlgParacl.hashCode,
                  $mrjc(
                      statusId.hashCode,
                      $mrjc(
                          usuId.hashCode,
                          $mrjc(
                              createdAt.hashCode,
                              $mrjc(updatedAt.hashCode,
                                  deletedAt.hashCode)))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is TipActAsist &&
          other.tipActAsistId == tipActAsistId &&
          other.tipActAsistDesc == tipActAsistDesc &&
          other.tipActAsistFlgSeIndica == tipActAsistFlgSeIndica &&
          other.tipActAsistFlgParacl == tipActAsistFlgParacl &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableTipActAsistCompanion extends UpdateCompanion<TipActAsist> {
  final Value<int> tipActAsistId;
  final Value<String> tipActAsistDesc;
  final Value<int> tipActAsistFlgSeIndica;
  final Value<int> tipActAsistFlgParacl;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableTipActAsistCompanion({
    this.tipActAsistId = const Value.absent(),
    this.tipActAsistDesc = const Value.absent(),
    this.tipActAsistFlgSeIndica = const Value.absent(),
    this.tipActAsistFlgParacl = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableTipActAsistCompanion copyWith(
      {Value<int> tipActAsistId,
      Value<String> tipActAsistDesc,
      Value<int> tipActAsistFlgSeIndica,
      Value<int> tipActAsistFlgParacl,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableTipActAsistCompanion(
      tipActAsistId: tipActAsistId ?? this.tipActAsistId,
      tipActAsistDesc: tipActAsistDesc ?? this.tipActAsistDesc,
      tipActAsistFlgSeIndica:
          tipActAsistFlgSeIndica ?? this.tipActAsistFlgSeIndica,
      tipActAsistFlgParacl: tipActAsistFlgParacl ?? this.tipActAsistFlgParacl,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _tipActAsistIdMeta =
      const VerificationMeta('tipActAsistId');
  GeneratedIntColumn _tipActAsistId;
  @override
  GeneratedIntColumn get tipActAsistId =>
      _tipActAsistId ??= _constructTipActAsistId();
  GeneratedIntColumn _constructTipActAsistId() {
    return GeneratedIntColumn('tip_act_asist_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _tipActAsistDescMeta =
      const VerificationMeta('tipActAsistDesc');
  GeneratedTextColumn _tipActAsistDesc;
  @override
  GeneratedTextColumn get tipActAsistDesc =>
      _tipActAsistDesc ??= _constructTipActAsistDesc();
  GeneratedTextColumn _constructTipActAsistDesc() {
    return GeneratedTextColumn(
      'tip_act_asist_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tipActAsistFlgSeIndicaMeta =
      const VerificationMeta('tipActAsistFlgSeIndica');
  GeneratedIntColumn _tipActAsistFlgSeIndica;
  @override
  GeneratedIntColumn get tipActAsistFlgSeIndica =>
      _tipActAsistFlgSeIndica ??= _constructTipActAsistFlgSeIndica();
  GeneratedIntColumn _constructTipActAsistFlgSeIndica() {
    return GeneratedIntColumn(
      'tip_act_asist_flg_se_indica',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tipActAsistFlgParaclMeta =
      const VerificationMeta('tipActAsistFlgParacl');
  GeneratedIntColumn _tipActAsistFlgParacl;
  @override
  GeneratedIntColumn get tipActAsistFlgParacl =>
      _tipActAsistFlgParacl ??= _constructTipActAsistFlgParacl();
  GeneratedIntColumn _constructTipActAsistFlgParacl() {
    return GeneratedIntColumn(
      'tip_act_asist_flg_paracl',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        tipActAsistId,
        tipActAsistDesc,
        tipActAsistFlgSeIndica,
        tipActAsistFlgParacl,
        statusId,
        usuId,
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
    if (d.tipActAsistId.present) {
      context.handle(
          _tipActAsistIdMeta,
          tipActAsistId.isAcceptableValue(
              d.tipActAsistId.value, _tipActAsistIdMeta));
    } else if (tipActAsistId.isRequired && isInserting) {
      context.missing(_tipActAsistIdMeta);
    }
    if (d.tipActAsistDesc.present) {
      context.handle(
          _tipActAsistDescMeta,
          tipActAsistDesc.isAcceptableValue(
              d.tipActAsistDesc.value, _tipActAsistDescMeta));
    } else if (tipActAsistDesc.isRequired && isInserting) {
      context.missing(_tipActAsistDescMeta);
    }
    if (d.tipActAsistFlgSeIndica.present) {
      context.handle(
          _tipActAsistFlgSeIndicaMeta,
          tipActAsistFlgSeIndica.isAcceptableValue(
              d.tipActAsistFlgSeIndica.value, _tipActAsistFlgSeIndicaMeta));
    } else if (tipActAsistFlgSeIndica.isRequired && isInserting) {
      context.missing(_tipActAsistFlgSeIndicaMeta);
    }
    if (d.tipActAsistFlgParacl.present) {
      context.handle(
          _tipActAsistFlgParaclMeta,
          tipActAsistFlgParacl.isAcceptableValue(
              d.tipActAsistFlgParacl.value, _tipActAsistFlgParaclMeta));
    } else if (tipActAsistFlgParacl.isRequired && isInserting) {
      context.missing(_tipActAsistFlgParaclMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {tipActAsistId};
  @override
  TipActAsist map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TipActAsist.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableTipActAsistCompanion d) {
    final map = <String, Variable>{};
    if (d.tipActAsistId.present) {
      map['tip_act_asist_id'] = Variable<int, IntType>(d.tipActAsistId.value);
    }
    if (d.tipActAsistDesc.present) {
      map['tip_act_asist_desc'] =
          Variable<String, StringType>(d.tipActAsistDesc.value);
    }
    if (d.tipActAsistFlgSeIndica.present) {
      map['tip_act_asist_flg_se_indica'] =
          Variable<int, IntType>(d.tipActAsistFlgSeIndica.value);
    }
    if (d.tipActAsistFlgParacl.present) {
      map['tip_act_asist_flg_paracl'] =
          Variable<int, IntType>(d.tipActAsistFlgParacl.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int unidMedId;
  final String unidMedDesc;
  final String unidMedAbrev;
  final int unidMedFlgHab;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  UnidMed(
      {@required this.unidMedId,
      @required this.unidMedDesc,
      @required this.unidMedAbrev,
      @required this.unidMedFlgHab,
      @required this.statusId,
      @required this.usuId,
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
      unidMedId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_id']),
      unidMedDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_desc']),
      unidMedAbrev: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_abrev']),
      unidMedFlgHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_flg_hab']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      unidMedId: serializer.fromJson<int>(json['unidMedId']),
      unidMedDesc: serializer.fromJson<String>(json['unidMedDesc']),
      unidMedAbrev: serializer.fromJson<String>(json['unidMedAbrev']),
      unidMedFlgHab: serializer.fromJson<int>(json['unidMedFlgHab']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'unidMedId': serializer.toJson<int>(unidMedId),
      'unidMedDesc': serializer.toJson<String>(unidMedDesc),
      'unidMedAbrev': serializer.toJson<String>(unidMedAbrev),
      'unidMedFlgHab': serializer.toJson<int>(unidMedFlgHab),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<UnidMed>>(bool nullToAbsent) {
    return TableUnidMedCompanion(
      unidMedId: unidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(unidMedId),
      unidMedDesc: unidMedDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(unidMedDesc),
      unidMedAbrev: unidMedAbrev == null && nullToAbsent
          ? const Value.absent()
          : Value(unidMedAbrev),
      unidMedFlgHab: unidMedFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(unidMedFlgHab),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int unidMedId,
          String unidMedDesc,
          String unidMedAbrev,
          int unidMedFlgHab,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      UnidMed(
        unidMedId: unidMedId ?? this.unidMedId,
        unidMedDesc: unidMedDesc ?? this.unidMedDesc,
        unidMedAbrev: unidMedAbrev ?? this.unidMedAbrev,
        unidMedFlgHab: unidMedFlgHab ?? this.unidMedFlgHab,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('UnidMed(')
          ..write('unidMedId: $unidMedId, ')
          ..write('unidMedDesc: $unidMedDesc, ')
          ..write('unidMedAbrev: $unidMedAbrev, ')
          ..write('unidMedFlgHab: $unidMedFlgHab, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      unidMedId.hashCode,
      $mrjc(
          unidMedDesc.hashCode,
          $mrjc(
              unidMedAbrev.hashCode,
              $mrjc(
                  unidMedFlgHab.hashCode,
                  $mrjc(
                      statusId.hashCode,
                      $mrjc(
                          usuId.hashCode,
                          $mrjc(
                              createdAt.hashCode,
                              $mrjc(updatedAt.hashCode,
                                  deletedAt.hashCode)))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is UnidMed &&
          other.unidMedId == unidMedId &&
          other.unidMedDesc == unidMedDesc &&
          other.unidMedAbrev == unidMedAbrev &&
          other.unidMedFlgHab == unidMedFlgHab &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableUnidMedCompanion extends UpdateCompanion<UnidMed> {
  final Value<int> unidMedId;
  final Value<String> unidMedDesc;
  final Value<String> unidMedAbrev;
  final Value<int> unidMedFlgHab;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableUnidMedCompanion({
    this.unidMedId = const Value.absent(),
    this.unidMedDesc = const Value.absent(),
    this.unidMedAbrev = const Value.absent(),
    this.unidMedFlgHab = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableUnidMedCompanion copyWith(
      {Value<int> unidMedId,
      Value<String> unidMedDesc,
      Value<String> unidMedAbrev,
      Value<int> unidMedFlgHab,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableUnidMedCompanion(
      unidMedId: unidMedId ?? this.unidMedId,
      unidMedDesc: unidMedDesc ?? this.unidMedDesc,
      unidMedAbrev: unidMedAbrev ?? this.unidMedAbrev,
      unidMedFlgHab: unidMedFlgHab ?? this.unidMedFlgHab,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _unidMedIdMeta = const VerificationMeta('unidMedId');
  GeneratedIntColumn _unidMedId;
  @override
  GeneratedIntColumn get unidMedId => _unidMedId ??= _constructUnidMedId();
  GeneratedIntColumn _constructUnidMedId() {
    return GeneratedIntColumn('unid_med_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _unidMedDescMeta =
      const VerificationMeta('unidMedDesc');
  GeneratedTextColumn _unidMedDesc;
  @override
  GeneratedTextColumn get unidMedDesc =>
      _unidMedDesc ??= _constructUnidMedDesc();
  GeneratedTextColumn _constructUnidMedDesc() {
    return GeneratedTextColumn(
      'unid_med_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _unidMedAbrevMeta =
      const VerificationMeta('unidMedAbrev');
  GeneratedTextColumn _unidMedAbrev;
  @override
  GeneratedTextColumn get unidMedAbrev =>
      _unidMedAbrev ??= _constructUnidMedAbrev();
  GeneratedTextColumn _constructUnidMedAbrev() {
    return GeneratedTextColumn(
      'unid_med_abrev',
      $tableName,
      false,
    );
  }

  final VerificationMeta _unidMedFlgHabMeta =
      const VerificationMeta('unidMedFlgHab');
  GeneratedIntColumn _unidMedFlgHab;
  @override
  GeneratedIntColumn get unidMedFlgHab =>
      _unidMedFlgHab ??= _constructUnidMedFlgHab();
  GeneratedIntColumn _constructUnidMedFlgHab() {
    return GeneratedIntColumn(
      'unid_med_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        unidMedId,
        unidMedDesc,
        unidMedAbrev,
        unidMedFlgHab,
        statusId,
        usuId,
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
    if (d.unidMedId.present) {
      context.handle(_unidMedIdMeta,
          unidMedId.isAcceptableValue(d.unidMedId.value, _unidMedIdMeta));
    } else if (unidMedId.isRequired && isInserting) {
      context.missing(_unidMedIdMeta);
    }
    if (d.unidMedDesc.present) {
      context.handle(_unidMedDescMeta,
          unidMedDesc.isAcceptableValue(d.unidMedDesc.value, _unidMedDescMeta));
    } else if (unidMedDesc.isRequired && isInserting) {
      context.missing(_unidMedDescMeta);
    }
    if (d.unidMedAbrev.present) {
      context.handle(
          _unidMedAbrevMeta,
          unidMedAbrev.isAcceptableValue(
              d.unidMedAbrev.value, _unidMedAbrevMeta));
    } else if (unidMedAbrev.isRequired && isInserting) {
      context.missing(_unidMedAbrevMeta);
    }
    if (d.unidMedFlgHab.present) {
      context.handle(
          _unidMedFlgHabMeta,
          unidMedFlgHab.isAcceptableValue(
              d.unidMedFlgHab.value, _unidMedFlgHabMeta));
    } else if (unidMedFlgHab.isRequired && isInserting) {
      context.missing(_unidMedFlgHabMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {unidMedId};
  @override
  UnidMed map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UnidMed.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableUnidMedCompanion d) {
    final map = <String, Variable>{};
    if (d.unidMedId.present) {
      map['unid_med_id'] = Variable<int, IntType>(d.unidMedId.value);
    }
    if (d.unidMedDesc.present) {
      map['unid_med_desc'] = Variable<String, StringType>(d.unidMedDesc.value);
    }
    if (d.unidMedAbrev.present) {
      map['unid_med_abrev'] =
          Variable<String, StringType>(d.unidMedAbrev.value);
    }
    if (d.unidMedFlgHab.present) {
      map['unid_med_flg_hab'] = Variable<int, IntType>(d.unidMedFlgHab.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int viaAdmMedicId;
  final String viaAdmMedicDesc;
  final String viaAdmMedicAbrev;
  final int viaAdmMedicFlgHab;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  ViaAdmMedic(
      {@required this.viaAdmMedicId,
      @required this.viaAdmMedicDesc,
      @required this.viaAdmMedicAbrev,
      @required this.viaAdmMedicFlgHab,
      @required this.statusId,
      @required this.usuId,
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
      viaAdmMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}via_adm_medic_id']),
      viaAdmMedicDesc: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}via_adm_medic_desc']),
      viaAdmMedicAbrev: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}via_adm_medic_abrev']),
      viaAdmMedicFlgHab: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}via_adm_medic_flg_hab']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      viaAdmMedicId: serializer.fromJson<int>(json['viaAdmMedicId']),
      viaAdmMedicDesc: serializer.fromJson<String>(json['viaAdmMedicDesc']),
      viaAdmMedicAbrev: serializer.fromJson<String>(json['viaAdmMedicAbrev']),
      viaAdmMedicFlgHab: serializer.fromJson<int>(json['viaAdmMedicFlgHab']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'viaAdmMedicId': serializer.toJson<int>(viaAdmMedicId),
      'viaAdmMedicDesc': serializer.toJson<String>(viaAdmMedicDesc),
      'viaAdmMedicAbrev': serializer.toJson<String>(viaAdmMedicAbrev),
      'viaAdmMedicFlgHab': serializer.toJson<int>(viaAdmMedicFlgHab),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<ViaAdmMedic>>(bool nullToAbsent) {
    return TableViaAdmMedicCompanion(
      viaAdmMedicId: viaAdmMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(viaAdmMedicId),
      viaAdmMedicDesc: viaAdmMedicDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(viaAdmMedicDesc),
      viaAdmMedicAbrev: viaAdmMedicAbrev == null && nullToAbsent
          ? const Value.absent()
          : Value(viaAdmMedicAbrev),
      viaAdmMedicFlgHab: viaAdmMedicFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(viaAdmMedicFlgHab),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int viaAdmMedicId,
          String viaAdmMedicDesc,
          String viaAdmMedicAbrev,
          int viaAdmMedicFlgHab,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      ViaAdmMedic(
        viaAdmMedicId: viaAdmMedicId ?? this.viaAdmMedicId,
        viaAdmMedicDesc: viaAdmMedicDesc ?? this.viaAdmMedicDesc,
        viaAdmMedicAbrev: viaAdmMedicAbrev ?? this.viaAdmMedicAbrev,
        viaAdmMedicFlgHab: viaAdmMedicFlgHab ?? this.viaAdmMedicFlgHab,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ViaAdmMedic(')
          ..write('viaAdmMedicId: $viaAdmMedicId, ')
          ..write('viaAdmMedicDesc: $viaAdmMedicDesc, ')
          ..write('viaAdmMedicAbrev: $viaAdmMedicAbrev, ')
          ..write('viaAdmMedicFlgHab: $viaAdmMedicFlgHab, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      viaAdmMedicId.hashCode,
      $mrjc(
          viaAdmMedicDesc.hashCode,
          $mrjc(
              viaAdmMedicAbrev.hashCode,
              $mrjc(
                  viaAdmMedicFlgHab.hashCode,
                  $mrjc(
                      statusId.hashCode,
                      $mrjc(
                          usuId.hashCode,
                          $mrjc(
                              createdAt.hashCode,
                              $mrjc(updatedAt.hashCode,
                                  deletedAt.hashCode)))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is ViaAdmMedic &&
          other.viaAdmMedicId == viaAdmMedicId &&
          other.viaAdmMedicDesc == viaAdmMedicDesc &&
          other.viaAdmMedicAbrev == viaAdmMedicAbrev &&
          other.viaAdmMedicFlgHab == viaAdmMedicFlgHab &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableViaAdmMedicCompanion extends UpdateCompanion<ViaAdmMedic> {
  final Value<int> viaAdmMedicId;
  final Value<String> viaAdmMedicDesc;
  final Value<String> viaAdmMedicAbrev;
  final Value<int> viaAdmMedicFlgHab;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableViaAdmMedicCompanion({
    this.viaAdmMedicId = const Value.absent(),
    this.viaAdmMedicDesc = const Value.absent(),
    this.viaAdmMedicAbrev = const Value.absent(),
    this.viaAdmMedicFlgHab = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableViaAdmMedicCompanion copyWith(
      {Value<int> viaAdmMedicId,
      Value<String> viaAdmMedicDesc,
      Value<String> viaAdmMedicAbrev,
      Value<int> viaAdmMedicFlgHab,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableViaAdmMedicCompanion(
      viaAdmMedicId: viaAdmMedicId ?? this.viaAdmMedicId,
      viaAdmMedicDesc: viaAdmMedicDesc ?? this.viaAdmMedicDesc,
      viaAdmMedicAbrev: viaAdmMedicAbrev ?? this.viaAdmMedicAbrev,
      viaAdmMedicFlgHab: viaAdmMedicFlgHab ?? this.viaAdmMedicFlgHab,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _viaAdmMedicIdMeta =
      const VerificationMeta('viaAdmMedicId');
  GeneratedIntColumn _viaAdmMedicId;
  @override
  GeneratedIntColumn get viaAdmMedicId =>
      _viaAdmMedicId ??= _constructViaAdmMedicId();
  GeneratedIntColumn _constructViaAdmMedicId() {
    return GeneratedIntColumn('via_adm_medic_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _viaAdmMedicDescMeta =
      const VerificationMeta('viaAdmMedicDesc');
  GeneratedTextColumn _viaAdmMedicDesc;
  @override
  GeneratedTextColumn get viaAdmMedicDesc =>
      _viaAdmMedicDesc ??= _constructViaAdmMedicDesc();
  GeneratedTextColumn _constructViaAdmMedicDesc() {
    return GeneratedTextColumn(
      'via_adm_medic_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _viaAdmMedicAbrevMeta =
      const VerificationMeta('viaAdmMedicAbrev');
  GeneratedTextColumn _viaAdmMedicAbrev;
  @override
  GeneratedTextColumn get viaAdmMedicAbrev =>
      _viaAdmMedicAbrev ??= _constructViaAdmMedicAbrev();
  GeneratedTextColumn _constructViaAdmMedicAbrev() {
    return GeneratedTextColumn(
      'via_adm_medic_abrev',
      $tableName,
      false,
    );
  }

  final VerificationMeta _viaAdmMedicFlgHabMeta =
      const VerificationMeta('viaAdmMedicFlgHab');
  GeneratedIntColumn _viaAdmMedicFlgHab;
  @override
  GeneratedIntColumn get viaAdmMedicFlgHab =>
      _viaAdmMedicFlgHab ??= _constructViaAdmMedicFlgHab();
  GeneratedIntColumn _constructViaAdmMedicFlgHab() {
    return GeneratedIntColumn(
      'via_adm_medic_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        viaAdmMedicId,
        viaAdmMedicDesc,
        viaAdmMedicAbrev,
        viaAdmMedicFlgHab,
        statusId,
        usuId,
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
    if (d.viaAdmMedicId.present) {
      context.handle(
          _viaAdmMedicIdMeta,
          viaAdmMedicId.isAcceptableValue(
              d.viaAdmMedicId.value, _viaAdmMedicIdMeta));
    } else if (viaAdmMedicId.isRequired && isInserting) {
      context.missing(_viaAdmMedicIdMeta);
    }
    if (d.viaAdmMedicDesc.present) {
      context.handle(
          _viaAdmMedicDescMeta,
          viaAdmMedicDesc.isAcceptableValue(
              d.viaAdmMedicDesc.value, _viaAdmMedicDescMeta));
    } else if (viaAdmMedicDesc.isRequired && isInserting) {
      context.missing(_viaAdmMedicDescMeta);
    }
    if (d.viaAdmMedicAbrev.present) {
      context.handle(
          _viaAdmMedicAbrevMeta,
          viaAdmMedicAbrev.isAcceptableValue(
              d.viaAdmMedicAbrev.value, _viaAdmMedicAbrevMeta));
    } else if (viaAdmMedicAbrev.isRequired && isInserting) {
      context.missing(_viaAdmMedicAbrevMeta);
    }
    if (d.viaAdmMedicFlgHab.present) {
      context.handle(
          _viaAdmMedicFlgHabMeta,
          viaAdmMedicFlgHab.isAcceptableValue(
              d.viaAdmMedicFlgHab.value, _viaAdmMedicFlgHabMeta));
    } else if (viaAdmMedicFlgHab.isRequired && isInserting) {
      context.missing(_viaAdmMedicFlgHabMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {viaAdmMedicId};
  @override
  ViaAdmMedic map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ViaAdmMedic.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableViaAdmMedicCompanion d) {
    final map = <String, Variable>{};
    if (d.viaAdmMedicId.present) {
      map['via_adm_medic_id'] = Variable<int, IntType>(d.viaAdmMedicId.value);
    }
    if (d.viaAdmMedicDesc.present) {
      map['via_adm_medic_desc'] =
          Variable<String, StringType>(d.viaAdmMedicDesc.value);
    }
    if (d.viaAdmMedicAbrev.present) {
      map['via_adm_medic_abrev'] =
          Variable<String, StringType>(d.viaAdmMedicAbrev.value);
    }
    if (d.viaAdmMedicFlgHab.present) {
      map['via_adm_medic_flg_hab'] =
          Variable<int, IntType>(d.viaAdmMedicFlgHab.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int actAsistId;
  final String actAsistDesc;
  final String actAsistAbrev;
  final int tipActAsistId;
  final int actAsistFlgHab;
  final int actAsistTipDat;
  final int actAsistValMin;
  final int actAsistValMax;
  final int unidMedId;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  ActAsist(
      {@required this.actAsistId,
      @required this.actAsistDesc,
      @required this.actAsistAbrev,
      @required this.tipActAsistId,
      @required this.actAsistFlgHab,
      @required this.actAsistTipDat,
      @required this.actAsistValMin,
      @required this.actAsistValMax,
      @required this.unidMedId,
      @required this.statusId,
      @required this.usuId,
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
      actAsistId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_id']),
      actAsistDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_desc']),
      actAsistAbrev: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_abrev']),
      tipActAsistId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tip_act_asist_id']),
      actAsistFlgHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_flg_hab']),
      actAsistTipDat: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_tip_dat']),
      actAsistValMin: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_val_min']),
      actAsistValMax: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}act_asist_val_max']),
      unidMedId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_id']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      actAsistId: serializer.fromJson<int>(json['actAsistId']),
      actAsistDesc: serializer.fromJson<String>(json['actAsistDesc']),
      actAsistAbrev: serializer.fromJson<String>(json['actAsistAbrev']),
      tipActAsistId: serializer.fromJson<int>(json['tipActAsistId']),
      actAsistFlgHab: serializer.fromJson<int>(json['actAsistFlgHab']),
      actAsistTipDat: serializer.fromJson<int>(json['actAsistTipDat']),
      actAsistValMin: serializer.fromJson<int>(json['actAsistValMin']),
      actAsistValMax: serializer.fromJson<int>(json['actAsistValMax']),
      unidMedId: serializer.fromJson<int>(json['unidMedId']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'actAsistId': serializer.toJson<int>(actAsistId),
      'actAsistDesc': serializer.toJson<String>(actAsistDesc),
      'actAsistAbrev': serializer.toJson<String>(actAsistAbrev),
      'tipActAsistId': serializer.toJson<int>(tipActAsistId),
      'actAsistFlgHab': serializer.toJson<int>(actAsistFlgHab),
      'actAsistTipDat': serializer.toJson<int>(actAsistTipDat),
      'actAsistValMin': serializer.toJson<int>(actAsistValMin),
      'actAsistValMax': serializer.toJson<int>(actAsistValMax),
      'unidMedId': serializer.toJson<int>(unidMedId),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<ActAsist>>(bool nullToAbsent) {
    return TableActAsistCompanion(
      actAsistId: actAsistId == null && nullToAbsent
          ? const Value.absent()
          : Value(actAsistId),
      actAsistDesc: actAsistDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(actAsistDesc),
      actAsistAbrev: actAsistAbrev == null && nullToAbsent
          ? const Value.absent()
          : Value(actAsistAbrev),
      tipActAsistId: tipActAsistId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipActAsistId),
      actAsistFlgHab: actAsistFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(actAsistFlgHab),
      actAsistTipDat: actAsistTipDat == null && nullToAbsent
          ? const Value.absent()
          : Value(actAsistTipDat),
      actAsistValMin: actAsistValMin == null && nullToAbsent
          ? const Value.absent()
          : Value(actAsistValMin),
      actAsistValMax: actAsistValMax == null && nullToAbsent
          ? const Value.absent()
          : Value(actAsistValMax),
      unidMedId: unidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(unidMedId),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int actAsistId,
          String actAsistDesc,
          String actAsistAbrev,
          int tipActAsistId,
          int actAsistFlgHab,
          int actAsistTipDat,
          int actAsistValMin,
          int actAsistValMax,
          int unidMedId,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      ActAsist(
        actAsistId: actAsistId ?? this.actAsistId,
        actAsistDesc: actAsistDesc ?? this.actAsistDesc,
        actAsistAbrev: actAsistAbrev ?? this.actAsistAbrev,
        tipActAsistId: tipActAsistId ?? this.tipActAsistId,
        actAsistFlgHab: actAsistFlgHab ?? this.actAsistFlgHab,
        actAsistTipDat: actAsistTipDat ?? this.actAsistTipDat,
        actAsistValMin: actAsistValMin ?? this.actAsistValMin,
        actAsistValMax: actAsistValMax ?? this.actAsistValMax,
        unidMedId: unidMedId ?? this.unidMedId,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('ActAsist(')
          ..write('actAsistId: $actAsistId, ')
          ..write('actAsistDesc: $actAsistDesc, ')
          ..write('actAsistAbrev: $actAsistAbrev, ')
          ..write('tipActAsistId: $tipActAsistId, ')
          ..write('actAsistFlgHab: $actAsistFlgHab, ')
          ..write('actAsistTipDat: $actAsistTipDat, ')
          ..write('actAsistValMin: $actAsistValMin, ')
          ..write('actAsistValMax: $actAsistValMax, ')
          ..write('unidMedId: $unidMedId, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      actAsistId.hashCode,
      $mrjc(
          actAsistDesc.hashCode,
          $mrjc(
              actAsistAbrev.hashCode,
              $mrjc(
                  tipActAsistId.hashCode,
                  $mrjc(
                      actAsistFlgHab.hashCode,
                      $mrjc(
                          actAsistTipDat.hashCode,
                          $mrjc(
                              actAsistValMin.hashCode,
                              $mrjc(
                                  actAsistValMax.hashCode,
                                  $mrjc(
                                      unidMedId.hashCode,
                                      $mrjc(
                                          statusId.hashCode,
                                          $mrjc(
                                              usuId.hashCode,
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
          other.actAsistId == actAsistId &&
          other.actAsistDesc == actAsistDesc &&
          other.actAsistAbrev == actAsistAbrev &&
          other.tipActAsistId == tipActAsistId &&
          other.actAsistFlgHab == actAsistFlgHab &&
          other.actAsistTipDat == actAsistTipDat &&
          other.actAsistValMin == actAsistValMin &&
          other.actAsistValMax == actAsistValMax &&
          other.unidMedId == unidMedId &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableActAsistCompanion extends UpdateCompanion<ActAsist> {
  final Value<int> actAsistId;
  final Value<String> actAsistDesc;
  final Value<String> actAsistAbrev;
  final Value<int> tipActAsistId;
  final Value<int> actAsistFlgHab;
  final Value<int> actAsistTipDat;
  final Value<int> actAsistValMin;
  final Value<int> actAsistValMax;
  final Value<int> unidMedId;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableActAsistCompanion({
    this.actAsistId = const Value.absent(),
    this.actAsistDesc = const Value.absent(),
    this.actAsistAbrev = const Value.absent(),
    this.tipActAsistId = const Value.absent(),
    this.actAsistFlgHab = const Value.absent(),
    this.actAsistTipDat = const Value.absent(),
    this.actAsistValMin = const Value.absent(),
    this.actAsistValMax = const Value.absent(),
    this.unidMedId = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableActAsistCompanion copyWith(
      {Value<int> actAsistId,
      Value<String> actAsistDesc,
      Value<String> actAsistAbrev,
      Value<int> tipActAsistId,
      Value<int> actAsistFlgHab,
      Value<int> actAsistTipDat,
      Value<int> actAsistValMin,
      Value<int> actAsistValMax,
      Value<int> unidMedId,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableActAsistCompanion(
      actAsistId: actAsistId ?? this.actAsistId,
      actAsistDesc: actAsistDesc ?? this.actAsistDesc,
      actAsistAbrev: actAsistAbrev ?? this.actAsistAbrev,
      tipActAsistId: tipActAsistId ?? this.tipActAsistId,
      actAsistFlgHab: actAsistFlgHab ?? this.actAsistFlgHab,
      actAsistTipDat: actAsistTipDat ?? this.actAsistTipDat,
      actAsistValMin: actAsistValMin ?? this.actAsistValMin,
      actAsistValMax: actAsistValMax ?? this.actAsistValMax,
      unidMedId: unidMedId ?? this.unidMedId,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _actAsistIdMeta = const VerificationMeta('actAsistId');
  GeneratedIntColumn _actAsistId;
  @override
  GeneratedIntColumn get actAsistId => _actAsistId ??= _constructActAsistId();
  GeneratedIntColumn _constructActAsistId() {
    return GeneratedIntColumn('act_asist_id', $tableName, false,
        hasAutoIncrement: true,
        declaredAsPrimaryKey: true,
        $customConstraints: 'REFERENCES TipActAsist(tipActAsistId)');
  }

  final VerificationMeta _actAsistDescMeta =
      const VerificationMeta('actAsistDesc');
  GeneratedTextColumn _actAsistDesc;
  @override
  GeneratedTextColumn get actAsistDesc =>
      _actAsistDesc ??= _constructActAsistDesc();
  GeneratedTextColumn _constructActAsistDesc() {
    return GeneratedTextColumn(
      'act_asist_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _actAsistAbrevMeta =
      const VerificationMeta('actAsistAbrev');
  GeneratedTextColumn _actAsistAbrev;
  @override
  GeneratedTextColumn get actAsistAbrev =>
      _actAsistAbrev ??= _constructActAsistAbrev();
  GeneratedTextColumn _constructActAsistAbrev() {
    return GeneratedTextColumn(
      'act_asist_abrev',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tipActAsistIdMeta =
      const VerificationMeta('tipActAsistId');
  GeneratedIntColumn _tipActAsistId;
  @override
  GeneratedIntColumn get tipActAsistId =>
      _tipActAsistId ??= _constructTipActAsistId();
  GeneratedIntColumn _constructTipActAsistId() {
    return GeneratedIntColumn(
      'tip_act_asist_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _actAsistFlgHabMeta =
      const VerificationMeta('actAsistFlgHab');
  GeneratedIntColumn _actAsistFlgHab;
  @override
  GeneratedIntColumn get actAsistFlgHab =>
      _actAsistFlgHab ??= _constructActAsistFlgHab();
  GeneratedIntColumn _constructActAsistFlgHab() {
    return GeneratedIntColumn(
      'act_asist_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _actAsistTipDatMeta =
      const VerificationMeta('actAsistTipDat');
  GeneratedIntColumn _actAsistTipDat;
  @override
  GeneratedIntColumn get actAsistTipDat =>
      _actAsistTipDat ??= _constructActAsistTipDat();
  GeneratedIntColumn _constructActAsistTipDat() {
    return GeneratedIntColumn(
      'act_asist_tip_dat',
      $tableName,
      false,
    );
  }

  final VerificationMeta _actAsistValMinMeta =
      const VerificationMeta('actAsistValMin');
  GeneratedIntColumn _actAsistValMin;
  @override
  GeneratedIntColumn get actAsistValMin =>
      _actAsistValMin ??= _constructActAsistValMin();
  GeneratedIntColumn _constructActAsistValMin() {
    return GeneratedIntColumn(
      'act_asist_val_min',
      $tableName,
      false,
    );
  }

  final VerificationMeta _actAsistValMaxMeta =
      const VerificationMeta('actAsistValMax');
  GeneratedIntColumn _actAsistValMax;
  @override
  GeneratedIntColumn get actAsistValMax =>
      _actAsistValMax ??= _constructActAsistValMax();
  GeneratedIntColumn _constructActAsistValMax() {
    return GeneratedIntColumn(
      'act_asist_val_max',
      $tableName,
      false,
    );
  }

  final VerificationMeta _unidMedIdMeta = const VerificationMeta('unidMedId');
  GeneratedIntColumn _unidMedId;
  @override
  GeneratedIntColumn get unidMedId => _unidMedId ??= _constructUnidMedId();
  GeneratedIntColumn _constructUnidMedId() {
    return GeneratedIntColumn('unid_med_id', $tableName, false,
        $customConstraints: 'REFERENCES UnidMed(unidMedId)');
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        actAsistId,
        actAsistDesc,
        actAsistAbrev,
        tipActAsistId,
        actAsistFlgHab,
        actAsistTipDat,
        actAsistValMin,
        actAsistValMax,
        unidMedId,
        statusId,
        usuId,
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
    if (d.actAsistId.present) {
      context.handle(_actAsistIdMeta,
          actAsistId.isAcceptableValue(d.actAsistId.value, _actAsistIdMeta));
    } else if (actAsistId.isRequired && isInserting) {
      context.missing(_actAsistIdMeta);
    }
    if (d.actAsistDesc.present) {
      context.handle(
          _actAsistDescMeta,
          actAsistDesc.isAcceptableValue(
              d.actAsistDesc.value, _actAsistDescMeta));
    } else if (actAsistDesc.isRequired && isInserting) {
      context.missing(_actAsistDescMeta);
    }
    if (d.actAsistAbrev.present) {
      context.handle(
          _actAsistAbrevMeta,
          actAsistAbrev.isAcceptableValue(
              d.actAsistAbrev.value, _actAsistAbrevMeta));
    } else if (actAsistAbrev.isRequired && isInserting) {
      context.missing(_actAsistAbrevMeta);
    }
    if (d.tipActAsistId.present) {
      context.handle(
          _tipActAsistIdMeta,
          tipActAsistId.isAcceptableValue(
              d.tipActAsistId.value, _tipActAsistIdMeta));
    } else if (tipActAsistId.isRequired && isInserting) {
      context.missing(_tipActAsistIdMeta);
    }
    if (d.actAsistFlgHab.present) {
      context.handle(
          _actAsistFlgHabMeta,
          actAsistFlgHab.isAcceptableValue(
              d.actAsistFlgHab.value, _actAsistFlgHabMeta));
    } else if (actAsistFlgHab.isRequired && isInserting) {
      context.missing(_actAsistFlgHabMeta);
    }
    if (d.actAsistTipDat.present) {
      context.handle(
          _actAsistTipDatMeta,
          actAsistTipDat.isAcceptableValue(
              d.actAsistTipDat.value, _actAsistTipDatMeta));
    } else if (actAsistTipDat.isRequired && isInserting) {
      context.missing(_actAsistTipDatMeta);
    }
    if (d.actAsistValMin.present) {
      context.handle(
          _actAsistValMinMeta,
          actAsistValMin.isAcceptableValue(
              d.actAsistValMin.value, _actAsistValMinMeta));
    } else if (actAsistValMin.isRequired && isInserting) {
      context.missing(_actAsistValMinMeta);
    }
    if (d.actAsistValMax.present) {
      context.handle(
          _actAsistValMaxMeta,
          actAsistValMax.isAcceptableValue(
              d.actAsistValMax.value, _actAsistValMaxMeta));
    } else if (actAsistValMax.isRequired && isInserting) {
      context.missing(_actAsistValMaxMeta);
    }
    if (d.unidMedId.present) {
      context.handle(_unidMedIdMeta,
          unidMedId.isAcceptableValue(d.unidMedId.value, _unidMedIdMeta));
    } else if (unidMedId.isRequired && isInserting) {
      context.missing(_unidMedIdMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {actAsistId};
  @override
  ActAsist map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ActAsist.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableActAsistCompanion d) {
    final map = <String, Variable>{};
    if (d.actAsistId.present) {
      map['act_asist_id'] = Variable<int, IntType>(d.actAsistId.value);
    }
    if (d.actAsistDesc.present) {
      map['act_asist_desc'] =
          Variable<String, StringType>(d.actAsistDesc.value);
    }
    if (d.actAsistAbrev.present) {
      map['act_asist_abrev'] =
          Variable<String, StringType>(d.actAsistAbrev.value);
    }
    if (d.tipActAsistId.present) {
      map['tip_act_asist_id'] = Variable<int, IntType>(d.tipActAsistId.value);
    }
    if (d.actAsistFlgHab.present) {
      map['act_asist_flg_hab'] = Variable<int, IntType>(d.actAsistFlgHab.value);
    }
    if (d.actAsistTipDat.present) {
      map['act_asist_tip_dat'] = Variable<int, IntType>(d.actAsistTipDat.value);
    }
    if (d.actAsistValMin.present) {
      map['act_asist_val_min'] = Variable<int, IntType>(d.actAsistValMin.value);
    }
    if (d.actAsistValMax.present) {
      map['act_asist_val_max'] = Variable<int, IntType>(d.actAsistValMax.value);
    }
    if (d.unidMedId.present) {
      map['unid_med_id'] = Variable<int, IntType>(d.unidMedId.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int antClinId;
  final String antClinDesc;
  final int antClinFlgHab;
  final int tipAntClinId;
  final int antClinAlert;
  final int antClinAlertDsc;
  final String antClinSexo;
  final int antClinFlgFactRiesg;
  final int antCliFlgHabRep;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  AtnClin(
      {@required this.antClinId,
      @required this.antClinDesc,
      @required this.antClinFlgHab,
      @required this.tipAntClinId,
      @required this.antClinAlert,
      @required this.antClinAlertDsc,
      @required this.antClinSexo,
      @required this.antClinFlgFactRiesg,
      @required this.antCliFlgHabRep,
      @required this.statusId,
      @required this.usuId,
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
      antClinId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_id']),
      antClinDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_desc']),
      antClinFlgHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_flg_hab']),
      tipAntClinId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}tip_ant_clin_id']),
      antClinAlert: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_alert']),
      antClinAlertDsc: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ant_clin_alert_dsc']),
      antClinSexo: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}ant_clin_sexo']),
      antClinFlgFactRiesg: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ant_clin_flg_fact_riesg']),
      antCliFlgHabRep: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}ant_cli_flg_hab_rep']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      antClinId: serializer.fromJson<int>(json['antClinId']),
      antClinDesc: serializer.fromJson<String>(json['antClinDesc']),
      antClinFlgHab: serializer.fromJson<int>(json['antClinFlgHab']),
      tipAntClinId: serializer.fromJson<int>(json['tipAntClinId']),
      antClinAlert: serializer.fromJson<int>(json['antClinAlert']),
      antClinAlertDsc: serializer.fromJson<int>(json['antClinAlertDsc']),
      antClinSexo: serializer.fromJson<String>(json['antClinSexo']),
      antClinFlgFactRiesg:
          serializer.fromJson<int>(json['antClinFlgFactRiesg']),
      antCliFlgHabRep: serializer.fromJson<int>(json['antCliFlgHabRep']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'antClinId': serializer.toJson<int>(antClinId),
      'antClinDesc': serializer.toJson<String>(antClinDesc),
      'antClinFlgHab': serializer.toJson<int>(antClinFlgHab),
      'tipAntClinId': serializer.toJson<int>(tipAntClinId),
      'antClinAlert': serializer.toJson<int>(antClinAlert),
      'antClinAlertDsc': serializer.toJson<int>(antClinAlertDsc),
      'antClinSexo': serializer.toJson<String>(antClinSexo),
      'antClinFlgFactRiesg': serializer.toJson<int>(antClinFlgFactRiesg),
      'antCliFlgHabRep': serializer.toJson<int>(antCliFlgHabRep),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<AtnClin>>(bool nullToAbsent) {
    return TableAtnClinCompanion(
      antClinId: antClinId == null && nullToAbsent
          ? const Value.absent()
          : Value(antClinId),
      antClinDesc: antClinDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(antClinDesc),
      antClinFlgHab: antClinFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(antClinFlgHab),
      tipAntClinId: tipAntClinId == null && nullToAbsent
          ? const Value.absent()
          : Value(tipAntClinId),
      antClinAlert: antClinAlert == null && nullToAbsent
          ? const Value.absent()
          : Value(antClinAlert),
      antClinAlertDsc: antClinAlertDsc == null && nullToAbsent
          ? const Value.absent()
          : Value(antClinAlertDsc),
      antClinSexo: antClinSexo == null && nullToAbsent
          ? const Value.absent()
          : Value(antClinSexo),
      antClinFlgFactRiesg: antClinFlgFactRiesg == null && nullToAbsent
          ? const Value.absent()
          : Value(antClinFlgFactRiesg),
      antCliFlgHabRep: antCliFlgHabRep == null && nullToAbsent
          ? const Value.absent()
          : Value(antCliFlgHabRep),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int antClinId,
          String antClinDesc,
          int antClinFlgHab,
          int tipAntClinId,
          int antClinAlert,
          int antClinAlertDsc,
          String antClinSexo,
          int antClinFlgFactRiesg,
          int antCliFlgHabRep,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      AtnClin(
        antClinId: antClinId ?? this.antClinId,
        antClinDesc: antClinDesc ?? this.antClinDesc,
        antClinFlgHab: antClinFlgHab ?? this.antClinFlgHab,
        tipAntClinId: tipAntClinId ?? this.tipAntClinId,
        antClinAlert: antClinAlert ?? this.antClinAlert,
        antClinAlertDsc: antClinAlertDsc ?? this.antClinAlertDsc,
        antClinSexo: antClinSexo ?? this.antClinSexo,
        antClinFlgFactRiesg: antClinFlgFactRiesg ?? this.antClinFlgFactRiesg,
        antCliFlgHabRep: antCliFlgHabRep ?? this.antCliFlgHabRep,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('AtnClin(')
          ..write('antClinId: $antClinId, ')
          ..write('antClinDesc: $antClinDesc, ')
          ..write('antClinFlgHab: $antClinFlgHab, ')
          ..write('tipAntClinId: $tipAntClinId, ')
          ..write('antClinAlert: $antClinAlert, ')
          ..write('antClinAlertDsc: $antClinAlertDsc, ')
          ..write('antClinSexo: $antClinSexo, ')
          ..write('antClinFlgFactRiesg: $antClinFlgFactRiesg, ')
          ..write('antCliFlgHabRep: $antCliFlgHabRep, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      antClinId.hashCode,
      $mrjc(
          antClinDesc.hashCode,
          $mrjc(
              antClinFlgHab.hashCode,
              $mrjc(
                  tipAntClinId.hashCode,
                  $mrjc(
                      antClinAlert.hashCode,
                      $mrjc(
                          antClinAlertDsc.hashCode,
                          $mrjc(
                              antClinSexo.hashCode,
                              $mrjc(
                                  antClinFlgFactRiesg.hashCode,
                                  $mrjc(
                                      antCliFlgHabRep.hashCode,
                                      $mrjc(
                                          statusId.hashCode,
                                          $mrjc(
                                              usuId.hashCode,
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
          other.antClinId == antClinId &&
          other.antClinDesc == antClinDesc &&
          other.antClinFlgHab == antClinFlgHab &&
          other.tipAntClinId == tipAntClinId &&
          other.antClinAlert == antClinAlert &&
          other.antClinAlertDsc == antClinAlertDsc &&
          other.antClinSexo == antClinSexo &&
          other.antClinFlgFactRiesg == antClinFlgFactRiesg &&
          other.antCliFlgHabRep == antCliFlgHabRep &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableAtnClinCompanion extends UpdateCompanion<AtnClin> {
  final Value<int> antClinId;
  final Value<String> antClinDesc;
  final Value<int> antClinFlgHab;
  final Value<int> tipAntClinId;
  final Value<int> antClinAlert;
  final Value<int> antClinAlertDsc;
  final Value<String> antClinSexo;
  final Value<int> antClinFlgFactRiesg;
  final Value<int> antCliFlgHabRep;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableAtnClinCompanion({
    this.antClinId = const Value.absent(),
    this.antClinDesc = const Value.absent(),
    this.antClinFlgHab = const Value.absent(),
    this.tipAntClinId = const Value.absent(),
    this.antClinAlert = const Value.absent(),
    this.antClinAlertDsc = const Value.absent(),
    this.antClinSexo = const Value.absent(),
    this.antClinFlgFactRiesg = const Value.absent(),
    this.antCliFlgHabRep = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableAtnClinCompanion copyWith(
      {Value<int> antClinId,
      Value<String> antClinDesc,
      Value<int> antClinFlgHab,
      Value<int> tipAntClinId,
      Value<int> antClinAlert,
      Value<int> antClinAlertDsc,
      Value<String> antClinSexo,
      Value<int> antClinFlgFactRiesg,
      Value<int> antCliFlgHabRep,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableAtnClinCompanion(
      antClinId: antClinId ?? this.antClinId,
      antClinDesc: antClinDesc ?? this.antClinDesc,
      antClinFlgHab: antClinFlgHab ?? this.antClinFlgHab,
      tipAntClinId: tipAntClinId ?? this.tipAntClinId,
      antClinAlert: antClinAlert ?? this.antClinAlert,
      antClinAlertDsc: antClinAlertDsc ?? this.antClinAlertDsc,
      antClinSexo: antClinSexo ?? this.antClinSexo,
      antClinFlgFactRiesg: antClinFlgFactRiesg ?? this.antClinFlgFactRiesg,
      antCliFlgHabRep: antCliFlgHabRep ?? this.antCliFlgHabRep,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _antClinIdMeta = const VerificationMeta('antClinId');
  GeneratedIntColumn _antClinId;
  @override
  GeneratedIntColumn get antClinId => _antClinId ??= _constructAntClinId();
  GeneratedIntColumn _constructAntClinId() {
    return GeneratedIntColumn('ant_clin_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _antClinDescMeta =
      const VerificationMeta('antClinDesc');
  GeneratedTextColumn _antClinDesc;
  @override
  GeneratedTextColumn get antClinDesc =>
      _antClinDesc ??= _constructAntClinDesc();
  GeneratedTextColumn _constructAntClinDesc() {
    return GeneratedTextColumn(
      'ant_clin_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _antClinFlgHabMeta =
      const VerificationMeta('antClinFlgHab');
  GeneratedIntColumn _antClinFlgHab;
  @override
  GeneratedIntColumn get antClinFlgHab =>
      _antClinFlgHab ??= _constructAntClinFlgHab();
  GeneratedIntColumn _constructAntClinFlgHab() {
    return GeneratedIntColumn(
      'ant_clin_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _tipAntClinIdMeta =
      const VerificationMeta('tipAntClinId');
  GeneratedIntColumn _tipAntClinId;
  @override
  GeneratedIntColumn get tipAntClinId =>
      _tipAntClinId ??= _constructTipAntClinId();
  GeneratedIntColumn _constructTipAntClinId() {
    return GeneratedIntColumn(
      'tip_ant_clin_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _antClinAlertMeta =
      const VerificationMeta('antClinAlert');
  GeneratedIntColumn _antClinAlert;
  @override
  GeneratedIntColumn get antClinAlert =>
      _antClinAlert ??= _constructAntClinAlert();
  GeneratedIntColumn _constructAntClinAlert() {
    return GeneratedIntColumn(
      'ant_clin_alert',
      $tableName,
      false,
    );
  }

  final VerificationMeta _antClinAlertDscMeta =
      const VerificationMeta('antClinAlertDsc');
  GeneratedIntColumn _antClinAlertDsc;
  @override
  GeneratedIntColumn get antClinAlertDsc =>
      _antClinAlertDsc ??= _constructAntClinAlertDsc();
  GeneratedIntColumn _constructAntClinAlertDsc() {
    return GeneratedIntColumn(
      'ant_clin_alert_dsc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _antClinSexoMeta =
      const VerificationMeta('antClinSexo');
  GeneratedTextColumn _antClinSexo;
  @override
  GeneratedTextColumn get antClinSexo =>
      _antClinSexo ??= _constructAntClinSexo();
  GeneratedTextColumn _constructAntClinSexo() {
    return GeneratedTextColumn(
      'ant_clin_sexo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _antClinFlgFactRiesgMeta =
      const VerificationMeta('antClinFlgFactRiesg');
  GeneratedIntColumn _antClinFlgFactRiesg;
  @override
  GeneratedIntColumn get antClinFlgFactRiesg =>
      _antClinFlgFactRiesg ??= _constructAntClinFlgFactRiesg();
  GeneratedIntColumn _constructAntClinFlgFactRiesg() {
    return GeneratedIntColumn(
      'ant_clin_flg_fact_riesg',
      $tableName,
      false,
    );
  }

  final VerificationMeta _antCliFlgHabRepMeta =
      const VerificationMeta('antCliFlgHabRep');
  GeneratedIntColumn _antCliFlgHabRep;
  @override
  GeneratedIntColumn get antCliFlgHabRep =>
      _antCliFlgHabRep ??= _constructAntCliFlgHabRep();
  GeneratedIntColumn _constructAntCliFlgHabRep() {
    return GeneratedIntColumn(
      'ant_cli_flg_hab_rep',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        antClinId,
        antClinDesc,
        antClinFlgHab,
        tipAntClinId,
        antClinAlert,
        antClinAlertDsc,
        antClinSexo,
        antClinFlgFactRiesg,
        antCliFlgHabRep,
        statusId,
        usuId,
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
    if (d.antClinId.present) {
      context.handle(_antClinIdMeta,
          antClinId.isAcceptableValue(d.antClinId.value, _antClinIdMeta));
    } else if (antClinId.isRequired && isInserting) {
      context.missing(_antClinIdMeta);
    }
    if (d.antClinDesc.present) {
      context.handle(_antClinDescMeta,
          antClinDesc.isAcceptableValue(d.antClinDesc.value, _antClinDescMeta));
    } else if (antClinDesc.isRequired && isInserting) {
      context.missing(_antClinDescMeta);
    }
    if (d.antClinFlgHab.present) {
      context.handle(
          _antClinFlgHabMeta,
          antClinFlgHab.isAcceptableValue(
              d.antClinFlgHab.value, _antClinFlgHabMeta));
    } else if (antClinFlgHab.isRequired && isInserting) {
      context.missing(_antClinFlgHabMeta);
    }
    if (d.tipAntClinId.present) {
      context.handle(
          _tipAntClinIdMeta,
          tipAntClinId.isAcceptableValue(
              d.tipAntClinId.value, _tipAntClinIdMeta));
    } else if (tipAntClinId.isRequired && isInserting) {
      context.missing(_tipAntClinIdMeta);
    }
    if (d.antClinAlert.present) {
      context.handle(
          _antClinAlertMeta,
          antClinAlert.isAcceptableValue(
              d.antClinAlert.value, _antClinAlertMeta));
    } else if (antClinAlert.isRequired && isInserting) {
      context.missing(_antClinAlertMeta);
    }
    if (d.antClinAlertDsc.present) {
      context.handle(
          _antClinAlertDscMeta,
          antClinAlertDsc.isAcceptableValue(
              d.antClinAlertDsc.value, _antClinAlertDscMeta));
    } else if (antClinAlertDsc.isRequired && isInserting) {
      context.missing(_antClinAlertDscMeta);
    }
    if (d.antClinSexo.present) {
      context.handle(_antClinSexoMeta,
          antClinSexo.isAcceptableValue(d.antClinSexo.value, _antClinSexoMeta));
    } else if (antClinSexo.isRequired && isInserting) {
      context.missing(_antClinSexoMeta);
    }
    if (d.antClinFlgFactRiesg.present) {
      context.handle(
          _antClinFlgFactRiesgMeta,
          antClinFlgFactRiesg.isAcceptableValue(
              d.antClinFlgFactRiesg.value, _antClinFlgFactRiesgMeta));
    } else if (antClinFlgFactRiesg.isRequired && isInserting) {
      context.missing(_antClinFlgFactRiesgMeta);
    }
    if (d.antCliFlgHabRep.present) {
      context.handle(
          _antCliFlgHabRepMeta,
          antCliFlgHabRep.isAcceptableValue(
              d.antCliFlgHabRep.value, _antCliFlgHabRepMeta));
    } else if (antCliFlgHabRep.isRequired && isInserting) {
      context.missing(_antCliFlgHabRepMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {antClinId};
  @override
  AtnClin map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AtnClin.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableAtnClinCompanion d) {
    final map = <String, Variable>{};
    if (d.antClinId.present) {
      map['ant_clin_id'] = Variable<int, IntType>(d.antClinId.value);
    }
    if (d.antClinDesc.present) {
      map['ant_clin_desc'] = Variable<String, StringType>(d.antClinDesc.value);
    }
    if (d.antClinFlgHab.present) {
      map['ant_clin_flg_hab'] = Variable<int, IntType>(d.antClinFlgHab.value);
    }
    if (d.tipAntClinId.present) {
      map['tip_ant_clin_id'] = Variable<int, IntType>(d.tipAntClinId.value);
    }
    if (d.antClinAlert.present) {
      map['ant_clin_alert'] = Variable<int, IntType>(d.antClinAlert.value);
    }
    if (d.antClinAlertDsc.present) {
      map['ant_clin_alert_dsc'] =
          Variable<int, IntType>(d.antClinAlertDsc.value);
    }
    if (d.antClinSexo.present) {
      map['ant_clin_sexo'] = Variable<String, StringType>(d.antClinSexo.value);
    }
    if (d.antClinFlgFactRiesg.present) {
      map['ant_clin_flg_fact_riesg'] =
          Variable<int, IntType>(d.antClinFlgFactRiesg.value);
    }
    if (d.antCliFlgHabRep.present) {
      map['ant_cli_flg_hab_rep'] =
          Variable<int, IntType>(d.antCliFlgHabRep.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int droId;
  final String droDesc;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Drogas(
      {@required this.droId,
      @required this.droDesc,
      @required this.statusId,
      @required this.usuId,
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
      droId: intType.mapFromDatabaseResponse(data['${effectivePrefix}dro_id']),
      droDesc: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}dro_desc']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      droId: serializer.fromJson<int>(json['droId']),
      droDesc: serializer.fromJson<String>(json['droDesc']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'droId': serializer.toJson<int>(droId),
      'droDesc': serializer.toJson<String>(droDesc),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Drogas>>(bool nullToAbsent) {
    return TableDrogasCompanion(
      droId:
          droId == null && nullToAbsent ? const Value.absent() : Value(droId),
      droDesc: droDesc == null && nullToAbsent
          ? const Value.absent()
          : Value(droDesc),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int droId,
          String droDesc,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Drogas(
        droId: droId ?? this.droId,
        droDesc: droDesc ?? this.droDesc,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Drogas(')
          ..write('droId: $droId, ')
          ..write('droDesc: $droDesc, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      droId.hashCode,
      $mrjc(
          droDesc.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Drogas &&
          other.droId == droId &&
          other.droDesc == droDesc &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableDrogasCompanion extends UpdateCompanion<Drogas> {
  final Value<int> droId;
  final Value<String> droDesc;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableDrogasCompanion({
    this.droId = const Value.absent(),
    this.droDesc = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableDrogasCompanion copyWith(
      {Value<int> droId,
      Value<String> droDesc,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableDrogasCompanion(
      droId: droId ?? this.droId,
      droDesc: droDesc ?? this.droDesc,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _droIdMeta = const VerificationMeta('droId');
  GeneratedIntColumn _droId;
  @override
  GeneratedIntColumn get droId => _droId ??= _constructDroId();
  GeneratedIntColumn _constructDroId() {
    return GeneratedIntColumn('dro_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _droDescMeta = const VerificationMeta('droDesc');
  GeneratedTextColumn _droDesc;
  @override
  GeneratedTextColumn get droDesc => _droDesc ??= _constructDroDesc();
  GeneratedTextColumn _constructDroDesc() {
    return GeneratedTextColumn(
      'dro_desc',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
      [droId, droDesc, statusId, usuId, createdAt, updatedAt, deletedAt];
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
    if (d.droId.present) {
      context.handle(
          _droIdMeta, droId.isAcceptableValue(d.droId.value, _droIdMeta));
    } else if (droId.isRequired && isInserting) {
      context.missing(_droIdMeta);
    }
    if (d.droDesc.present) {
      context.handle(_droDescMeta,
          droDesc.isAcceptableValue(d.droDesc.value, _droDescMeta));
    } else if (droDesc.isRequired && isInserting) {
      context.missing(_droDescMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {droId};
  @override
  Drogas map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Drogas.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableDrogasCompanion d) {
    final map = <String, Variable>{};
    if (d.droId.present) {
      map['dro_id'] = Variable<int, IntType>(d.droId.value);
    }
    if (d.droDesc.present) {
      map['dro_desc'] = Variable<String, StringType>(d.droDesc.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int farId;
  final String farNom;
  final int farFlgHab;
  final String farDrogComp;
  final int farPresMedicId;
  final int farDosCnt;
  final int farDosUnidMedId;
  final int farFlgEsSuero;
  final int farFlgEsAdit;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Farmacos(
      {@required this.farId,
      @required this.farNom,
      @required this.farFlgHab,
      @required this.farDrogComp,
      @required this.farPresMedicId,
      @required this.farDosCnt,
      @required this.farDosUnidMedId,
      @required this.farFlgEsSuero,
      @required this.farFlgEsAdit,
      @required this.statusId,
      @required this.usuId,
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
      farId: intType.mapFromDatabaseResponse(data['${effectivePrefix}far_id']),
      farNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}far_nom']),
      farFlgHab: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_flg_hab']),
      farDrogComp: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_drog_comp']),
      farPresMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_pres_medic_id']),
      farDosCnt: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_dos_cnt']),
      farDosUnidMedId: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}far_dos_unid_med_id']),
      farFlgEsSuero: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_flg_es_suero']),
      farFlgEsAdit: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}far_flg_es_adit']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      farId: serializer.fromJson<int>(json['farId']),
      farNom: serializer.fromJson<String>(json['farNom']),
      farFlgHab: serializer.fromJson<int>(json['farFlgHab']),
      farDrogComp: serializer.fromJson<String>(json['farDrogComp']),
      farPresMedicId: serializer.fromJson<int>(json['farPresMedicId']),
      farDosCnt: serializer.fromJson<int>(json['farDosCnt']),
      farDosUnidMedId: serializer.fromJson<int>(json['farDosUnidMedId']),
      farFlgEsSuero: serializer.fromJson<int>(json['farFlgEsSuero']),
      farFlgEsAdit: serializer.fromJson<int>(json['farFlgEsAdit']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'farId': serializer.toJson<int>(farId),
      'farNom': serializer.toJson<String>(farNom),
      'farFlgHab': serializer.toJson<int>(farFlgHab),
      'farDrogComp': serializer.toJson<String>(farDrogComp),
      'farPresMedicId': serializer.toJson<int>(farPresMedicId),
      'farDosCnt': serializer.toJson<int>(farDosCnt),
      'farDosUnidMedId': serializer.toJson<int>(farDosUnidMedId),
      'farFlgEsSuero': serializer.toJson<int>(farFlgEsSuero),
      'farFlgEsAdit': serializer.toJson<int>(farFlgEsAdit),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Farmacos>>(bool nullToAbsent) {
    return TableFarmacosCompanion(
      farId:
          farId == null && nullToAbsent ? const Value.absent() : Value(farId),
      farNom:
          farNom == null && nullToAbsent ? const Value.absent() : Value(farNom),
      farFlgHab: farFlgHab == null && nullToAbsent
          ? const Value.absent()
          : Value(farFlgHab),
      farDrogComp: farDrogComp == null && nullToAbsent
          ? const Value.absent()
          : Value(farDrogComp),
      farPresMedicId: farPresMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(farPresMedicId),
      farDosCnt: farDosCnt == null && nullToAbsent
          ? const Value.absent()
          : Value(farDosCnt),
      farDosUnidMedId: farDosUnidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(farDosUnidMedId),
      farFlgEsSuero: farFlgEsSuero == null && nullToAbsent
          ? const Value.absent()
          : Value(farFlgEsSuero),
      farFlgEsAdit: farFlgEsAdit == null && nullToAbsent
          ? const Value.absent()
          : Value(farFlgEsAdit),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int farId,
          String farNom,
          int farFlgHab,
          String farDrogComp,
          int farPresMedicId,
          int farDosCnt,
          int farDosUnidMedId,
          int farFlgEsSuero,
          int farFlgEsAdit,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Farmacos(
        farId: farId ?? this.farId,
        farNom: farNom ?? this.farNom,
        farFlgHab: farFlgHab ?? this.farFlgHab,
        farDrogComp: farDrogComp ?? this.farDrogComp,
        farPresMedicId: farPresMedicId ?? this.farPresMedicId,
        farDosCnt: farDosCnt ?? this.farDosCnt,
        farDosUnidMedId: farDosUnidMedId ?? this.farDosUnidMedId,
        farFlgEsSuero: farFlgEsSuero ?? this.farFlgEsSuero,
        farFlgEsAdit: farFlgEsAdit ?? this.farFlgEsAdit,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Farmacos(')
          ..write('farId: $farId, ')
          ..write('farNom: $farNom, ')
          ..write('farFlgHab: $farFlgHab, ')
          ..write('farDrogComp: $farDrogComp, ')
          ..write('farPresMedicId: $farPresMedicId, ')
          ..write('farDosCnt: $farDosCnt, ')
          ..write('farDosUnidMedId: $farDosUnidMedId, ')
          ..write('farFlgEsSuero: $farFlgEsSuero, ')
          ..write('farFlgEsAdit: $farFlgEsAdit, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      farId.hashCode,
      $mrjc(
          farNom.hashCode,
          $mrjc(
              farFlgHab.hashCode,
              $mrjc(
                  farDrogComp.hashCode,
                  $mrjc(
                      farPresMedicId.hashCode,
                      $mrjc(
                          farDosCnt.hashCode,
                          $mrjc(
                              farDosUnidMedId.hashCode,
                              $mrjc(
                                  farFlgEsSuero.hashCode,
                                  $mrjc(
                                      farFlgEsAdit.hashCode,
                                      $mrjc(
                                          statusId.hashCode,
                                          $mrjc(
                                              usuId.hashCode,
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
          other.farId == farId &&
          other.farNom == farNom &&
          other.farFlgHab == farFlgHab &&
          other.farDrogComp == farDrogComp &&
          other.farPresMedicId == farPresMedicId &&
          other.farDosCnt == farDosCnt &&
          other.farDosUnidMedId == farDosUnidMedId &&
          other.farFlgEsSuero == farFlgEsSuero &&
          other.farFlgEsAdit == farFlgEsAdit &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFarmacosCompanion extends UpdateCompanion<Farmacos> {
  final Value<int> farId;
  final Value<String> farNom;
  final Value<int> farFlgHab;
  final Value<String> farDrogComp;
  final Value<int> farPresMedicId;
  final Value<int> farDosCnt;
  final Value<int> farDosUnidMedId;
  final Value<int> farFlgEsSuero;
  final Value<int> farFlgEsAdit;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFarmacosCompanion({
    this.farId = const Value.absent(),
    this.farNom = const Value.absent(),
    this.farFlgHab = const Value.absent(),
    this.farDrogComp = const Value.absent(),
    this.farPresMedicId = const Value.absent(),
    this.farDosCnt = const Value.absent(),
    this.farDosUnidMedId = const Value.absent(),
    this.farFlgEsSuero = const Value.absent(),
    this.farFlgEsAdit = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFarmacosCompanion copyWith(
      {Value<int> farId,
      Value<String> farNom,
      Value<int> farFlgHab,
      Value<String> farDrogComp,
      Value<int> farPresMedicId,
      Value<int> farDosCnt,
      Value<int> farDosUnidMedId,
      Value<int> farFlgEsSuero,
      Value<int> farFlgEsAdit,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFarmacosCompanion(
      farId: farId ?? this.farId,
      farNom: farNom ?? this.farNom,
      farFlgHab: farFlgHab ?? this.farFlgHab,
      farDrogComp: farDrogComp ?? this.farDrogComp,
      farPresMedicId: farPresMedicId ?? this.farPresMedicId,
      farDosCnt: farDosCnt ?? this.farDosCnt,
      farDosUnidMedId: farDosUnidMedId ?? this.farDosUnidMedId,
      farFlgEsSuero: farFlgEsSuero ?? this.farFlgEsSuero,
      farFlgEsAdit: farFlgEsAdit ?? this.farFlgEsAdit,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _farIdMeta = const VerificationMeta('farId');
  GeneratedIntColumn _farId;
  @override
  GeneratedIntColumn get farId => _farId ??= _constructFarId();
  GeneratedIntColumn _constructFarId() {
    return GeneratedIntColumn('far_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _farNomMeta = const VerificationMeta('farNom');
  GeneratedTextColumn _farNom;
  @override
  GeneratedTextColumn get farNom => _farNom ??= _constructFarNom();
  GeneratedTextColumn _constructFarNom() {
    return GeneratedTextColumn(
      'far_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _farFlgHabMeta = const VerificationMeta('farFlgHab');
  GeneratedIntColumn _farFlgHab;
  @override
  GeneratedIntColumn get farFlgHab => _farFlgHab ??= _constructFarFlgHab();
  GeneratedIntColumn _constructFarFlgHab() {
    return GeneratedIntColumn(
      'far_flg_hab',
      $tableName,
      false,
    );
  }

  final VerificationMeta _farDrogCompMeta =
      const VerificationMeta('farDrogComp');
  GeneratedTextColumn _farDrogComp;
  @override
  GeneratedTextColumn get farDrogComp =>
      _farDrogComp ??= _constructFarDrogComp();
  GeneratedTextColumn _constructFarDrogComp() {
    return GeneratedTextColumn(
      'far_drog_comp',
      $tableName,
      false,
    );
  }

  final VerificationMeta _farPresMedicIdMeta =
      const VerificationMeta('farPresMedicId');
  GeneratedIntColumn _farPresMedicId;
  @override
  GeneratedIntColumn get farPresMedicId =>
      _farPresMedicId ??= _constructFarPresMedicId();
  GeneratedIntColumn _constructFarPresMedicId() {
    return GeneratedIntColumn(
      'far_pres_medic_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _farDosCntMeta = const VerificationMeta('farDosCnt');
  GeneratedIntColumn _farDosCnt;
  @override
  GeneratedIntColumn get farDosCnt => _farDosCnt ??= _constructFarDosCnt();
  GeneratedIntColumn _constructFarDosCnt() {
    return GeneratedIntColumn(
      'far_dos_cnt',
      $tableName,
      false,
    );
  }

  final VerificationMeta _farDosUnidMedIdMeta =
      const VerificationMeta('farDosUnidMedId');
  GeneratedIntColumn _farDosUnidMedId;
  @override
  GeneratedIntColumn get farDosUnidMedId =>
      _farDosUnidMedId ??= _constructFarDosUnidMedId();
  GeneratedIntColumn _constructFarDosUnidMedId() {
    return GeneratedIntColumn(
      'far_dos_unid_med_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _farFlgEsSueroMeta =
      const VerificationMeta('farFlgEsSuero');
  GeneratedIntColumn _farFlgEsSuero;
  @override
  GeneratedIntColumn get farFlgEsSuero =>
      _farFlgEsSuero ??= _constructFarFlgEsSuero();
  GeneratedIntColumn _constructFarFlgEsSuero() {
    return GeneratedIntColumn(
      'far_flg_es_suero',
      $tableName,
      false,
    );
  }

  final VerificationMeta _farFlgEsAditMeta =
      const VerificationMeta('farFlgEsAdit');
  GeneratedIntColumn _farFlgEsAdit;
  @override
  GeneratedIntColumn get farFlgEsAdit =>
      _farFlgEsAdit ??= _constructFarFlgEsAdit();
  GeneratedIntColumn _constructFarFlgEsAdit() {
    return GeneratedIntColumn(
      'far_flg_es_adit',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        farId,
        farNom,
        farFlgHab,
        farDrogComp,
        farPresMedicId,
        farDosCnt,
        farDosUnidMedId,
        farFlgEsSuero,
        farFlgEsAdit,
        statusId,
        usuId,
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
    if (d.farId.present) {
      context.handle(
          _farIdMeta, farId.isAcceptableValue(d.farId.value, _farIdMeta));
    } else if (farId.isRequired && isInserting) {
      context.missing(_farIdMeta);
    }
    if (d.farNom.present) {
      context.handle(
          _farNomMeta, farNom.isAcceptableValue(d.farNom.value, _farNomMeta));
    } else if (farNom.isRequired && isInserting) {
      context.missing(_farNomMeta);
    }
    if (d.farFlgHab.present) {
      context.handle(_farFlgHabMeta,
          farFlgHab.isAcceptableValue(d.farFlgHab.value, _farFlgHabMeta));
    } else if (farFlgHab.isRequired && isInserting) {
      context.missing(_farFlgHabMeta);
    }
    if (d.farDrogComp.present) {
      context.handle(_farDrogCompMeta,
          farDrogComp.isAcceptableValue(d.farDrogComp.value, _farDrogCompMeta));
    } else if (farDrogComp.isRequired && isInserting) {
      context.missing(_farDrogCompMeta);
    }
    if (d.farPresMedicId.present) {
      context.handle(
          _farPresMedicIdMeta,
          farPresMedicId.isAcceptableValue(
              d.farPresMedicId.value, _farPresMedicIdMeta));
    } else if (farPresMedicId.isRequired && isInserting) {
      context.missing(_farPresMedicIdMeta);
    }
    if (d.farDosCnt.present) {
      context.handle(_farDosCntMeta,
          farDosCnt.isAcceptableValue(d.farDosCnt.value, _farDosCntMeta));
    } else if (farDosCnt.isRequired && isInserting) {
      context.missing(_farDosCntMeta);
    }
    if (d.farDosUnidMedId.present) {
      context.handle(
          _farDosUnidMedIdMeta,
          farDosUnidMedId.isAcceptableValue(
              d.farDosUnidMedId.value, _farDosUnidMedIdMeta));
    } else if (farDosUnidMedId.isRequired && isInserting) {
      context.missing(_farDosUnidMedIdMeta);
    }
    if (d.farFlgEsSuero.present) {
      context.handle(
          _farFlgEsSueroMeta,
          farFlgEsSuero.isAcceptableValue(
              d.farFlgEsSuero.value, _farFlgEsSueroMeta));
    } else if (farFlgEsSuero.isRequired && isInserting) {
      context.missing(_farFlgEsSueroMeta);
    }
    if (d.farFlgEsAdit.present) {
      context.handle(
          _farFlgEsAditMeta,
          farFlgEsAdit.isAcceptableValue(
              d.farFlgEsAdit.value, _farFlgEsAditMeta));
    } else if (farFlgEsAdit.isRequired && isInserting) {
      context.missing(_farFlgEsAditMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {farId};
  @override
  Farmacos map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Farmacos.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFarmacosCompanion d) {
    final map = <String, Variable>{};
    if (d.farId.present) {
      map['far_id'] = Variable<int, IntType>(d.farId.value);
    }
    if (d.farNom.present) {
      map['far_nom'] = Variable<String, StringType>(d.farNom.value);
    }
    if (d.farFlgHab.present) {
      map['far_flg_hab'] = Variable<int, IntType>(d.farFlgHab.value);
    }
    if (d.farDrogComp.present) {
      map['far_drog_comp'] = Variable<String, StringType>(d.farDrogComp.value);
    }
    if (d.farPresMedicId.present) {
      map['far_pres_medic_id'] = Variable<int, IntType>(d.farPresMedicId.value);
    }
    if (d.farDosCnt.present) {
      map['far_dos_cnt'] = Variable<int, IntType>(d.farDosCnt.value);
    }
    if (d.farDosUnidMedId.present) {
      map['far_dos_unid_med_id'] =
          Variable<int, IntType>(d.farDosUnidMedId.value);
    }
    if (d.farFlgEsSuero.present) {
      map['far_flg_es_suero'] = Variable<int, IntType>(d.farFlgEsSuero.value);
    }
    if (d.farFlgEsAdit.present) {
      map['far_flg_es_adit'] = Variable<int, IntType>(d.farFlgEsAdit.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int farId;
  final int viaAdmMedicId;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  FarVia(
      {@required this.farId,
      @required this.viaAdmMedicId,
      @required this.statusId,
      @required this.usuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory FarVia.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return FarVia(
      farId: intType.mapFromDatabaseResponse(data['${effectivePrefix}far_id']),
      viaAdmMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}via_adm_medic_id']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      farId: serializer.fromJson<int>(json['farId']),
      viaAdmMedicId: serializer.fromJson<int>(json['viaAdmMedicId']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'farId': serializer.toJson<int>(farId),
      'viaAdmMedicId': serializer.toJson<int>(viaAdmMedicId),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<FarVia>>(bool nullToAbsent) {
    return TableFarViaCompanion(
      farId:
          farId == null && nullToAbsent ? const Value.absent() : Value(farId),
      viaAdmMedicId: viaAdmMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(viaAdmMedicId),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int farId,
          int viaAdmMedicId,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      FarVia(
        farId: farId ?? this.farId,
        viaAdmMedicId: viaAdmMedicId ?? this.viaAdmMedicId,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('FarVia(')
          ..write('farId: $farId, ')
          ..write('viaAdmMedicId: $viaAdmMedicId, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      farId.hashCode,
      $mrjc(
          viaAdmMedicId.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is FarVia &&
          other.farId == farId &&
          other.viaAdmMedicId == viaAdmMedicId &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableFarViaCompanion extends UpdateCompanion<FarVia> {
  final Value<int> farId;
  final Value<int> viaAdmMedicId;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableFarViaCompanion({
    this.farId = const Value.absent(),
    this.viaAdmMedicId = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableFarViaCompanion copyWith(
      {Value<int> farId,
      Value<int> viaAdmMedicId,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableFarViaCompanion(
      farId: farId ?? this.farId,
      viaAdmMedicId: viaAdmMedicId ?? this.viaAdmMedicId,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _farIdMeta = const VerificationMeta('farId');
  GeneratedIntColumn _farId;
  @override
  GeneratedIntColumn get farId => _farId ??= _constructFarId();
  GeneratedIntColumn _constructFarId() {
    return GeneratedIntColumn('far_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _viaAdmMedicIdMeta =
      const VerificationMeta('viaAdmMedicId');
  GeneratedIntColumn _viaAdmMedicId;
  @override
  GeneratedIntColumn get viaAdmMedicId =>
      _viaAdmMedicId ??= _constructViaAdmMedicId();
  GeneratedIntColumn _constructViaAdmMedicId() {
    return GeneratedIntColumn('via_adm_medic_id', $tableName, false,
        $customConstraints: 'REFERENCES ViaAdmMedic(viaAdmMedicId)');
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
      [farId, viaAdmMedicId, statusId, usuId, createdAt, updatedAt, deletedAt];
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
    if (d.farId.present) {
      context.handle(
          _farIdMeta, farId.isAcceptableValue(d.farId.value, _farIdMeta));
    } else if (farId.isRequired && isInserting) {
      context.missing(_farIdMeta);
    }
    if (d.viaAdmMedicId.present) {
      context.handle(
          _viaAdmMedicIdMeta,
          viaAdmMedicId.isAcceptableValue(
              d.viaAdmMedicId.value, _viaAdmMedicIdMeta));
    } else if (viaAdmMedicId.isRequired && isInserting) {
      context.missing(_viaAdmMedicIdMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {farId};
  @override
  FarVia map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return FarVia.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableFarViaCompanion d) {
    final map = <String, Variable>{};
    if (d.farId.present) {
      map['far_id'] = Variable<int, IntType>(d.farId.value);
    }
    if (d.viaAdmMedicId.present) {
      map['via_adm_medic_id'] = Variable<int, IntType>(d.viaAdmMedicId.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int matId;
  final String matNom;
  final int matBajFlg;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Materiales(
      {@required this.matId,
      @required this.matNom,
      @required this.matBajFlg,
      @required this.statusId,
      @required this.usuId,
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
      matId: intType.mapFromDatabaseResponse(data['${effectivePrefix}mat_id']),
      matNom:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}mat_nom']),
      matBajFlg: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}mat_baj_flg']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      matId: serializer.fromJson<int>(json['matId']),
      matNom: serializer.fromJson<String>(json['matNom']),
      matBajFlg: serializer.fromJson<int>(json['matBajFlg']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'matId': serializer.toJson<int>(matId),
      'matNom': serializer.toJson<String>(matNom),
      'matBajFlg': serializer.toJson<int>(matBajFlg),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Materiales>>(bool nullToAbsent) {
    return TableMaterialesCompanion(
      matId:
          matId == null && nullToAbsent ? const Value.absent() : Value(matId),
      matNom:
          matNom == null && nullToAbsent ? const Value.absent() : Value(matNom),
      matBajFlg: matBajFlg == null && nullToAbsent
          ? const Value.absent()
          : Value(matBajFlg),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int matId,
          String matNom,
          int matBajFlg,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Materiales(
        matId: matId ?? this.matId,
        matNom: matNom ?? this.matNom,
        matBajFlg: matBajFlg ?? this.matBajFlg,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Materiales(')
          ..write('matId: $matId, ')
          ..write('matNom: $matNom, ')
          ..write('matBajFlg: $matBajFlg, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      matId.hashCode,
      $mrjc(
          matNom.hashCode,
          $mrjc(
              matBajFlg.hashCode,
              $mrjc(
                  statusId.hashCode,
                  $mrjc(
                      usuId.hashCode,
                      $mrjc(createdAt.hashCode,
                          $mrjc(updatedAt.hashCode, deletedAt.hashCode))))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Materiales &&
          other.matId == matId &&
          other.matNom == matNom &&
          other.matBajFlg == matBajFlg &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableMaterialesCompanion extends UpdateCompanion<Materiales> {
  final Value<int> matId;
  final Value<String> matNom;
  final Value<int> matBajFlg;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableMaterialesCompanion({
    this.matId = const Value.absent(),
    this.matNom = const Value.absent(),
    this.matBajFlg = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableMaterialesCompanion copyWith(
      {Value<int> matId,
      Value<String> matNom,
      Value<int> matBajFlg,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableMaterialesCompanion(
      matId: matId ?? this.matId,
      matNom: matNom ?? this.matNom,
      matBajFlg: matBajFlg ?? this.matBajFlg,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _matIdMeta = const VerificationMeta('matId');
  GeneratedIntColumn _matId;
  @override
  GeneratedIntColumn get matId => _matId ??= _constructMatId();
  GeneratedIntColumn _constructMatId() {
    return GeneratedIntColumn('mat_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _matNomMeta = const VerificationMeta('matNom');
  GeneratedTextColumn _matNom;
  @override
  GeneratedTextColumn get matNom => _matNom ??= _constructMatNom();
  GeneratedTextColumn _constructMatNom() {
    return GeneratedTextColumn(
      'mat_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _matBajFlgMeta = const VerificationMeta('matBajFlg');
  GeneratedIntColumn _matBajFlg;
  @override
  GeneratedIntColumn get matBajFlg => _matBajFlg ??= _constructMatBajFlg();
  GeneratedIntColumn _constructMatBajFlg() {
    return GeneratedIntColumn(
      'mat_baj_flg',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        matId,
        matNom,
        matBajFlg,
        statusId,
        usuId,
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
    if (d.matId.present) {
      context.handle(
          _matIdMeta, matId.isAcceptableValue(d.matId.value, _matIdMeta));
    } else if (matId.isRequired && isInserting) {
      context.missing(_matIdMeta);
    }
    if (d.matNom.present) {
      context.handle(
          _matNomMeta, matNom.isAcceptableValue(d.matNom.value, _matNomMeta));
    } else if (matNom.isRequired && isInserting) {
      context.missing(_matNomMeta);
    }
    if (d.matBajFlg.present) {
      context.handle(_matBajFlgMeta,
          matBajFlg.isAcceptableValue(d.matBajFlg.value, _matBajFlgMeta));
    } else if (matBajFlg.isRequired && isInserting) {
      context.missing(_matBajFlgMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {matId};
  @override
  Materiales map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Materiales.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TableMaterialesCompanion d) {
    final map = <String, Variable>{};
    if (d.matId.present) {
      map['mat_id'] = Variable<int, IntType>(d.matId.value);
    }
    if (d.matNom.present) {
      map['mat_nom'] = Variable<String, StringType>(d.matNom.value);
    }
    if (d.matBajFlg.present) {
      map['mat_baj_flg'] = Variable<int, IntType>(d.matBajFlg.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int matId;
  final int matUnidMedId;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  MatUniMed(
      {@required this.matId,
      @required this.matUnidMedId,
      @required this.statusId,
      @required this.usuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory MatUniMed.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MatUniMed(
      matId: intType.mapFromDatabaseResponse(data['${effectivePrefix}mat_id']),
      matUnidMedId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}mat_unid_med_id']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      matId: serializer.fromJson<int>(json['matId']),
      matUnidMedId: serializer.fromJson<int>(json['matUnidMedId']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'matId': serializer.toJson<int>(matId),
      'matUnidMedId': serializer.toJson<int>(matUnidMedId),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<MatUniMed>>(bool nullToAbsent) {
    return TableMatUniMedCompanion(
      matId:
          matId == null && nullToAbsent ? const Value.absent() : Value(matId),
      matUnidMedId: matUnidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(matUnidMedId),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int matId,
          int matUnidMedId,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      MatUniMed(
        matId: matId ?? this.matId,
        matUnidMedId: matUnidMedId ?? this.matUnidMedId,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('MatUniMed(')
          ..write('matId: $matId, ')
          ..write('matUnidMedId: $matUnidMedId, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      matId.hashCode,
      $mrjc(
          matUnidMedId.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is MatUniMed &&
          other.matId == matId &&
          other.matUnidMedId == matUnidMedId &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TableMatUniMedCompanion extends UpdateCompanion<MatUniMed> {
  final Value<int> matId;
  final Value<int> matUnidMedId;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TableMatUniMedCompanion({
    this.matId = const Value.absent(),
    this.matUnidMedId = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TableMatUniMedCompanion copyWith(
      {Value<int> matId,
      Value<int> matUnidMedId,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TableMatUniMedCompanion(
      matId: matId ?? this.matId,
      matUnidMedId: matUnidMedId ?? this.matUnidMedId,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _matIdMeta = const VerificationMeta('matId');
  GeneratedIntColumn _matId;
  @override
  GeneratedIntColumn get matId => _matId ??= _constructMatId();
  GeneratedIntColumn _constructMatId() {
    return GeneratedIntColumn('mat_id', $tableName, false,
        $customConstraints: 'REFERENCES Materiales(matId)');
  }

  final VerificationMeta _matUnidMedIdMeta =
      const VerificationMeta('matUnidMedId');
  GeneratedIntColumn _matUnidMedId;
  @override
  GeneratedIntColumn get matUnidMedId =>
      _matUnidMedId ??= _constructMatUnidMedId();
  GeneratedIntColumn _constructMatUnidMedId() {
    return GeneratedIntColumn(
      'mat_unid_med_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
      [matId, matUnidMedId, statusId, usuId, createdAt, updatedAt, deletedAt];
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
    if (d.matId.present) {
      context.handle(
          _matIdMeta, matId.isAcceptableValue(d.matId.value, _matIdMeta));
    } else if (matId.isRequired && isInserting) {
      context.missing(_matIdMeta);
    }
    if (d.matUnidMedId.present) {
      context.handle(
          _matUnidMedIdMeta,
          matUnidMedId.isAcceptableValue(
              d.matUnidMedId.value, _matUnidMedIdMeta));
    } else if (matUnidMedId.isRequired && isInserting) {
      context.missing(_matUnidMedIdMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
    if (d.matId.present) {
      map['mat_id'] = Variable<int, IntType>(d.matId.value);
    }
    if (d.matUnidMedId.present) {
      map['mat_unid_med_id'] = Variable<int, IntType>(d.matUnidMedId.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int presMedicId;
  final String presMedicNom;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Presentaciones(
      {@required this.presMedicId,
      @required this.presMedicNom,
      @required this.statusId,
      @required this.usuId,
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
      presMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}pres_medic_id']),
      presMedicNom: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}pres_medic_nom']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      presMedicId: serializer.fromJson<int>(json['presMedicId']),
      presMedicNom: serializer.fromJson<String>(json['presMedicNom']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'presMedicId': serializer.toJson<int>(presMedicId),
      'presMedicNom': serializer.toJson<String>(presMedicNom),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<Presentaciones>>(
      bool nullToAbsent) {
    return TablePresentacionesCompanion(
      presMedicId: presMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(presMedicId),
      presMedicNom: presMedicNom == null && nullToAbsent
          ? const Value.absent()
          : Value(presMedicNom),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int presMedicId,
          String presMedicNom,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      Presentaciones(
        presMedicId: presMedicId ?? this.presMedicId,
        presMedicNom: presMedicNom ?? this.presMedicNom,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Presentaciones(')
          ..write('presMedicId: $presMedicId, ')
          ..write('presMedicNom: $presMedicNom, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      presMedicId.hashCode,
      $mrjc(
          presMedicNom.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is Presentaciones &&
          other.presMedicId == presMedicId &&
          other.presMedicNom == presMedicNom &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePresentacionesCompanion extends UpdateCompanion<Presentaciones> {
  final Value<int> presMedicId;
  final Value<String> presMedicNom;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePresentacionesCompanion({
    this.presMedicId = const Value.absent(),
    this.presMedicNom = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePresentacionesCompanion copyWith(
      {Value<int> presMedicId,
      Value<String> presMedicNom,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePresentacionesCompanion(
      presMedicId: presMedicId ?? this.presMedicId,
      presMedicNom: presMedicNom ?? this.presMedicNom,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _presMedicIdMeta =
      const VerificationMeta('presMedicId');
  GeneratedIntColumn _presMedicId;
  @override
  GeneratedIntColumn get presMedicId =>
      _presMedicId ??= _constructPresMedicId();
  GeneratedIntColumn _constructPresMedicId() {
    return GeneratedIntColumn('pres_medic_id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _presMedicNomMeta =
      const VerificationMeta('presMedicNom');
  GeneratedTextColumn _presMedicNom;
  @override
  GeneratedTextColumn get presMedicNom =>
      _presMedicNom ??= _constructPresMedicNom();
  GeneratedTextColumn _constructPresMedicNom() {
    return GeneratedTextColumn(
      'pres_medic_nom',
      $tableName,
      false,
    );
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        presMedicId,
        presMedicNom,
        statusId,
        usuId,
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
    if (d.presMedicId.present) {
      context.handle(_presMedicIdMeta,
          presMedicId.isAcceptableValue(d.presMedicId.value, _presMedicIdMeta));
    } else if (presMedicId.isRequired && isInserting) {
      context.missing(_presMedicIdMeta);
    }
    if (d.presMedicNom.present) {
      context.handle(
          _presMedicNomMeta,
          presMedicNom.isAcceptableValue(
              d.presMedicNom.value, _presMedicNomMeta));
    } else if (presMedicNom.isRequired && isInserting) {
      context.missing(_presMedicNomMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {presMedicId};
  @override
  Presentaciones map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Presentaciones.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(TablePresentacionesCompanion d) {
    final map = <String, Variable>{};
    if (d.presMedicId.present) {
      map['pres_medic_id'] = Variable<int, IntType>(d.presMedicId.value);
    }
    if (d.presMedicNom.present) {
      map['pres_medic_nom'] =
          Variable<String, StringType>(d.presMedicNom.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int presMedicId;
  final int viaAdmMedicId;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  PresMedicVia(
      {@required this.presMedicId,
      @required this.viaAdmMedicId,
      @required this.statusId,
      @required this.usuId,
      this.createdAt,
      this.updatedAt,
      this.deletedAt});
  factory PresMedicVia.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return PresMedicVia(
      presMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}pres_medic_id']),
      viaAdmMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}via_adm_medic_id']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      presMedicId: serializer.fromJson<int>(json['presMedicId']),
      viaAdmMedicId: serializer.fromJson<int>(json['viaAdmMedicId']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'presMedicId': serializer.toJson<int>(presMedicId),
      'viaAdmMedicId': serializer.toJson<int>(viaAdmMedicId),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<PresMedicVia>>(
      bool nullToAbsent) {
    return TablePresMedicViaCompanion(
      presMedicId: presMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(presMedicId),
      viaAdmMedicId: viaAdmMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(viaAdmMedicId),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int presMedicId,
          int viaAdmMedicId,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      PresMedicVia(
        presMedicId: presMedicId ?? this.presMedicId,
        viaAdmMedicId: viaAdmMedicId ?? this.viaAdmMedicId,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PresMedicVia(')
          ..write('presMedicId: $presMedicId, ')
          ..write('viaAdmMedicId: $viaAdmMedicId, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      presMedicId.hashCode,
      $mrjc(
          viaAdmMedicId.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is PresMedicVia &&
          other.presMedicId == presMedicId &&
          other.viaAdmMedicId == viaAdmMedicId &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePresMedicViaCompanion extends UpdateCompanion<PresMedicVia> {
  final Value<int> presMedicId;
  final Value<int> viaAdmMedicId;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePresMedicViaCompanion({
    this.presMedicId = const Value.absent(),
    this.viaAdmMedicId = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePresMedicViaCompanion copyWith(
      {Value<int> presMedicId,
      Value<int> viaAdmMedicId,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePresMedicViaCompanion(
      presMedicId: presMedicId ?? this.presMedicId,
      viaAdmMedicId: viaAdmMedicId ?? this.viaAdmMedicId,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _presMedicIdMeta =
      const VerificationMeta('presMedicId');
  GeneratedIntColumn _presMedicId;
  @override
  GeneratedIntColumn get presMedicId =>
      _presMedicId ??= _constructPresMedicId();
  GeneratedIntColumn _constructPresMedicId() {
    return GeneratedIntColumn('pres_medic_id', $tableName, false,
        $customConstraints: 'REFERENCES Presentaciones(presMedicId)');
  }

  final VerificationMeta _viaAdmMedicIdMeta =
      const VerificationMeta('viaAdmMedicId');
  GeneratedIntColumn _viaAdmMedicId;
  @override
  GeneratedIntColumn get viaAdmMedicId =>
      _viaAdmMedicId ??= _constructViaAdmMedicId();
  GeneratedIntColumn _constructViaAdmMedicId() {
    return GeneratedIntColumn('via_adm_medic_id', $tableName, false,
        $customConstraints: 'REFERENCES ViaAdmMedic(viaAdmMedicId)');
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        presMedicId,
        viaAdmMedicId,
        statusId,
        usuId,
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
    if (d.presMedicId.present) {
      context.handle(_presMedicIdMeta,
          presMedicId.isAcceptableValue(d.presMedicId.value, _presMedicIdMeta));
    } else if (presMedicId.isRequired && isInserting) {
      context.missing(_presMedicIdMeta);
    }
    if (d.viaAdmMedicId.present) {
      context.handle(
          _viaAdmMedicIdMeta,
          viaAdmMedicId.isAcceptableValue(
              d.viaAdmMedicId.value, _viaAdmMedicIdMeta));
    } else if (viaAdmMedicId.isRequired && isInserting) {
      context.missing(_viaAdmMedicIdMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
    if (d.presMedicId.present) {
      map['pres_medic_id'] = Variable<int, IntType>(d.presMedicId.value);
    }
    if (d.viaAdmMedicId.present) {
      map['via_adm_medic_id'] = Variable<int, IntType>(d.viaAdmMedicId.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  final int presMedicId;
  final int unidMedId;
  final int statusId;
  final int usuId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  PresMedicUniMed(
      {@required this.presMedicId,
      @required this.unidMedId,
      @required this.statusId,
      @required this.usuId,
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
      presMedicId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}pres_medic_id']),
      unidMedId: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}unid_med_id']),
      statusId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}status_id']),
      usuId: intType.mapFromDatabaseResponse(data['${effectivePrefix}usu_id']),
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
      presMedicId: serializer.fromJson<int>(json['presMedicId']),
      unidMedId: serializer.fromJson<int>(json['unidMedId']),
      statusId: serializer.fromJson<int>(json['statusId']),
      usuId: serializer.fromJson<int>(json['usuId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson(
      {ValueSerializer serializer = const ValueSerializer.defaults()}) {
    return {
      'presMedicId': serializer.toJson<int>(presMedicId),
      'unidMedId': serializer.toJson<int>(unidMedId),
      'statusId': serializer.toJson<int>(statusId),
      'usuId': serializer.toJson<int>(usuId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  @override
  T createCompanion<T extends UpdateCompanion<PresMedicUniMed>>(
      bool nullToAbsent) {
    return TablePresMedicUniMedCompanion(
      presMedicId: presMedicId == null && nullToAbsent
          ? const Value.absent()
          : Value(presMedicId),
      unidMedId: unidMedId == null && nullToAbsent
          ? const Value.absent()
          : Value(unidMedId),
      statusId: statusId == null && nullToAbsent
          ? const Value.absent()
          : Value(statusId),
      usuId:
          usuId == null && nullToAbsent ? const Value.absent() : Value(usuId),
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
          {int presMedicId,
          int unidMedId,
          int statusId,
          int usuId,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime deletedAt}) =>
      PresMedicUniMed(
        presMedicId: presMedicId ?? this.presMedicId,
        unidMedId: unidMedId ?? this.unidMedId,
        statusId: statusId ?? this.statusId,
        usuId: usuId ?? this.usuId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('PresMedicUniMed(')
          ..write('presMedicId: $presMedicId, ')
          ..write('unidMedId: $unidMedId, ')
          ..write('statusId: $statusId, ')
          ..write('usuId: $usuId, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      presMedicId.hashCode,
      $mrjc(
          unidMedId.hashCode,
          $mrjc(
              statusId.hashCode,
              $mrjc(
                  usuId.hashCode,
                  $mrjc(createdAt.hashCode,
                      $mrjc(updatedAt.hashCode, deletedAt.hashCode)))))));
  @override
  bool operator ==(other) =>
      identical(this, other) ||
      (other is PresMedicUniMed &&
          other.presMedicId == presMedicId &&
          other.unidMedId == unidMedId &&
          other.statusId == statusId &&
          other.usuId == usuId &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.deletedAt == deletedAt);
}

class TablePresMedicUniMedCompanion extends UpdateCompanion<PresMedicUniMed> {
  final Value<int> presMedicId;
  final Value<int> unidMedId;
  final Value<int> statusId;
  final Value<int> usuId;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const TablePresMedicUniMedCompanion({
    this.presMedicId = const Value.absent(),
    this.unidMedId = const Value.absent(),
    this.statusId = const Value.absent(),
    this.usuId = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  TablePresMedicUniMedCompanion copyWith(
      {Value<int> presMedicId,
      Value<int> unidMedId,
      Value<int> statusId,
      Value<int> usuId,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> deletedAt}) {
    return TablePresMedicUniMedCompanion(
      presMedicId: presMedicId ?? this.presMedicId,
      unidMedId: unidMedId ?? this.unidMedId,
      statusId: statusId ?? this.statusId,
      usuId: usuId ?? this.usuId,
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
  final VerificationMeta _presMedicIdMeta =
      const VerificationMeta('presMedicId');
  GeneratedIntColumn _presMedicId;
  @override
  GeneratedIntColumn get presMedicId =>
      _presMedicId ??= _constructPresMedicId();
  GeneratedIntColumn _constructPresMedicId() {
    return GeneratedIntColumn('pres_medic_id', $tableName, false,
        $customConstraints: 'REFERENCES Presentaciones(presMedicId)');
  }

  final VerificationMeta _unidMedIdMeta = const VerificationMeta('unidMedId');
  GeneratedIntColumn _unidMedId;
  @override
  GeneratedIntColumn get unidMedId => _unidMedId ??= _constructUnidMedId();
  GeneratedIntColumn _constructUnidMedId() {
    return GeneratedIntColumn('unid_med_id', $tableName, false,
        $customConstraints: 'REFERENCES UnidMed(unidMedId)');
  }

  final VerificationMeta _statusIdMeta = const VerificationMeta('statusId');
  GeneratedIntColumn _statusId;
  @override
  GeneratedIntColumn get statusId => _statusId ??= _constructStatusId();
  GeneratedIntColumn _constructStatusId() {
    return GeneratedIntColumn('status_id', $tableName, false,
        $customConstraints: 'REFERENCES Ficha(ficId)');
  }

  final VerificationMeta _usuIdMeta = const VerificationMeta('usuId');
  GeneratedIntColumn _usuId;
  @override
  GeneratedIntColumn get usuId => _usuId ??= _constructUsuId();
  GeneratedIntColumn _constructUsuId() {
    return GeneratedIntColumn('usu_id', $tableName, false,
        $customConstraints: 'REFERENCES Usuarios(usuId)');
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
        presMedicId,
        unidMedId,
        statusId,
        usuId,
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
    if (d.presMedicId.present) {
      context.handle(_presMedicIdMeta,
          presMedicId.isAcceptableValue(d.presMedicId.value, _presMedicIdMeta));
    } else if (presMedicId.isRequired && isInserting) {
      context.missing(_presMedicIdMeta);
    }
    if (d.unidMedId.present) {
      context.handle(_unidMedIdMeta,
          unidMedId.isAcceptableValue(d.unidMedId.value, _unidMedIdMeta));
    } else if (unidMedId.isRequired && isInserting) {
      context.missing(_unidMedIdMeta);
    }
    if (d.statusId.present) {
      context.handle(_statusIdMeta,
          statusId.isAcceptableValue(d.statusId.value, _statusIdMeta));
    } else if (statusId.isRequired && isInserting) {
      context.missing(_statusIdMeta);
    }
    if (d.usuId.present) {
      context.handle(
          _usuIdMeta, usuId.isAcceptableValue(d.usuId.value, _usuIdMeta));
    } else if (usuId.isRequired && isInserting) {
      context.missing(_usuIdMeta);
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
    if (d.presMedicId.present) {
      map['pres_medic_id'] = Variable<int, IntType>(d.presMedicId.value);
    }
    if (d.unidMedId.present) {
      map['unid_med_id'] = Variable<int, IntType>(d.unidMedId.value);
    }
    if (d.statusId.present) {
      map['status_id'] = Variable<int, IntType>(d.statusId.value);
    }
    if (d.usuId.present) {
      map['usu_id'] = Variable<int, IntType>(d.usuId.value);
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
  $TableUsuariosTable get tableUsuarios => db.tableUsuarios;
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
