import 'package:flutter/material.dart';
import 'dart:math';

final randomizer =
    Random(); //this generates random values that can be used to update the dice ui of the app
//this was generated for optimization. You can simply add the random() method in the currentDiceRoll function like this currentDiceRoll = Random().nextInt(6)+1

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //One way of updating the dice value and generating a random number that can be used to change the image in the app (update the UI) from one to two or three
  /*var activeDiceImage = 'assets/images/dice-images/dice-2.png';

  void rollDice() {
    var diceRoll= Random().nextInt(6)+1;  //this will give be a value between 1 and 6= 1,2,3,4,5,6
    setState(() {
      activeDiceImage = 'assets/images/dice-images/dice-$diceRoll.png';
    });
  }*/

  //Another way is to:
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) +
          1; //this will give be a value between 1 and 6= 1,2,3,4,5,6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-images/dice-$currentDiceRoll.png',
            width: 200),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              //padding: const EdgeInsets.only(top: 20,), //EdgeInsets.all(20) this adds spaces to all areas of the button by the value assigned
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice'))
        //ElevatedButton(onPressed: rollDice, child: const Text('Roll Dice'))
        //OutlinedButton(onPressed: rollDice, child: const Text('Roll Dice'))
      ],
    );
  }
}
