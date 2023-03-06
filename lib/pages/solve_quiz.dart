import 'package:quiz_master/database/quizes.dart';
import 'package:quiz_master/pages/home_page.dart';
import 'package:quiz_master/services/io_service.dart';
class SolveQuiz{
  void solveQuiz(){
    int solvedQuestionsCount=0;

    questionsList.forEach((element) {
      print(element);
      int selection = io.number;
      if(selection<=0||selection>4)return solveQuiz();
      if(element.checker(selection)){
        print(true);
        solvedQuestionsCount++;
      }else{
        print(false);
      }
    });
    print('your solved questions count $solvedQuestionsCount');
    HomePage();
  }
}