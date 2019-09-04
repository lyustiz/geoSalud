import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosalud/blocs/counter_bloc.dart';
import 'actions_buttons.dart';


/// Counter Gobal usa provider global
class CounterScreenWithGlobalState extends StatelessWidget {
  const CounterScreenWithGlobalState({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CounterScaffold(title: 'Conter Global State');
  }
}

/// Counter Local usa su propio provider
class CounterScreenWithLocalState extends StatefulWidget {
  CounterScreenWithLocalState({Key key}) : super(key: key);

  _CounterScreenWithLocalStateState createState() =>
      _CounterScreenWithLocalStateState();
}

class _CounterScreenWithLocalStateState extends State<CounterScreenWithLocalState> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      builder: (BuildContext context) => CounterBloc(),
      child: CounterScaffold(title: 'Counter Local State'),
    );
  }
}


//pantalla para ambos tipos de Counters
class CounterScaffold extends StatelessWidget {
  final String title;

  const CounterScaffold({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);

    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          '$title',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, state) {
            return Text(
              '$state',
              style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ActionsButtons(
              iconData: Icons.add,
              onPressed: () {
                counterBloc.dispatch(CounterEvent.increment);
              },
              backgroudColor: Colors.green,
            ),
            ActionsButtons(
              iconData: Icons.remove,
              onPressed: () {
                counterBloc.dispatch(CounterEvent.decrement);
              },
            ),
            ActionsButtons(
              iconData: Icons.replay,
              onPressed: () {
                counterBloc.dispatch(CounterEvent.reset);
              },
            )
          ],
        ),
      ),
    ));
  }
}
