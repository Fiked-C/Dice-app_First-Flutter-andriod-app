import "package:flutter/material.dart";
import "package:flutter_application_1/dice_roller.dart";

//CREATING YOUR OWN CLASS AND PASS IT TO FLUTTER'S MAIN

//Using variables

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//you can use final/const endAlignment= Alignment.topleft to make sure that you dont update the endalignment variable in the method.
// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  //Gradient container needs to be have a parameter
  const GradientContainer(this.color1, this.color2,
      {super.key}); //accepting two positional argument

  final Color color1;
  final Color color2;

  @override //this is needed during polymorphism. When extending from a super class like StatelessWidget
  Widget build(context) {
    //you must return a widget. Context is a parameter that is dynamic
    return Container(
      //Container is a very useful widget for configuring styling and layout settings
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin:
              startAlignment, //this is used to organise the start and the end of the gradient
          end: endAlignment,
        ), //This is to create a nice transition color gradient for the background
        //it wants a list of values using square brackets
      ),
      //ouput an image
      child: const Center(child: DiceRoller()),
    );
  }
}




//AN ALTERNATIVE WAY COULD BE TO
/*class GradientContainer extends StatelessWidget {
  //Gradient container needs to be have a parameter
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;//this is a list and even if it is final it can be mutated 

  @override //this is needed during polymorphism. When extending from a super class like StatelessWidget
  Widget build(context) {
    //you must return a widget. Context is a parameter that is dynamic
    return Container(
      //Container is a very useful widget for configuring styling and layout settings
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin:
              startAlignment, //this is used to organise the start and the end of the gradient
          end: endAlignment,
        ), //This is to create a nice transition color gradient for the background
        //it wants a list of values using square brackets
      ),

      child: const Center(child: StyledTexted()),
    );
  }
}*/
