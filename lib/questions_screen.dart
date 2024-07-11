import 'package:flutter/material.dart';
import 'answer_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'data/questions.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key, required this.onSelectAnswer}) : super(key: key);

  final void Function(String answer) onSelectAnswer;
  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  

  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
          currentQuestionIndex++;
    });
  }
  @override
  Widget build(BuildContext context) {
  final currentQuestion = questions[currentQuestionIndex]; // Assuming questions is defined and contains QuizQuestion objects

  return SizedBox(
    width: double.infinity,
    child: Container(
      margin: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: Color.fromARGB(255, 198, 132, 246),
              fontWeight: FontWeight.bold,
              fontSize: 24
            ),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(answerText: answer, onTap: (){
              answerQuestion(answer);
            }
            ); 
            //answerquestion was a pointer but now we add new);  
            //to point to the question not to execute
          }),
        ],
      ),
    ),
  );
}
}


