import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@DataClassName('Usuario')
class Usuarios extends Table {

  IntColumn  get id       => integer().autoIncrement()();
  TextColumn get nombre   => text()();
  TextColumn get password => text()();
  IntColumn  get active   => integer()(); 
}  

@DataClassName('Ficha') // Ficha
class TableFicha extends Table {

    IntColumn  get FicId => integer().autoIncrement()(); // Id. de Ficha
    TextColumn get FicNom => text()(); // Descripción de Ficha
    IntColumn  get FicFlagHab => integer()(); // Ficha Habilitada
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FichaVer') // Versiones de las fichas
class TableFichaVer extends Table {

    IntColumn  get FicId => integer().customConstraint('REFERENCES Ficha(FicId)')(); // Id. de ficha
    IntColumn  get FicVerId => integer().autoIncrement()(); // Número de versión
    TextColumn get FicVerSts => text()(); // Estatus de la versión
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FichaVerItems') // Items de las fichas
class TableFichaVerItems extends Table {

    IntColumn  get FicId => integer().customConstraint('REFERENCES Ficha(FicId)')(); // Id. de ficha
    IntColumn  get FicVerId => integer().customConstraint('REFERENCES FichaVer(FicVerId)')(); // Número de versión
    IntColumn  get FicVerItemsId => integer().autoIncrement()(); // Código del Item
    TextColumn get FicVerItemsNom => text()(); // Nombre del Item
    IntColumn  get FicVerItemsOrd => integer()(); // Orden del Item
    IntColumn  get FicVerItemsFlgEvolu => integer()(); // Es evolutivo 
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('PregFrmDina') // Preguntas dinámicas
class TablePregFrmDina extends Table {

    IntColumn  get PregFrmDinaId => integer().autoIncrement()(); // Código de pregunta
    TextColumn get PregFrmDinaDesc => text()(); // Descripción de la pregunta
    TextColumn get PregFrmDinaTitulo => text()(); // Título de la pregunta
    IntColumn  get PregFrmDinaTipPreg => integer()(); // Tipo de pregunta
    IntColumn  get PregFrmDinaDefaNomTabDinId => integer()(); // Código de tabla dinámica sobre la que va a preguntar
    IntColumn  get PregFrmDinaValMin => integer()(); // Valor mínimo
    IntColumn  get PregFrmDinaValMax => integer()(); // Valor máximo
    TextColumn get PregFrmDinaTipDefa => text()(); // Tipo de valor por defecto
    TextColumn get PregFrmDinaValDefa => text()(); // Valor por defecto Entero, Caracter, fecha, numero (9,2), numero(9,3)
    TextColumn get PregFrmDinaDefaValMemo => text()(); //Valor por defecto Memo
    IntColumn  get PregFrmDinaDefaTabDinValId => integer()(); // Valor por defecto de la pregunta, aplica a Combo
    TextColumn get PregFrmDinaSufijo => text()(); // Sufijo de la pregunta
    TextColumn get PregFrmDinaHelp => text()(); // Ayuda de la pregunta
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FichaVerPreg') // Preguntas de los ítems
class TableFichaVerPreg extends Table {

    IntColumn  get FicId => integer().customConstraint('REFERENCES Ficha(FicId)')(); // Id. de ficha
    IntColumn  get FicVerId => integer().customConstraint('REFERENCES FichaVer(FicVerId)')(); // Número de versión
    IntColumn  get FicVerItemsId => integer().customConstraint('REFERENCES FichaVerItems(FicVerItemsId)')(); // Código del Item
    IntColumn  get PregFrmDinaId => integer().customConstraint('REFERENCES PregFrmDina(PregFrmDinaId)')();  // Código de pregunta
    IntColumn  get PregFrmDinaOrd => integer()(); // Orden de la pregunta
    IntColumn  get FichaVerPregFlgObli => integer()(); // Pregunta Obligatoria
    IntColumn  get FichaVerCondPregFrmDinaId => integer()(); // Pregunta que la condiciona
    TextColumn get FichaVerPregSex => text()(); // Sexo al que aplica la pregunta
    TextColumn get FichaVerPregFlgSexObl => text()(); // Obligatoria para ese sexo
    IntColumn  get FichaVerPregEdadMin => integer()(); // Edad mínima
    IntColumn  get FichaVerPregEdadMax => integer()(); // Edad máxima
    TextColumn get FichaVerPregEdadEd => text()(); // Unidad de la edad mínima y máxima
    IntColumn  get FichaVerPregFlgEdadObl => integer()(); // Obligatoria para el rango de edades
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FichaVerItemsPregTabDin') // Valores que condicionan preguntas
class TableFichaVerItemsPregTabDin extends Table {

    IntColumn  get FicId => integer().customConstraint('REFERENCES Ficha(FicId)')(); // Id. de ficha
    IntColumn  get FicVerId => integer().customConstraint('REFERENCES FichaVer(FicVerId)')(); // Número de versión
    IntColumn  get FicVerItemsId => integer().customConstraint('REFERENCES FichaVerItems(FicVerItemsId)')(); // Código del Item
    IntColumn  get PregFrmDinaId => integer().customConstraint('REFERENCES PregFrmDina(PregFrmDinaId)')(); // Código de pregunta
    IntColumn  get FichaVerTabDinId => integer().autoIncrement()(); // Código de la tabla dinámica
    IntColumn  get FichaVerTabDinValId => integer()(); // Código de la respuesta de Tabla Dinámica
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('OpcFich') // Opciones
class TableOpcFich extends Table {

    TextColumn get OpcFichCod => text()(); // Código de opción   (PRIMARY KEY NOT NULL)
    TextColumn get OpcFichDesc => text()(); // Descripción de opción
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();

    @override
    Set<Column> get primaryKey => {OpcFichCod};
}

@DataClassName('FichaOpc') // Opciones de ficha
class TableFichaOpc extends Table {

    IntColumn  get FicId => integer().customConstraint('REFERENCES Ficha(FicId)')(); // Id. de ficha
    TextColumn get OpcFichCod => text().customConstraint('REFERENCES OpcFich(OpcFichCod)')(); // Código de opción
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('NomTabDin') // Tablas dinamicas
class TableNomTabDin extends Table {

    IntColumn  get NomTabDinId => integer().autoIncrement()(); // Código de Tabla dinámica
    TextColumn get NomTabDinNom => text()(); // Nombre de tabla dinámica
    IntColumn  get NomTabDinFlgAct => integer()(); // Tabla dinámica esta activa
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('TabDinVal') // Valores de la tabla dinámica
class TableTabDinVal extends Table {

    IntColumn  get NomTabDinId => integer().customConstraint('REFERENCES NomTabDin(NomTabDinId)')(); // Código de Tabla dinámica
    IntColumn  get TabDinValId => integer().autoIncrement()(); // Código del valor de la tabla dinámica
    IntColumn  get TabDinValFlgAct => integer()(); // Valor de la tabla dinámica esta activo
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('TabDinValCond') // Valores de la tabla dinámica
class TableTabDinValCond extends Table {

    IntColumn  get TabDinValCondTDId => integer().customConstraint('REFERENCES NomTabDin(NomTabDinId)')(); // Código de Tabla dinámica que condiciona
    IntColumn  get TabDinValCondTDValId => integer().customConstraint('REFERENCES TabDinVal(TabDinValId)')(); // Código del valor de la tabla dinámica que condiciona
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Usuarios') // Usuarios
class TableUsuarios extends Table {

    IntColumn  get UsuId => integer().autoIncrement()(); // Codigo de usuario
    TextColumn get UsuNom => text()(); // Primer Nombre del usuario
    TextColumn get UsuNom2 => text()(); // Segundo Nombre del usuario
    TextColumn get UsuApe => text()(); // Primer Apellido del usuario
    TextColumn get UsuApe2 => text()(); // Segundo Apellido del usuario
    TextColumn get UsuNick => text()(); // Nick del usuario
    TextColumn get UsuKeyPass => text()(); // Clave para desencriptar
    TextColumn get UsuHashPass => text()(); // Hash de la contraseña
    TextColumn get UsuPassAlgoritmo => text()(); // Algoritmo de la contraseña
    IntColumn  get UsuFlgAct => integer()(); // Usuario activo
    IntColumn  get UsuFlgGenerico => integer()(); // Usuario genérico
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('PerfSis') // Perfiles del usuario por sistema
class TablePerfSis extends Table {

    IntColumn  get PerfSisId => integer().autoIncrement()(); // Código de perfil
    TextColumn get PerfSisDesc => text()(); // Descripcion del perfil
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('SisUsuPerf') // Perfiles del usuario por sistema
class TableSisUsuPerf extends Table {

    IntColumn  get SisId => integer()(); // Código de sistema
    IntColumn  get PerfSisId => integer().customConstraint('REFERENCES PerfSis(PerfSisId)')();  // Código de perfil
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')(); // Código de Usuario
    IntColumn  get SisUsuPerfHab => integer()(); // Perfil Habilitado
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Roles') // Roles
class TableRoles extends Table {

    IntColumn  get RolId => integer().autoIncrement()(); // Código de rol
    TextColumn get RolNom => text()(); // nombre de rol
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('RRHH') // Recursos Humanos
class TableRRHH extends Table {

    IntColumn  get RRHHId => integer().autoIncrement()(); // Código de RRHH
    TextColumn get RRHHDesc => text()(); // Descripción del RRHH
    IntColumn  get RRHHFlgAct => integer()(); // El RRHH está activo
    TextColumn get RRHHPref => text()(); // Prefijo del RRHH 
    TextColumn get RRHHSuf => text()(); // Sufijo del RRHH
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('RRHHPers')
class TableRRHHPers extends Table {

    IntColumn  get RRHHId => integer()(); // Código de RRHH
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();  // Codigo de usuario
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('RRHHRol')
class TableRRHHRol extends Table {

    IntColumn  get RRHHId => integer()(); // Código RRHH
    TextColumn get RRHHRolFchIni => text()(); // Fecha RRHH
    IntColumn  get RolId => integer().customConstraint('REFERENCES Roles(RolId)')(); // Codigo Rol
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('TipActAsist') // Tipos de Actos Asistenciales
class TableTipActAsist extends Table {

    IntColumn  get TipActAsistId => integer().autoIncrement()(); // Codigo de tipo de acto asistencial
    TextColumn get TipActAsistDesc => text()(); // Descripcion de tipo de acto asistencial
    IntColumn  get TipActAsistFlgSeIndica => integer()(); // Se puede indicar
    IntColumn  get TipActAsistFlgParacl => integer()(); // Es paraclinica
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('UnidMed') // Unidades de medida
class TableUnidMed extends Table {

    IntColumn  get UnidMedId => integer().autoIncrement()(); // Codigo unidad de medida
    TextColumn get UnidMedDesc => text()(); // Descripcion de unidad de medida
    TextColumn get UnidMedAbrev => text()(); // Abreviacion de unidad de medida
    IntColumn  get UnidMedFlgHab => integer()(); // Habilitado
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('ViaAdmMedic') // Vias de administracion
class TableViaAdmMedic extends Table {

    IntColumn  get ViaAdmMedicId => integer().autoIncrement()(); // Codigo de via de administracion
    TextColumn get ViaAdmMedicDesc => text()(); // Descripcion de via de administracion
    TextColumn get ViaAdmMedicAbrev => text()(); // Abreviacion de via de administracion
    IntColumn  get ViaAdmMedicFlgHab => integer()(); // Habilitada
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('ActAsist') // Actos asistenciales
class TableActAsist extends Table {

    IntColumn  get ActAsistId => integer().autoIncrement().customConstraint('REFERENCES TipActAsist(TipActAsistId)')(); // Codigo de acto asistencial
    TextColumn get ActAsistDesc => text()(); // Descripcion del acto asistencial
    TextColumn get ActAsistAbrev => text()(); // Abreviación de acto asistencial
    IntColumn  get TipActAsistId => integer()(); // Código de tipo de acto asistencial
    IntColumn  get ActAsistFlgHab => integer()(); // Habilitado
    IntColumn  get ActAsistTipDat => integer()(); // Tipo de datos del resultado
    IntColumn  get ActAsistValMin => integer()(); // Valor mínimo
    IntColumn  get ActAsistValMax => integer()(); // Valor máximo
    IntColumn  get UnidMedId => integer().customConstraint('REFERENCES UnidMed(UnidMedId)')(); // Código unidad de medida
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('AtnClin') // Antecedentes clínicos
class TableAtnClin extends Table {

    IntColumn  get AntClinId => integer().autoIncrement()(); // Código de antecedente
    TextColumn get AntClinDesc => text()(); // Descripción de antecedente
    IntColumn  get AntClinFlgHab => integer()(); // Habilitado
    IntColumn  get TipAntClinId => integer()(); // Código de tipo de antecedente
    IntColumn  get AntClinAlert => integer()(); // Alertar
    IntColumn  get AntClinAlertDsc => integer()(); // Texto del alerta
    TextColumn get AntClinSexo => text()(); // Sexo del antecedente
    IntColumn  get AntClinFlgFactRiesg => integer()(); // Es factor de riesgo
    IntColumn  get AntCliFlgHabRep => integer()(); // Puede repetirse
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Drogas') // Drogas
class TableDrogas extends Table {

    IntColumn  get DroId => integer().autoIncrement()(); // Código de droga
    TextColumn get DroDesc => text()(); // Descripción de droga 
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Farmacos') // Farmacos
class TableFarmacos extends Table {

    IntColumn  get FarId => integer().autoIncrement()(); // Código de farmaco
    TextColumn get FarNom => text()(); // Nombre del farmaco
    IntColumn  get FarFlgHab => integer()(); // Farmaco habilitado
    TextColumn get FarDrogComp => text()(); // Composicion
    IntColumn  get FarPresMedicId => integer()(); // Codigo de la presentacion
    IntColumn  get FarDosCnt => integer()(); // Cantidad de la presentacion
    IntColumn  get FarDosUnidMedId => integer()(); // Codigo de unidad de la presentacion
    IntColumn  get FarFlgEsSuero => integer()(); // Es suero
    IntColumn  get FarFlgEsAdit => integer()(); // Es aditivo 
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FarVia') // Vias de administración del fármaco
class TableFarVia extends Table {

    IntColumn  get FarId => integer().autoIncrement()(); // Código del fármaco
    IntColumn  get ViaAdmMedicId => integer().customConstraint('REFERENCES ViaAdmMedic(ViaAdmMedicId)')(); // Código de la vía de administración
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Materiales') // Materiales
class TableMateriales extends Table {

    IntColumn  get MatId => integer().autoIncrement()(); // Codigo de material
    TextColumn get MatNom => text()(); // Nombre de material
    IntColumn  get MatBajFlg => integer()(); // De baja
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('MatUniMed') // Unidades de medida de los materiales
class TableMatUniMed extends Table {

    IntColumn  get MatId => integer().customConstraint('REFERENCES Materiales(MatId)')(); // Codigo de material
    IntColumn  get MatUnidMedId => integer()(); // Codigo de unidad de medida del material
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Presentaciones') // Presentaciones
class TablePresentaciones extends Table {

    IntColumn  get PresMedicId => integer().autoIncrement()(); // codigo de presentacion
    TextColumn get PresMedicNom => text()(); // Nombre de presentacion
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('PresMedicVia') // Vias de administración de presentacion
class TablePresMedicVia extends Table {

    IntColumn  get PresMedicId => integer().customConstraint('REFERENCES Presentaciones(PresMedicId)')(); // Codigo de presentacion
    IntColumn  get ViaAdmMedicId => integer().customConstraint('REFERENCES ViaAdmMedic(ViaAdmMedicId)')(); // Codigo de via de administracion
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('PresMedicUniMed') // Unidades de medida de la presentacion
class TablePresMedicUniMed extends Table {

    IntColumn  get PresMedicId => integer().customConstraint('REFERENCES Presentaciones(PresMedicId)')(); // Código de la presentacion
    IntColumn  get UnidMedId => integer().customConstraint('REFERENCES UnidMed(UnidMedId)')(); // Codigo de unidad de medida
    //Columnas AppMovil
    IntColumn  get StatusId => integer().customConstraint('REFERENCES Ficha(FicId)')();
    IntColumn  get UsuId => integer().customConstraint('REFERENCES Usuarios(UsuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}


@UseMoor(tables: [Usuarios, TableFicha, TableFichaVer, TableFichaVerItems, TablePregFrmDina, TableFichaVerPreg, TableFichaVerItemsPregTabDin, TableOpcFich, TableFichaOpc, TableNomTabDin, TableTabDinVal, TableTabDinValCond, TableUsuarios, TablePerfSis, TableSisUsuPerf, TableRoles, TableRRHH, TableRRHHPers, TableRRHHRol, TableTipActAsist, TableUnidMed, TableViaAdmMedic, TableActAsist, TableAtnClin, TableDrogas, TableFarmacos, TableFarVia, TableMateriales, TableMatUniMed, TablePresentaciones, TablePresMedicVia, TablePresMedicUniMed ], daos: [UsuarioDao])

class GeoDatabase extends _$GeoDatabase{
  
  GeoDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path : 'geo_database.sqlite' , logStatements: true));
  
  @override
  int get schemaVersion => 1; 

}


@UseDao(tables: [Usuarios])

class UsuarioDao extends DatabaseAccessor<GeoDatabase> with _$UsuarioDaoMixin {

  final GeoDatabase db;

  UsuarioDao(this.db) : super(db); 

  Future<List<Usuario>> allUsusarios() => select(usuarios).get();
  
  Stream<List<Usuario>> watchAllUsuario() => select(usuarios).watch();

  Future insUsuario(Usuario usuario) => into(usuarios).insert(usuario);

  Future updateUsuario(Usuario usuario) => update(usuarios).replace(usuario);

  Future deleteUsuario(Usuario usuario) => delete(usuarios).delete(usuario);

  Future <List<Usuario>> sortEntriesAlphabetically() {
    return (select(usuarios)..orderBy([(t) => OrderingTerm(expression: t.nombre)])).get();

  }
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////
///DAOS////////////////////////////////////////////////////////////////////////////////////////////////////


@UseDao(tables: [TableFicha])

class DaoFicha extends DatabaseAccessor<GeoDatabase> with _$DaoFichaMixin {
    
    final GeoDatabase db;
    
    DaoFicha(this.db) : super(db);

    Future<List<Ficha>> allFicha() => select(tableFicha).get();

    Stream<List<Ficha>> watchFicha() => select(tableFicha).watch();

    Future insFicha(Ficha ficha) => into(tableFicha).insert(ficha);

    Future updFicha(Ficha ficha) => update(tableFicha).replace(ficha);

    Future delFicha(Ficha ficha) => delete(tableFicha).delete(ficha);

}

@UseDao(tables: [TableFichaVer])

class DaoFichaVer extends DatabaseAccessor<GeoDatabase> with _$DaoFichaVerMixin {
    
    final GeoDatabase db;
    
    DaoFichaVer(this.db) : super(db);

    Future<List<FichaVer>> allFichaVer() => select(tableFichaVer).get();

    Stream<List<FichaVer>> watchFichaVer() => select(tableFichaVer).watch();

    Future insFichaVer(FichaVer fichaVer) => into(tableFichaVer).insert(fichaVer);

    Future updFichaVer(FichaVer fichaVer) => update(tableFichaVer).replace(fichaVer);

    Future delFichaVer(FichaVer fichaVer) => delete(tableFichaVer).delete(fichaVer);

}

@UseDao(tables: [TableFichaVerItems])

class DaoFichaVerItems extends DatabaseAccessor<GeoDatabase> with _$DaoFichaVerItemsMixin {
    
    final GeoDatabase db;
    
    DaoFichaVerItems(this.db) : super(db);

    Future<List<FichaVerItems>> allFichaVerItems() => select(tableFichaVerItems).get();

    Stream<List<FichaVerItems>> watchFichaVerItems() => select(tableFichaVerItems).watch();

    Future insFichaVerItems(FichaVerItems fichaVerItems) => into(tableFichaVerItems).insert(fichaVerItems);

    Future updFichaVerItems(FichaVerItems fichaVerItems) => update(tableFichaVerItems).replace(fichaVerItems);

    Future delFichaVerItems(FichaVerItems fichaVerItems) => delete(tableFichaVerItems).delete(fichaVerItems);

}

@UseDao(tables: [TablePregFrmDina])

class DaoPregFrmDina extends DatabaseAccessor<GeoDatabase> with _$DaoPregFrmDinaMixin {
    
    final GeoDatabase db;
    
    DaoPregFrmDina(this.db) : super(db);

    Future<List<PregFrmDina>> allPregFrmDina() => select(tablePregFrmDina).get();

    Stream<List<PregFrmDina>> watchPregFrmDina() => select(tablePregFrmDina).watch();

    Future insPregFrmDina(PregFrmDina pregFrmDina) => into(tablePregFrmDina).insert(pregFrmDina);

    Future updPregFrmDina(PregFrmDina pregFrmDina) => update(tablePregFrmDina).replace(pregFrmDina);

    Future delPregFrmDina(PregFrmDina pregFrmDina) => delete(tablePregFrmDina).delete(pregFrmDina);

}

@UseDao(tables: [TableFichaVerPreg])

class DaoFichaVerPreg extends DatabaseAccessor<GeoDatabase> with _$DaoFichaVerPregMixin {
    
    final GeoDatabase db;
    
    DaoFichaVerPreg(this.db) : super(db);

    Future<List<FichaVerPreg>> allFichaVerPreg() => select(tableFichaVerPreg).get();

    Stream<List<FichaVerPreg>> watchFichaVerPreg() => select(tableFichaVerPreg).watch();

    Future insFichaVerPreg(FichaVerPreg fichaVerPreg) => into(tableFichaVerPreg).insert(fichaVerPreg);

    Future updFichaVerPreg(FichaVerPreg fichaVerPreg) => update(tableFichaVerPreg).replace(fichaVerPreg);

    Future delFichaVerPreg(FichaVerPreg fichaVerPreg) => delete(tableFichaVerPreg).delete(fichaVerPreg);

}

@UseDao(tables: [TableFichaVerItemsPregTabDin])

class DaoFichaVerItemsPregTabDin extends DatabaseAccessor<GeoDatabase> with _$DaoFichaVerItemsPregTabDinMixin {
    
    final GeoDatabase db;
    
    DaoFichaVerItemsPregTabDin(this.db) : super(db);

    Future<List<FichaVerItemsPregTabDin>> allFichaVerItemsPregTabDin() => select(tableFichaVerItemsPregTabDin).get();

    Stream<List<FichaVerItemsPregTabDin>> watchFichaVerItemsPregTabDin() => select(tableFichaVerItemsPregTabDin).watch();

    Future insFichaVerItemsPregTabDin(FichaVerItemsPregTabDin fichaVerItemsPregTabDin) => into(tableFichaVerItemsPregTabDin).insert(fichaVerItemsPregTabDin);

    Future updFichaVerItemsPregTabDin(FichaVerItemsPregTabDin fichaVerItemsPregTabDin) => update(tableFichaVerItemsPregTabDin).replace(fichaVerItemsPregTabDin);

    Future delFichaVerItemsPregTabDin(FichaVerItemsPregTabDin fichaVerItemsPregTabDin) => delete(tableFichaVerItemsPregTabDin).delete(fichaVerItemsPregTabDin);

}

@UseDao(tables: [TableOpcFich])

class DaoOpcFich extends DatabaseAccessor<GeoDatabase> with _$DaoOpcFichMixin {
    
    final GeoDatabase db;
    
    DaoOpcFich(this.db) : super(db);

    Future<List<OpcFich>> allOpcFich() => select(tableOpcFich).get();

    Stream<List<OpcFich>> watchOpcFich() => select(tableOpcFich).watch();

    Future insOpcFich(OpcFich opcFich) => into(tableOpcFich).insert(opcFich);

    Future updOpcFich(OpcFich opcFich) => update(tableOpcFich).replace(opcFich);

    Future delOpcFich(OpcFich opcFich) => delete(tableOpcFich).delete(opcFich);
}

@UseDao(tables: [TableFichaOpc])

class DaoFichaOpc extends DatabaseAccessor<GeoDatabase> with _$DaoFichaOpcMixin {
    
    final GeoDatabase db;
    
    DaoFichaOpc(this.db) : super(db);

    Future<List<FichaOpc>> allFichaOpc() => select(tableFichaOpc).get();

    Stream<List<FichaOpc>> watchFichaOpc() => select(tableFichaOpc).watch();

    Future insFichaOpc(FichaOpc fichaOpc) => into(tableFichaOpc).insert(fichaOpc);

    Future updFichaOpc(FichaOpc fichaOpc) => update(tableFichaOpc).replace(fichaOpc);

    Future delFichaOpc(FichaOpc fichaOpc) => delete(tableFichaOpc).delete(fichaOpc);
}

@UseDao(tables: [TableNomTabDin])

class DaoNomTabDin extends DatabaseAccessor<GeoDatabase> with _$DaoNomTabDinMixin {
    
    final GeoDatabase db;
    
    DaoNomTabDin(this.db) : super(db);

    Future<List<NomTabDin>> allNomTabDin() => select(tableNomTabDin).get();

    Stream<List<NomTabDin>> watchNomTabDin() => select(tableNomTabDin).watch();

    Future insNomTabDin(NomTabDin nomTabDin) => into(tableNomTabDin).insert(nomTabDin);

    Future updNomTabDin(NomTabDin nomTabDin) => update(tableNomTabDin).replace(nomTabDin);

    Future delNomTabDin(NomTabDin nomTabDin) => delete(tableNomTabDin).delete(nomTabDin);

}

@UseDao(tables: [TableTabDinVal])

class DaoTabDinVal extends DatabaseAccessor<GeoDatabase> with _$DaoTabDinValMixin {
    
    final GeoDatabase db;
    
    DaoTabDinVal(this.db) : super(db);

    Future<List<TabDinVal>> allTabDinVal() => select(tableTabDinVal).get();

    Stream<List<TabDinVal>> watchTabDinVal() => select(tableTabDinVal).watch();

    Future insTabDinVal(TabDinVal tabDinVal) => into(tableTabDinVal).insert(tabDinVal);

    Future updTabDinVal(TabDinVal tabDinVal) => update(tableTabDinVal).replace(tabDinVal);

    Future delTabDinVal(TabDinVal tabDinVal) => delete(tableTabDinVal).delete(tabDinVal);

}

@UseDao(tables: [TableTabDinValCond])

class DaoTabDinValCond extends DatabaseAccessor<GeoDatabase> with _$DaoTabDinValCondMixin {
    
    final GeoDatabase db;
    
    DaoTabDinValCond(this.db) : super(db);

    Future<List<TabDinValCond>> allTabDinValCond() => select(tableTabDinValCond).get();

    Stream<List<TabDinValCond>> watchTabDinValCond() => select(tableTabDinValCond).watch();

    Future insTabDinValCond(TabDinValCond tabDinValCond) => into(tableTabDinValCond).insert(tabDinValCond);

    Future updTabDinValCond(TabDinValCond tabDinValCond) => update(tableTabDinValCond).replace(tabDinValCond);

    Future delTabDinValCond(TabDinValCond tabDinValCond) => delete(tableTabDinValCond).delete(tabDinValCond);
}


@UseDao(tables: [TablePerfSis])

class DaoPerfSis extends DatabaseAccessor<GeoDatabase> with _$DaoPerfSisMixin {
    
    final GeoDatabase db;
    
    DaoPerfSis(this.db) : super(db);

    Future<List<PerfSis>> allPerfSis() => select(tablePerfSis).get();

    Stream<List<PerfSis>> watchPerfSis() => select(tablePerfSis).watch();

    Future insPerfSis(PerfSis perfSis) => into(tablePerfSis).insert(perfSis);

    Future updPerfSis(PerfSis perfSis) => update(tablePerfSis).replace(perfSis);

    Future delPerfSis(PerfSis perfSis) => delete(tablePerfSis).delete(perfSis);
}

@UseDao(tables: [TableSisUsuPerf])

class DaoSisUsuPerf extends DatabaseAccessor<GeoDatabase> with _$DaoSisUsuPerfMixin {
    
    final GeoDatabase db;
    
    DaoSisUsuPerf(this.db) : super(db);

    Future<List<SisUsuPerf>> allSisUsuPerf() => select(tableSisUsuPerf).get();

    Stream<List<SisUsuPerf>> watchSisUsuPerf() => select(tableSisUsuPerf).watch();

    Future insSisUsuPerf(SisUsuPerf sisUsuPerf) => into(tableSisUsuPerf).insert(sisUsuPerf);

    Future updSisUsuPerf(SisUsuPerf sisUsuPerf) => update(tableSisUsuPerf).replace(sisUsuPerf);

    Future delSisUsuPerf(SisUsuPerf sisUsuPerf) => delete(tableSisUsuPerf).delete(sisUsuPerf);

}

@UseDao(tables: [TableRoles])

class DaoRoles extends DatabaseAccessor<GeoDatabase> with _$DaoRolesMixin {
    
    final GeoDatabase db;
    
    DaoRoles(this.db) : super(db);

    Future<List<Roles>> allRoles() => select(tableRoles).get();

    Stream<List<Roles>> watchRoles() => select(tableRoles).watch();

    Future insRoles(Roles roles) => into(tableRoles).insert(roles);

    Future updRoles(Roles roles) => update(tableRoles).replace(roles);

    Future delRoles(Roles roles) => delete(tableRoles).delete(roles);
}

@UseDao(tables: [TableRRHH])

class DaoRRHH extends DatabaseAccessor<GeoDatabase> with _$DaoRRHHMixin {
    
    final GeoDatabase db;
    
    DaoRRHH(this.db) : super(db);

    Future<List<RRHH>> allRRHH() => select(tableRRHH).get();

    Stream<List<RRHH>> watchRRHH() => select(tableRRHH).watch();

    Future insRRHH(RRHH rRHH) => into(tableRRHH).insert(rRHH);

    Future updRRHH(RRHH rRHH) => update(tableRRHH).replace(rRHH);

    Future delRRHH(RRHH rRHH) => delete(tableRRHH).delete(rRHH);

}

@UseDao(tables: [TableRRHHPers])

class DaoRRHHPers extends DatabaseAccessor<GeoDatabase> with _$DaoRRHHPersMixin {
    
    final GeoDatabase db;
    
    DaoRRHHPers(this.db) : super(db);

    Future<List<RRHHPers>> allRRHHPers() => select(tableRRHHPers).get();

    Stream<List<RRHHPers>> watchRRHHPers() => select(tableRRHHPers).watch();

    Future insRRHHPers(RRHHPers rRHHPers) => into(tableRRHHPers).insert(rRHHPers);

    Future updRRHHPers(RRHHPers rRHHPers) => update(tableRRHHPers).replace(rRHHPers);

    Future delRRHHPers(RRHHPers rRHHPers) => delete(tableRRHHPers).delete(rRHHPers);
}

@UseDao(tables: [TableRRHHRol])

class DaoRRHHRol extends DatabaseAccessor<GeoDatabase> with _$DaoRRHHRolMixin {
    
    final GeoDatabase db;
    
    DaoRRHHRol(this.db) : super(db);

    Future<List<RRHHRol>> allRRHHRol() => select(tableRRHHRol).get();

    Stream<List<RRHHRol>> watchRRHHRol() => select(tableRRHHRol).watch();

    Future insRRHHRol(RRHHRol rRHHRol) => into(tableRRHHRol).insert(rRHHRol);

    Future updRRHHRol(RRHHRol rRHHRol) => update(tableRRHHRol).replace(rRHHRol);

    Future delRRHHRol(RRHHRol rRHHRol) => delete(tableRRHHRol).delete(rRHHRol);

}

@UseDao(tables: [TableTipActAsist])

class DaoTipActAsist extends DatabaseAccessor<GeoDatabase> with _$DaoTipActAsistMixin {
    
    final GeoDatabase db;
    
    DaoTipActAsist(this.db) : super(db);

    Future<List<TipActAsist>> allTipActAsist() => select(tableTipActAsist).get();

    Stream<List<TipActAsist>> watchTipActAsist() => select(tableTipActAsist).watch();

    Future insTipActAsist(TipActAsist tipActAsist) => into(tableTipActAsist).insert(tipActAsist);

    Future updTipActAsist(TipActAsist tipActAsist) => update(tableTipActAsist).replace(tipActAsist);

    Future delTipActAsist(TipActAsist tipActAsist) => delete(tableTipActAsist).delete(tipActAsist);

}

@UseDao(tables: [TableUnidMed])

class DaoUnidMed extends DatabaseAccessor<GeoDatabase> with _$DaoUnidMedMixin {
    
    final GeoDatabase db;
    
    DaoUnidMed(this.db) : super(db);

    Future<List<UnidMed>> allUnidMed() => select(tableUnidMed).get();

    Stream<List<UnidMed>> watchUnidMed() => select(tableUnidMed).watch();

    Future insUnidMed(UnidMed unidMed) => into(tableUnidMed).insert(unidMed);

    Future updUnidMed(UnidMed unidMed) => update(tableUnidMed).replace(unidMed);

    Future delUnidMed(UnidMed unidMed) => delete(tableUnidMed).delete(unidMed);

}

@UseDao(tables: [TableViaAdmMedic])

class DaoViaAdmMedic extends DatabaseAccessor<GeoDatabase> with _$DaoViaAdmMedicMixin {
    
    final GeoDatabase db;
    
    DaoViaAdmMedic(this.db) : super(db);

    Future<List<ViaAdmMedic>> allViaAdmMedic() => select(tableViaAdmMedic).get();

    Stream<List<ViaAdmMedic>> watchViaAdmMedic() => select(tableViaAdmMedic).watch();

    Future insViaAdmMedic(ViaAdmMedic viaAdmMedic) => into(tableViaAdmMedic).insert(viaAdmMedic);

    Future updViaAdmMedic(ViaAdmMedic viaAdmMedic) => update(tableViaAdmMedic).replace(viaAdmMedic);

    Future delViaAdmMedic(ViaAdmMedic viaAdmMedic) => delete(tableViaAdmMedic).delete(viaAdmMedic);

}

@UseDao(tables: [TableActAsist])

class DaoActAsist extends DatabaseAccessor<GeoDatabase> with _$DaoActAsistMixin {
    
    final GeoDatabase db;
    
    DaoActAsist(this.db) : super(db);

    Future<List<ActAsist>> allActAsist() => select(tableActAsist).get();

    Stream<List<ActAsist>> watchActAsist() => select(tableActAsist).watch();

    Future insActAsist(ActAsist actAsist) => into(tableActAsist).insert(actAsist);

    Future updActAsist(ActAsist actAsist) => update(tableActAsist).replace(actAsist);

    Future delActAsist(ActAsist actAsist) => delete(tableActAsist).delete(actAsist);

}

@UseDao(tables: [TableAtnClin])

class DaoAtnClin extends DatabaseAccessor<GeoDatabase> with _$DaoAtnClinMixin {
    
    final GeoDatabase db;
    
    DaoAtnClin(this.db) : super(db);

    Future<List<AtnClin>> allAtnClin() => select(tableAtnClin).get();

    Stream<List<AtnClin>> watchAtnClin() => select(tableAtnClin).watch();

    Future insAtnClin(AtnClin atnClin) => into(tableAtnClin).insert(atnClin);

    Future updAtnClin(AtnClin atnClin) => update(tableAtnClin).replace(atnClin);

    Future delAtnClin(AtnClin atnClin) => delete(tableAtnClin).delete(atnClin);

}

@UseDao(tables: [TableDrogas])

class DaoDrogas extends DatabaseAccessor<GeoDatabase> with _$DaoDrogasMixin {
    
    final GeoDatabase db;
    
    DaoDrogas(this.db) : super(db);

    Future<List<Drogas>> allDrogas() => select(tableDrogas).get();

    Stream<List<Drogas>> watchDrogas() => select(tableDrogas).watch();

    Future insDrogas(Drogas drogas) => into(tableDrogas).insert(drogas);

    Future updDrogas(Drogas drogas) => update(tableDrogas).replace(drogas);

    Future delDrogas(Drogas drogas) => delete(tableDrogas).delete(drogas);
}

@UseDao(tables: [TableFarmacos])

class DaoFarmacos extends DatabaseAccessor<GeoDatabase> with _$DaoFarmacosMixin {
    
    final GeoDatabase db;
    
    DaoFarmacos(this.db) : super(db);

    Future<List<Farmacos>> allFarmacos() => select(tableFarmacos).get();

    Stream<List<Farmacos>> watchFarmacos() => select(tableFarmacos).watch();

    Future insFarmacos(Farmacos farmacos) => into(tableFarmacos).insert(farmacos);

    Future updFarmacos(Farmacos farmacos) => update(tableFarmacos).replace(farmacos);

    Future delFarmacos(Farmacos farmacos) => delete(tableFarmacos).delete(farmacos);

}

@UseDao(tables: [TableFarVia])

class DaoFarVia extends DatabaseAccessor<GeoDatabase> with _$DaoFarViaMixin {
    
    final GeoDatabase db;
    
    DaoFarVia(this.db) : super(db);

    Future<List<FarVia>> allFarVia() => select(tableFarVia).get();

    Stream<List<FarVia>> watchFarVia() => select(tableFarVia).watch();

    Future insFarVia(FarVia farVia) => into(tableFarVia).insert(farVia);

    Future updFarVia(FarVia farVia) => update(tableFarVia).replace(farVia);

    Future delFarVia(FarVia farVia) => delete(tableFarVia).delete(farVia);
}

@UseDao(tables: [TableMateriales])

class DaoMateriales extends DatabaseAccessor<GeoDatabase> with _$DaoMaterialesMixin {
    
    final GeoDatabase db;
    
    DaoMateriales(this.db) : super(db);

    Future<List<Materiales>> allMateriales() => select(tableMateriales).get();

    Stream<List<Materiales>> watchMateriales() => select(tableMateriales).watch();

    Future insMateriales(Materiales materiales) => into(tableMateriales).insert(materiales);

    Future updMateriales(Materiales materiales) => update(tableMateriales).replace(materiales);

    Future delMateriales(Materiales materiales) => delete(tableMateriales).delete(materiales);

}

@UseDao(tables: [TableMatUniMed])

class DaoMatUniMed extends DatabaseAccessor<GeoDatabase> with _$DaoMatUniMedMixin {
    
    final GeoDatabase db;
    
    DaoMatUniMed(this.db) : super(db);

    Future<List<MatUniMed>> allMatUniMed() => select(tableMatUniMed).get();

    Stream<List<MatUniMed>> watchMatUniMed() => select(tableMatUniMed).watch();

    Future insMatUniMed(MatUniMed matUniMed) => into(tableMatUniMed).insert(matUniMed);

    Future updMatUniMed(MatUniMed matUniMed) => update(tableMatUniMed).replace(matUniMed);

    Future delMatUniMed(MatUniMed matUniMed) => delete(tableMatUniMed).delete(matUniMed);
}

@UseDao(tables: [TablePresentaciones])

class DaoPresentaciones extends DatabaseAccessor<GeoDatabase> with _$DaoPresentacionesMixin {
    
    final GeoDatabase db;
    
    DaoPresentaciones(this.db) : super(db);

    Future<List<Presentaciones>> allPresentaciones() => select(tablePresentaciones).get();

    Stream<List<Presentaciones>> watchPresentaciones() => select(tablePresentaciones).watch();

    Future insPresentaciones(Presentaciones presentaciones) => into(tablePresentaciones).insert(presentaciones);

    Future updPresentaciones(Presentaciones presentaciones) => update(tablePresentaciones).replace(presentaciones);

    Future delPresentaciones(Presentaciones presentaciones) => delete(tablePresentaciones).delete(presentaciones);
}

@UseDao(tables: [TablePresMedicVia])

class DaoPresMedicVia extends DatabaseAccessor<GeoDatabase> with _$DaoPresMedicViaMixin {
    
    final GeoDatabase db;
    
    DaoPresMedicVia(this.db) : super(db);

    Future<List<PresMedicVia>> allPresMedicVia() => select(tablePresMedicVia).get();

    Stream<List<PresMedicVia>> watchPresMedicVia() => select(tablePresMedicVia).watch();

    Future insPresMedicVia(PresMedicVia presMedicVia) => into(tablePresMedicVia).insert(presMedicVia);

    Future updPresMedicVia(PresMedicVia presMedicVia) => update(tablePresMedicVia).replace(presMedicVia);

    Future delPresMedicVia(PresMedicVia presMedicVia) => delete(tablePresMedicVia).delete(presMedicVia);
}

@UseDao(tables: [TablePresMedicUniMed])

class DaoPresMedicUniMed extends DatabaseAccessor<GeoDatabase> with _$DaoPresMedicUniMedMixin {
    
    final GeoDatabase db;
    
    DaoPresMedicUniMed(this.db) : super(db);

    Future<List<PresMedicUniMed>> allPresMedicUniMed() => select(tablePresMedicUniMed).get();

    Stream<List<PresMedicUniMed>> watchPresMedicUniMed() => select(tablePresMedicUniMed).watch();

    Future insPresMedicUniMed(PresMedicUniMed presMedicUniMed) => into(tablePresMedicUniMed).insert(presMedicUniMed);

    Future updPresMedicUniMed(PresMedicUniMed presMedicUniMed) => update(tablePresMedicUniMed).replace(presMedicUniMed);

    Future delPresMedicUniMed(PresMedicUniMed presMedicUniMed) => delete(tablePresMedicUniMed).delete(presMedicUniMed);
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

  Stream<List<TableCategoryWithCount>> categoriesWithCount() {
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
  Stream<List<TableEntryWithCategory>> watchEntriesInCategory(Category category) {
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
  Future updateEntry(TableTodoEntry entry) {
    return update(todos).replace(entry);
  }

  Future deleteEntry(TableTodoEntry entry) {
    return delete(todos).delete(entry);
  }

  Future<int> createCategory(String description) {
    return into(categories)
        .insert(CategoriesCompanion(description: Value(description)));
  }

  Future deleteCategory(TableCategory category) {
    return transaction((t) async {
      await _resetCategory(category.id);
      await delete(categories).delete(category);
    });
  }
}*/