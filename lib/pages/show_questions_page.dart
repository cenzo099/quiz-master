import 'package:quiz_master/database/quizes.dart';
import 'package:quiz_master/pages/home_page.dart';

class ShowQuestions{
  void showQuestions(){
    questionsList.forEach((element) {print(element);});
    HomePage();
  }
}