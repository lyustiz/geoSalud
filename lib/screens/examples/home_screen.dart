import 'package:flutter/material.dart';
import 'package:geosalud/blocs/examples/counter_bloc.dart';
import 'package:geosalud/database/database.dart';
import 'counter_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key, context}) : super(key: key);

  /// metodo para resumir la navegacion
  void _pushScreen(BuildContext context, Widget screen){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => screen),
    );
  } 

  @override
  Widget build(BuildContext context) {
   //final counterBloc = BlocProvider.of<CounterBloc>(context);
   final GeoDatabase db = new GeoDatabase();
    return Scaffold(
      appBar: AppBar(title: Text('prueba'),),
      body: Text('dd'),

    );
    
    
    /* Scaffold(
      appBar: AppBar(
        title: Text('Bloc Example'),
      ),
      body: BlocProvider(
            builder: (BuildContext blocContext) => UsuarioBloc(db),
        child: 
          ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.add_circle_outline),
                title: Text('Counter'),
                trailing: Chip(
                  label: Text('Local State'),
                  backgroundColor: Colors.blue[800],
                ), 
                onTap: () => _pushScreen(context, CounterScreenWithLocalState()),
              ),
              ListTile(
                leading: Icon(Icons.add_circle_outline),
                title: Text('Counter'),
                subtitle: BlocBuilder<CounterBloc, int>(
                  builder: (context, state){
                    return Text('$state');
                  } ,
                ),
                trailing: Chip(
                  label: Text('Global State'),
                  backgroundColor: Colors.green[800],
                ), 
                onTap: () => _pushScreen(context, CounterScreenWithGlobalState()),
                onLongPress: (){
                 //counterBloc.dispatch(CounterEvent.increment);
                },
              )
            ],
          ),

      ),
    ); */
  }
}