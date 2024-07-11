import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget{
  const StartScreen(this.startQuiz, {super.key});


  final void Function() startQuiz;
 
  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 250,
              color: const Color.fromARGB(145, 244, 237, 237),
            ),
          SizedBox(height: 40,),
          Text('Learn Flutter the Right Way!',
            style: GoogleFonts.lato(
              color: Colors.white,
            )
          ),
          SizedBox(height: 20,),
          OutlinedButton.icon(onPressed: startQuiz, //.icon allows us to add icon
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: const Icon(Icons.arrow_right_alt), //icon is just a gneral widget, .icon allows us any type of widget
          label: const Text('Start Quiz'),)




      ],),);  
    //center will basically expand to take up the whole StartScreen
  }
}
