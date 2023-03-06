import 'package:quiz_master/database/quizes.dart';
import 'package:quiz_master/pages/home_page.dart';
import 'package:quiz_master/services/io_service.dart';
class DeleteQuestion{
  void deleteQuestion(){
    questionsList.forEach((element) {print(element);});
    print('entry quiz number for delete');
    int number = io.number;
    if(number<=0||number>questionsList.length){
      print('entry valid number question');
      deleteQuestion();
      return;
    }
    questionsList.removeAt(number-1);
    questionsList.forEach((element) {
      element.number = questionsList.indexOf(element)+1;
    });

    
    print('question successful deleted');
    HomePage();
  }
}