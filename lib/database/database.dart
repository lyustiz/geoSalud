import 'package:moor_flutter/moor_flutter.dart';

part 'database.g.dart';

@DataClassName('Ficha') // Ficha
class TableFicha extends Table {

    IntColumn  get ficId => integer().autoIncrement()(); // Id. de Ficha
    TextColumn get ficNom => text()(); // Descripción de Ficha
    IntColumn  get ficFlagHab => integer()(); // Ficha Habilitada
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FichaVer') // Versiones de las fichas
class TableFichaVer extends Table {

    IntColumn  get ficId => integer().customConstraint('REFERENCES Ficha(ficId)')(); // Id. de ficha
    IntColumn  get ficVerId => integer().autoIncrement()(); // Número de versión
    TextColumn get ficVerSts => text()(); // Estatus de la versión
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FichaVerItems') // Items de las fichas
class TableFichaVerItems extends Table {

    IntColumn  get ficId => integer().customConstraint('REFERENCES Ficha(ficId)')(); // Id. de ficha
    IntColumn  get ficVerId => integer().customConstraint('REFERENCES FichaVer(ficVerId)')(); // Número de versión
    IntColumn  get ficVerItemsId => integer().autoIncrement()(); // Código del Item
    TextColumn get ficVerItemsNom => text()(); // Nombre del Item
    IntColumn  get ficVerItemsOrd => integer()(); // Orden del Item
    IntColumn  get ficVerItemsFlgEvolu => integer()(); // Es evolutivo 
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('PregFrmDina') // Preguntas dinámicas
class TablePregFrmDina extends Table {

    IntColumn  get pregFrmDinaId => integer().autoIncrement()(); // Código de pregunta
    TextColumn get pregFrmDinaDesc => text()(); // Descripción de la pregunta
    TextColumn get pregFrmDinaTitulo => text()(); // Título de la pregunta
    IntColumn  get pregFrmDinaTipPreg => integer()(); // Tipo de pregunta
    IntColumn  get pregFrmDinaDefaNomTabDinId => integer()(); // Código de tabla dinámica sobre la que va a preguntar
    IntColumn  get pregFrmDinaValMin => integer()(); // Valor mínimo
    IntColumn  get pregFrmDinaValMax => integer()(); // Valor máximo
    TextColumn get pregFrmDinaTipDefa => text()(); // Tipo de valor por defecto
    TextColumn get pregFrmDinaValDefa => text()(); // Valor por defecto Entero, Caracter, fecha, numero (9,2), numero(9,3)
    TextColumn get pregFrmDinaDefaValMemo => text()(); //Valor por defecto Memo
    IntColumn  get pregFrmDinaDefaTabDinValId => integer()(); // Valor por defecto de la pregunta, aplica a Combo
    TextColumn get pregFrmDinaSufijo => text()(); // Sufijo de la pregunta
    TextColumn get pregFrmDinaHelp => text()(); // Ayuda de la pregunta
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FichaVerPreg') // Preguntas de los ítems
class TableFichaVerPreg extends Table {

    IntColumn  get ficId => integer().customConstraint('REFERENCES Ficha(ficId)')(); // Id. de ficha
    IntColumn  get ficVerId => integer().customConstraint('REFERENCES FichaVer(ficVerId)')(); // Número de versión
    IntColumn  get ficVerItemsId => integer().customConstraint('REFERENCES FichaVerItems(ficVerItemsId)')(); // Código del Item
    IntColumn  get pregFrmDinaId => integer().customConstraint('REFERENCES PregFrmDina(pregFrmDinaId)')();  // Código de pregunta
    IntColumn  get pregFrmDinaOrd => integer()(); // Orden de la pregunta
    IntColumn  get fichaVerPregFlgObli => integer()(); // Pregunta Obligatoria
    IntColumn  get fichaVerCondPregFrmDinaId => integer()(); // Pregunta que la condiciona
    TextColumn get fichaVerPregSex => text()(); // Sexo al que aplica la pregunta
    TextColumn get fichaVerPregFlgSexObl => text()(); // Obligatoria para ese sexo
    IntColumn  get fichaVerPregEdadMin => integer()(); // Edad mínima
    IntColumn  get fichaVerPregEdadMax => integer()(); // Edad máxima
    TextColumn get fichaVerPregEdadEd => text()(); // Unidad de la edad mínima y máxima
    IntColumn  get fichaVerPregFlgEdadObl => integer()(); // Obligatoria para el rango de edades
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FichaVerItemsPregTabDin') // Valores que condicionan preguntas
class TableFichaVerItemsPregTabDin extends Table {

    IntColumn  get ficId => integer().customConstraint('REFERENCES Ficha(ficId)')(); // Id. de ficha
    IntColumn  get ficVerId => integer().customConstraint('REFERENCES FichaVer(ficVerId)')(); // Número de versión
    IntColumn  get ficVerItemsId => integer().customConstraint('REFERENCES FichaVerItems(ficVerItemsId)')(); // Código del Item
    IntColumn  get pregFrmDinaId => integer().customConstraint('REFERENCES PregFrmDina(pregFrmDinaId)')(); // Código de pregunta
    IntColumn  get fichaVerTabDinId => integer().autoIncrement()(); // Código de la tabla dinámica
    IntColumn  get fichaVerTabDinValId => integer()(); // Código de la respuesta de Tabla Dinámica
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('OpcFich') // Opciones
class TableOpcFich extends Table {

    TextColumn get opcFichCod => text()(); // Código de opción   (PRIMARY KEY NOT NULL)
    TextColumn get opcFichDesc => text()(); // Descripción de opción
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();

    @override
    Set<Column> get primaryKey => {opcFichCod};
}

@DataClassName('FichaOpc') // Opciones de ficha
class TableFichaOpc extends Table {

    IntColumn  get ficId => integer().customConstraint('REFERENCES Ficha(ficId)')(); // Id. de ficha
    TextColumn get opcFichCod => text().customConstraint('REFERENCES OpcFich(opcFichCod)')(); // Código de opción
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('NomTabDin') // Tablas dinamicas
class TableNomTabDin extends Table {

    IntColumn  get nomTabDinId => integer().autoIncrement()(); // Código de Tabla dinámica
    TextColumn get nomTabDinNom => text()(); // Nombre de tabla dinámica
    IntColumn  get nomTabDinFlgAct => integer()(); // Tabla dinámica esta activa
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('TabDinVal') // Valores de la tabla dinámica
class TableTabDinVal extends Table {

    IntColumn  get nomTabDinId => integer().customConstraint('REFERENCES NomTabDin(nomTabDinId)')(); // Código de Tabla dinámica
    IntColumn  get tabDinValId => integer().autoIncrement()(); // Código del valor de la tabla dinámica
    IntColumn  get tabDinValFlgAct => integer()(); // Valor de la tabla dinámica esta activo
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('TabDinValCond') // Valores de la tabla dinámica
class TableTabDinValCond extends Table {

    IntColumn  get tabDinValCondTDId => integer().customConstraint('REFERENCES NomTabDin(nomTabDinId)')(); // Código de Tabla dinámica que condiciona
    IntColumn  get tabDinValCondTDValId => integer().customConstraint('REFERENCES TabDinVal(tabDinValId)')(); // Código del valor de la tabla dinámica que condiciona
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Usuarios') // Usuarios
class TableUsuarios extends Table {

    IntColumn  get usuId => integer().autoIncrement()(); // Codigo de usuario
    TextColumn get usuNom => text()(); // Primer Nombre del usuario
    TextColumn get usuNom2 => text()(); // Segundo Nombre del usuario
    TextColumn get usuApe => text()(); // Primer Apellido del usuario
    TextColumn get usuApe2 => text()(); // Segundo Apellido del usuario
    TextColumn get usuNick => text()(); // Nick del usuario
    TextColumn get usuKeyPass => text()(); // Clave para desencriptar
    TextColumn get usuHashPass => text()(); // Hash de la contraseña
    TextColumn get usuPassAlgoritmo => text()(); // Algoritmo de la contraseña
    IntColumn  get usuFlgAct => integer()(); // Usuario activo
    IntColumn  get usuFlgGenerico => integer()(); // Usuario genérico
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('PerfSis') // Perfiles del usuario por sistema
class TablePerfSis extends Table {

    IntColumn  get perfSisId => integer().autoIncrement()(); // Código de perfil
    TextColumn get perfSisDesc => text()(); // Descripcion del perfil
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('SisUsuPerf') // Perfiles del usuario por sistema
class TableSisUsuPerf extends Table {

    IntColumn  get sisId => integer()(); // Código de sistema
    IntColumn  get perfSisId => integer().customConstraint('REFERENCES PerfSis(perfSisId)')();  // Código de perfil
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')(); // Código de Usuario
    IntColumn  get sisUsuPerfHab => integer()(); // Perfil Habilitado
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Roles') // Roles
class TableRoles extends Table {

    IntColumn  get rolId => integer().autoIncrement()(); // Código de rol
    TextColumn get rolNom => text()(); // nombre de rol
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('RRHH') // Recursos Humanos
class TableRRHH extends Table {

    IntColumn  get rRHHId => integer().autoIncrement()(); // Código de RRHH
    TextColumn get rRHHDesc => text()(); // Descripción del RRHH
    IntColumn  get rRHHFlgAct => integer()(); // El RRHH está activo
    TextColumn get rRHHPref => text()(); // Prefijo del RRHH 
    TextColumn get rRHHSuf => text()(); // Sufijo del RRHH
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('RRHHPers')
class TableRRHHPers extends Table {

    IntColumn  get rRHHId => integer()(); // Código de RRHH
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();  // Codigo de usuario
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('RRHHRol')
class TableRRHHRol extends Table {

    IntColumn  get rRHHId => integer()(); // Código RRHH
    TextColumn get rRHHRolFchIni => text()(); // Fecha RRHH
    IntColumn  get rolId => integer().customConstraint('REFERENCES Roles(rolId)')(); // Codigo Rol
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('TipActAsist') // Tipos de Actos Asistenciales
class TableTipActAsist extends Table {

    IntColumn  get tipActAsistId => integer().autoIncrement()(); // Codigo de tipo de acto asistencial
    TextColumn get tipActAsistDesc => text()(); // Descripcion de tipo de acto asistencial
    IntColumn  get tipActAsistFlgSeIndica => integer()(); // Se puede indicar
    IntColumn  get tipActAsistFlgParacl => integer()(); // Es paraclinica
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('UnidMed') // Unidades de medida
class TableUnidMed extends Table {

    IntColumn  get unidMedId => integer().autoIncrement()(); // Codigo unidad de medida
    TextColumn get unidMedDesc => text()(); // Descripcion de unidad de medida
    TextColumn get unidMedAbrev => text()(); // Abreviacion de unidad de medida
    IntColumn  get unidMedFlgHab => integer()(); // Habilitado
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('ViaAdmMedic') // Vias de administracion
class TableViaAdmMedic extends Table {

    IntColumn  get viaAdmMedicId => integer().autoIncrement()(); // Codigo de via de administracion
    TextColumn get viaAdmMedicDesc => text()(); // Descripcion de via de administracion
    TextColumn get viaAdmMedicAbrev => text()(); // Abreviacion de via de administracion
    IntColumn  get viaAdmMedicFlgHab => integer()(); // Habilitada
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('ActAsist') // Actos asistenciales
class TableActAsist extends Table {

    IntColumn  get actAsistId => integer().autoIncrement().customConstraint('REFERENCES TipActAsist(tipActAsistId)')(); // Codigo de acto asistencial
    TextColumn get actAsistDesc => text()(); // Descripcion del acto asistencial
    TextColumn get actAsistAbrev => text()(); // Abreviación de acto asistencial
    IntColumn  get tipActAsistId => integer()(); // Código de tipo de acto asistencial
    IntColumn  get actAsistFlgHab => integer()(); // Habilitado
    IntColumn  get actAsistTipDat => integer()(); // Tipo de datos del resultado
    IntColumn  get actAsistValMin => integer()(); // Valor mínimo
    IntColumn  get actAsistValMax => integer()(); // Valor máximo
    IntColumn  get unidMedId => integer().customConstraint('REFERENCES UnidMed(unidMedId)')(); // Código unidad de medida
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('AtnClin') // Antecedentes clínicos
class TableAtnClin extends Table {

    IntColumn  get antClinId => integer().autoIncrement()(); // Código de antecedente
    TextColumn get antClinDesc => text()(); // Descripción de antecedente
    IntColumn  get antClinFlgHab => integer()(); // Habilitado
    IntColumn  get tipAntClinId => integer()(); // Código de tipo de antecedente
    IntColumn  get antClinAlert => integer()(); // Alertar
    IntColumn  get antClinAlertDsc => integer()(); // Texto del alerta
    TextColumn get antClinSexo => text()(); // Sexo del antecedente
    IntColumn  get antClinFlgFactRiesg => integer()(); // Es factor de riesgo
    IntColumn  get antCliFlgHabRep => integer()(); // Puede repetirse
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Drogas') // Drogas
class TableDrogas extends Table {

    IntColumn  get droId => integer().autoIncrement()(); // Código de droga
    TextColumn get droDesc => text()(); // Descripción de droga 
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Farmacos') // Farmacos
class TableFarmacos extends Table {

    IntColumn  get farId => integer().autoIncrement()(); // Código de farmaco
    TextColumn get farNom => text()(); // Nombre del farmaco
    IntColumn  get farFlgHab => integer()(); // Farmaco habilitado
    TextColumn get farDrogComp => text()(); // Composicion
    IntColumn  get farPresMedicId => integer()(); // Codigo de la presentacion
    IntColumn  get farDosCnt => integer()(); // Cantidad de la presentacion
    IntColumn  get farDosUnidMedId => integer()(); // Codigo de unidad de la presentacion
    IntColumn  get farFlgEsSuero => integer()(); // Es suero
    IntColumn  get farFlgEsAdit => integer()(); // Es aditivo 
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('FarVia') // Vias de administración del fármaco
class TableFarVia extends Table {

    IntColumn  get farId => integer().autoIncrement()(); // Código del fármaco
    IntColumn  get viaAdmMedicId => integer().customConstraint('REFERENCES ViaAdmMedic(viaAdmMedicId)')(); // Código de la vía de administración
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Materiales') // Materiales
class TableMateriales extends Table {

    IntColumn  get matId => integer().autoIncrement()(); // Codigo de material
    TextColumn get matNom => text()(); // Nombre de material
    IntColumn  get matBajFlg => integer()(); // De baja
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('MatUniMed') // Unidades de medida de los materiales
class TableMatUniMed extends Table {

    IntColumn  get matId => integer().customConstraint('REFERENCES Materiales(matId)')(); // Codigo de material
    IntColumn  get matUnidMedId => integer()(); // Codigo de unidad de medida del material
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('Presentaciones') // Presentaciones
class TablePresentaciones extends Table {

    IntColumn  get presMedicId => integer().autoIncrement()(); // codigo de presentacion
    TextColumn get presMedicNom => text()(); // Nombre de presentacion
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('PresMedicVia') // Vias de administración de presentacion
class TablePresMedicVia extends Table {

    IntColumn  get presMedicId => integer().customConstraint('REFERENCES Presentaciones(presMedicId)')(); // Codigo de presentacion
    IntColumn  get viaAdmMedicId => integer().customConstraint('REFERENCES ViaAdmMedic(viaAdmMedicId)')(); // Codigo de via de administracion
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}

@DataClassName('PresMedicUniMed') // Unidades de medida de la presentacion
class TablePresMedicUniMed extends Table {

    IntColumn  get presMedicId => integer().customConstraint('REFERENCES Presentaciones(presMedicId)')(); // Código de la presentacion
    IntColumn  get unidMedId => integer().customConstraint('REFERENCES UnidMed(unidMedId)')(); // Codigo de unidad de medida
    //Columnas AppMovil
    IntColumn  get statusId => integer().customConstraint('REFERENCES Ficha(ficId)')();
    IntColumn  get usuId => integer().customConstraint('REFERENCES Usuarios(usuId)')();
    DateTimeColumn get createdAt => dateTime().nullable()();
    DateTimeColumn get updatedAt => dateTime().nullable()();
    DateTimeColumn get deletedAt => dateTime().nullable()();
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////
///DATABASE CREATE/////////////////////////////////////////////////////////////////////////////////////////

@UseMoor(tables: [
                  TableFicha,
                  TableFichaVer,
                  TableFichaVerItems,
                  TablePregFrmDina,
                  TableFichaVerPreg,
                  TableFichaVerItemsPregTabDin,
                  TableOpcFich,
                  TableFichaOpc,
                  TableNomTabDin,
                  TableTabDinVal,
                  TableTabDinValCond,
                  TableUsuarios,
                  TablePerfSis,
                  TableSisUsuPerf,
                  TableRoles,
                  TableRRHH,
                  TableRRHHPers,
                  TableRRHHRol,
                  TableTipActAsist,
                  TableUnidMed,
                  TableViaAdmMedic, 
                  TableActAsist,
                  TableAtnClin,
                  TableDrogas,
                  TableFarmacos,
                  TableFarVia,
                  TableMateriales,
                  TableMatUniMed,
                  TablePresentaciones,
                  TablePresMedicVia,
                  TablePresMedicUniMed 
                 ],
           daos: [UsuarioDao])

class GeoDatabase extends _$GeoDatabase{
  
  GeoDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path : 'geo_database.sqlite' , logStatements: true));
  
  @override
  int get schemaVersion => 1; 

}


///////////////////////////////////////////////////////////////////////////////////////////////////////////
///DAOS////////////////////////////////////////////////////////////////////////////////////////////////////

@UseDao(tables: [TableUsuarios])

class UsuarioDao extends DatabaseAccessor<GeoDatabase> with _$UsuarioDaoMixin {

  final GeoDatabase db;

  UsuarioDao(this.db) : super(db); 

  Future<List<Usuarios>> allUsusarios() => select(tableUsuarios).get();
  
  Stream<List<Usuarios>> watchAllUsuario() => select(tableUsuarios).watch();

  Future insUsuario(Usuarios usuarios) => into(tableUsuarios).insert(usuarios);

  Future updateUsuario(Usuarios usuarios) => update(tableUsuarios).replace(usuarios);

  Future deleteUsuario(Usuarios usuarios) => delete(tableUsuarios).delete(usuarios);

  Future <List<Usuarios>> sortEntriesAlphabetically() {
    return (select(tableUsuarios)..orderBy([(t) => OrderingTerm(expression: t.usuNom)])).get();

  }
}





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