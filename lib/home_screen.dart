import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosalud/blocs/counter_bloc.dart';
import 'counter_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  /// metodo para resumir la navegacion
  void _pushScreen(BuildContext context, Widget screen){
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => screen),
    );
  } 

  @override
  Widget build(BuildContext context) {
   final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Bloc Example'),
      ),
      body: ListView(
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
              counterBloc.dispatch(CounterEvent.increment);
            },
          )
        ],
      ),
    );
  }
}