import 'package:flutter/material.dart';

class VisorOS extends StatefulWidget {
  VisorOS({Key key}) : super(key: key);

  _VisorOSState createState() => _VisorOSState();
}

List<OrdenServicio> ordenServicio;
List<OrdenServicio> selectedOS;
bool sort;

class _VisorOSState extends State<VisorOS> {
 
  @override
  void initState() {
    sort = false;
    selectedOS = [];
    ordenServicio = OrdenServicio.getOrdenServicio();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
//#e8f1fc
    return Container(
      child: Scaffold(
          appBar: AppBar(

            title: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    child: Icon(Icons.menu, color: Colors.blue, size: 24.0,),
                    padding: EdgeInsets.only(right: 15.0),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      alignment:  Alignment.centerLeft,
                      child:  Image.asset('assets/images/logosm.png'),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Icon(Icons.notifications, color:Colors.grey, size: 24.0,),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child:Text('Dra. Ana Torres', style: TextStyle(color: Colors.black, fontSize: 16.0),),
                  ),
                  Container(
                        width: 34.5,
                        height: 34.5,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/avatar.png')
                            )
                  )
                  )
                ],
              )
              
              
            ),
            backgroundColor: Colors.white,
          ),
          body: Container(
            color: Color(hexStringToHexInt('#e8f1fc')),
            child: Container(
              child: Column(
                children: <Widget>[
                  tituloVisor(),
                  filtroVisor(),
                  listaVisor(),
                ],
              ),
              margin: EdgeInsets.all(30.0),
            ),
            height: screenSize.height,
            width: screenSize.width,
          )),
    );
  }


  DataTable listaVisor() {
    return DataTable(
      /* horizontalMargin: 1.0,
      columnSpacing: 9.0,
      headingRowHeight: 44.7,
      dataRowHeight: 59.6, */
      sortAscending: true,
        columns: [
          DataColumn(
            label: Text("FECHA-HORA", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
           numeric: false,
           onSort: (columnIndex, ascending) {
             return false;
           }
          ),
          DataColumn(
            label: Text("NOMBRE", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
            numeric: false,
          ),
           DataColumn(
            label: Text("TIPO ORDEN", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
            numeric: false,
          ),
          DataColumn(
            label: Text("MOTIVO", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
            numeric: false,
          ),
          DataColumn(
            label: Text("DIRECCION", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
            numeric: false,
          ),
          DataColumn(
            label: Text("LOCALIDAD", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
            numeric: false,
          ),
           DataColumn(
            label: Text("ESTADO", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
            numeric: false,
          ),
          /*  DataColumn(
            label: Text("s", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
            numeric: false,
          ), */
         
        ],
        rows: ordenServicio.map(
          (ordenServicio) => DataRow(
                  selected: selectedOS.contains(ordenServicio),
                  onSelectChanged: (b) {
                    print("Onselect");
                    onSelectedRow(b, ordenServicio);
                    },
                  cells: [
                    DataCell(
                      
                      Container(
                        
                        alignment: Alignment.centerLeft,
                        height: 59.4,
                        child: Text(ordenServicio.fecha, style: TextStyle( fontSize: 14.0, ),),
                      ),
                      onTap: () {
                        print('Selected ${ordenServicio.nombre}');
                        },
                    ),
                    DataCell(
                      Container(
                        
                        alignment: Alignment.centerLeft,
                        height: 59.4,
                        child: Text(ordenServicio.nombre, style: TextStyle( fontSize: 14.0, ),),
                      ), 
                    ),
                    DataCell(
                      Container(
                        
                        alignment: Alignment.centerLeft,
                        height: 59.4,
                        child: Text(ordenServicio.nombre, style: TextStyle( fontSize: 14.0, ),),
                      ), 
                    ),
                    DataCell(
                      Container(
                        
                        alignment: Alignment.centerLeft,
                        height: 59.4,
                        child: Text(ordenServicio.nombre, style: TextStyle( fontSize: 14.0, ),),
                      ), 
                    ),
                    DataCell(
                      Container(
                        
                        alignment: Alignment.centerLeft,
                        height: 59.4,
                        child: Text(ordenServicio.nombre, style: TextStyle( fontSize: 14.0, ),),
                      ), 
                    ),
                    DataCell(
                      Container(
                        
                        alignment: Alignment.centerLeft,
                        height: 59.4,
                        child: Text(ordenServicio.nombre, style: TextStyle( fontSize: 14.0, ),),
                      ), 
                    ),
                    DataCell(
                      Container(
                        
                        alignment: Alignment.centerLeft,
                        height: 59.4,
                        child: Text(ordenServicio.nombre, style: TextStyle( fontSize: 14.0, ),),
                      ), 
                    ),
                    /*  DataCell(
                      Container(
                        
                        alignment: Alignment.centerLeft,
                        height: 59.4,
                        child: Text(ordenServicio.nombre, style: TextStyle( fontSize: 14.0, ),),
                      ), 
                    ), */
                  ]),
            ).toList()
 
        
        /*
        String fecha;
  String nombre;
  String tipoOrden;
  String motivoConsulta;
  String direccion;
  String localidad;
  String estado;
  String idOrdenServicio;
        
        
         */
        
        
        /*<DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data'), showEditIcon: true),
              ]
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data'), showEditIcon: true),
              ]
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data'), showEditIcon: true),
              ]
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data')),
                DataCell(Text('data'), showEditIcon: true),
              ]
            ),
           
        ],*/

                
        
        
        /* ordenServicio.map(
              (ordenServicio) => DataRow(
                  selected: selectedOS.contains(ordenServicio),
                  onSelectChanged: (b) {
                    print("Onselect");
                    //onSelectedRow(b, user);
                  },
                  cells: [
                    DataCell(
                      Text(ordenServicio.fecha),
                      onTap: () {
                        print('Selected ${ordenServicio.fecha}');
                      },
                    ),
                    DataCell(
                      Text(ordenServicio.nombre),
                    ),
                  ]),
            )
            .toList(), 
        sortAscending: sort,
        sortColumnIndex: 0);*/
    );
  }

  





    onSelectedRow(bool selected, OrdenServicio ordenServicio) async {
    setState(() {
      
      if (selected) {
        selectedOS.add(ordenServicio);
      } else {
        selectedOS.remove(ordenServicio);
      }
      print(selectedOS.length);
    });
  }

  

  Container filtroVisor() {
    return Container(
        height: 70.6,
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 33.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                'Pendientes',
                style: TextStyle(fontSize: 16.0, color: Colors.blue),
              ),
            ),
            Text(
              'Filtro',
              style: TextStyle(fontSize: 16.0),
            ),
            Icon(
              Icons.filter_list,
              size: 24.0,
            )
          ],
        ));
  }

  Container tituloVisor() {
    return Container(
      padding: EdgeInsets.only(bottom: 10.0),
        child: Row(
      children: <Widget>[
        Expanded(
          child: Text('Ordenes de Sevicio', style: TextStyle(fontSize: 27.0)),
        ),
        Container(
          child: ButtonTheme(
            minWidth: 185.0,
            height: 50.0,
            child: OutlineButton(
              borderSide: BorderSide(color: Colors.blue),
              color: Colors.blue,
              textColor: Colors.blue,
              child: Row(
                children: <Widget>[
                  Text('Crear Nueva OS'),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.blue,
                      size: 20.0,
                    ),
                  )
                ],
              ),
              onPressed: () {},
            ),
          ),
        )
      ],
    ));
  }
}


class OrdenServicio {
  String fecha;
  String nombre;
  String tipoOrden;
  String motivoConsulta;
  String direccion;
  String localidad;
  String estado;
  String idOrdenServicio;

  OrdenServicio(
      {this.fecha,
      this.nombre,
      this.tipoOrden,
      this.motivoConsulta,
      this.direccion,
      this.localidad,
      this.estado,
      this.idOrdenServicio});

  static List<OrdenServicio> getOrdenServicio() {
    return <OrdenServicio>[
      OrdenServicio(
          fecha: '17/06-17:00',
          nombre: 'Maria Elena Rodriguez',
          tipoOrden: 'Enf. a domicilio',
          motivoConsulta: 'curacion',
          direccion: 'Av.italia',
          localidad: 'Montevideo',
          estado: 'Pendiente',
          idOrdenServicio: '1'),
      OrdenServicio(
          fecha: '17/06-16:30',
          nombre: 'Roberto Anoli',
          tipoOrden: 'Emergencia',
          motivoConsulta: 'Crisis Asma',
          direccion: 'Ricviera 212',
          localidad: 'Montevideo',
          estado: 'Pendiente',
          idOrdenServicio: '2'),
      OrdenServicio(
          fecha: '17/06-16:00',
          nombre: 'Lucia Perez',
          tipoOrden: 'Int. Domiciliaria',
          motivoConsulta: 'Hepatitis',
          direccion: 'Bv. Artigasa',
          localidad: 'Montevideo',
          estado: 'Pendiente',
          idOrdenServicio: '3'),
    ];
  }
}

hexStringToHexInt(String hex) {
  hex = hex.replaceFirst('#', '');
  hex = hex.length == 6 ? 'ff' + hex : hex;
  int val = int.parse(hex, radix: 16);
  return val;
}



class Celda extends StatelessWidget {

  String texto;

  Celda({this.texto});

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Text(texto),
      );
    }
  }