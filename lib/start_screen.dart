import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.6 ,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
        ),

        SizedBox(height: 20),

        Text('Quiz App',
        style: TextStyle(
          fontSize: 25,
          color: Colors.white
        ),),

        SizedBox(height: 30),

        OutlinedButton.icon(
          icon: Icon(Icons.arrow_right_alt,
          color: Colors.white,
          ),
        onPressed: (){

        }, 
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 144, 11, 221),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),
        label: Text(
          'Start Quiz'
        ),
        )
      ],
    ));
  }
}