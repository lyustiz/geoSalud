import 'package:flutter/material.dart';


/// boton actions
/// IconData iconData*,  VoidCallback onPressed*, Color backgroudColor
class ActionsButtons extends StatelessWidget {
  final IconData iconData;
  final VoidCallback onPressed;
  final Color backgroudColor;

  const ActionsButtons({Key key,
  @required this.iconData,
  @required this.onPressed,
  this.backgroudColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        heroTag: null,
        child: Icon(iconData),
        onPressed: onPressed,
        backgroundColor: (backgroudColor==null) ? Colors.blue : backgroudColor,
      ),
    );
  }
}