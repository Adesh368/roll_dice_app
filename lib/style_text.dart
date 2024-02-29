import 'package:flutter/material.dart';


class StyledContainer extends StatelessWidget {
  const StyledContainer(this.tk,{super.key});

  final String tk;
  @override
  Widget build(context) {
    return Text(
      tk,
      style:const  TextStyle(
        color: Colors.white,
        fontSize: 28.0,
      ),
    );
  }
}
