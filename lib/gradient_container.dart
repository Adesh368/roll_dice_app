import 'package:flutter/material.dart';
import 'package:flutter_projects/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors1, this.colors2, {super.key});

  const GradientContainer.purple({super.key})
      : colors1 = Colors.deepPurple,
        colors2 = Colors.indigo;

  final Color colors1;
  final Color colors2;

  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [colors1, colors2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

//class GradientContainer extends StatelessWidget {
//  const GradientContainer(this.co,{super.key});

//  final List<Color> co;


//  @override
//  Widget build(context) {
//   return Container(
//      decoration:  BoxDecoration(
//        gradient: LinearGradient(colors: co, begin: Alignment.topLeft, end: Alignment.bottomRight),
//      ),
//      child: const Center(
//        child: StyledContainer('Hello world!'),
//      ),
//    );
//  }
//}