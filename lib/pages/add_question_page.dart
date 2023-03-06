import 'package:quiz_master/database/quizes.dart';
import 'package:quiz_master/models/quiz.dart';
import 'package:quiz_master/services/io_service.dart';
import 'package:quiz_master/pages/home_page.dart';
class AddQuestion{
  void writeQuestion(){
    io.console('please write question\n');
    String question = io.text;
    if(question.isEmpty){
      return writeQuestion();
    }
    io.console('please write option A\n');
    String optionA=io.text;
    if(optionA.isEmpty){
      return writeQuestion();
    }
    io.console('please write option B\n');
    String optionB=io.text;
    if(optionB.isEmpty){
      return writeQuestion();
    }
    io.console('please write option C\n');
    String optionC=io.text;
    if(optionC.isEmpty){
      return writeQuestion();
    }
    io.console('please write option D\n');
    String optionD=io.text;
    if(optionD.isEmpty){
      return writeQuestion();
    }
    List<String> listOptions = [optionA,optionB,optionC,optionD];
    bool check = false;
    io.console('please write correct option\n');
    String correctOption = io.text;
    listOptions.forEach((element) {
        if (element == correctOption) {
          check =true;
          return;
        }
    });

    if(check==false)writeQuestion();
    questionsList.add(Quiz(question: question, options: listOptions , correct:correctOption ));
    io.console('Your question successful added\n');
    questionsList.forEach((element) {
      element.number = questionsList.indexOf(element)+1;
    });
    HomePage();
  }

}