import 'package:quiz_master/pages/add_question_page.dart';
import 'package:quiz_master/pages/delate_question_page.dart';
import 'package:quiz_master/pages/show_questions_page.dart';
import 'package:quiz_master/pages/solve_quiz.dart';
import 'package:quiz_master/pages/state_widget.dart';
import 'package:quiz_master/services/io_service.dart';
class HomePage extends StateWidget{
  @override
  void build() {
    print('Welcome to quiz-master');
    print('1.Quiz');
    print('2.Show question');
    print('3.Add quiz');
    print('4.Delete quiz');
    int command = io.number;
    if(command<0||command>4){
      print('please , entry valid command');
      HomePage();
      return;
    }
    switch(command){
      case 1: SolveQuiz().solveQuiz();break;
      case 2: ShowQuestions().showQuestions();break;
      case 3: AddQuestion().writeQuestion();break;
      case 4: DeleteQuestion().deleteQuestion();break;
      default :{
        print('please , entry valid command');
        HomePage();
      }
    }
  }

}