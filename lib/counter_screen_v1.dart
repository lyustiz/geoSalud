import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geosalud/blocs/counter_bloc.dart';
import 'actions_buttons.dart';

class CounterScreenWithLocalState extends StatefulWidget {
  CounterScreenWithLocalState({Key key}) : super(key: key);

  _CounterScreenWithLocalStateState createState() =>
      _CounterScreenWithLocalStateState();
}

class _CounterScreenWithLocalStateState
    extends State<CounterScreenWithLocalState> {
  CounterBloc _counterBloc;
  @override
  void initState() {
    super.initState();
    _counterBloc = CounterBloc();
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter - Local state',
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
                _counterBloc.dispatch(CounterEvent.increment);
              },
              backgroudColor: Colors.green,
            ),
            ActionsButtons(
              iconData: Icons.remove,
              onPressed: () {
                _counterBloc.dispatch(CounterEvent.decrement);
              },
            ),
            ActionsButtons(
              iconData: Icons.replay,
              onPressed:  () {
                _counterBloc.dispatch(CounterEvent.reset);
              },
            )
          ],
        ),
      ),
    );
  }
}
