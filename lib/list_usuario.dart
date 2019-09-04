import 'package:flutter/material.dart';
import 'package:geosalud/blocs/usuario/usuario_bloc.dart';
import 'package:geosalud/blocs/usuario/usuario_state.dart';
import 'package:geosalud/database/database.dart';
import 'blocs/usuarios_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'actions_buttons.dart';

class ListUsuario extends StatelessWidget {
  const ListUsuario({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      final GeoDatabase db = new GeoDatabase(); 

     return BlocProvider(
     builder: (BuildContext context) => UsuariosBloc(db),

     child: Container(
         child: Scaffold(
           appBar: AppBar(
             title: Text('Lista de usuario usando Block'),
           ),
           body: listarUsuarios(context),
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
           floatingActionButton: ActionsButtons(
              iconData: Icons.add,
              onPressed: () {
                //counterBloc.dispatch(CounterEvent.increment);
              },
              backgroudColor: Colors.green,
            ),
           ),
          
         )
    );
     
  }
}


Container listarUsuarios(context){

  return Container(
    child: BlocBuilder<UsuariosBloc, UsuarioState>(
      builder: (context, state){
         print(state.toString());
         
        return Center(
          
          child: ListView(
            children: <Widget>[
              Text('vacio'),
              ActionsButtons(
              iconData: Icons.add,
              onPressed: () {
                //counterBloc.dispatch(CounterEvent.increment);
              },
              backgroudColor: Colors.green,
            ),

            ],
          ),
        );

      }
    )
  
  );

}