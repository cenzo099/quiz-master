class Quiz{
  final int _id;
  int _number;
  String question;
  List<String> options;
  String _correct;
  int _selection = -1;

  static int quizCount = 0;

  Quiz._(this.question,this.options,this._correct,this._selection):
        _id=++quizCount, _number=quizCount;

  factory Quiz({required String question , required List<String> options ,required  String correct ,int selection =-1 }){
    if(question.isEmpty){
      throw Exception('question can not be empty');
    }
    if(options.length!=4){
      throw Exception('options must be only 4');
    }
    if(correct.isEmpty){
      throw Exception("Correct cannot be an empty");
    }
    if (selection != -1) {
      if (selection > 0 && selection < 5) {
        throw Exception("Selection must be between 1 and 3");
      }
    }
    return Quiz._(question, options, correct, selection);
  }
  int get id=>_id;
  int get number => _number;
  set number (int number) => _number =number;
  set selection (int selection){
    if(selection>=1&&selection<=4){
      _selection = selection;
    }
  }

  @override
  noSuchMethod(Invocation invocation) {
    print('error');
  }
  @override
  String toString() {
    return '$number.$question \nA.${options[0]}\nB.${options[1]}\nC.${options[2]}\nD.${options[3]}';
  }
  @override
  int get hashCode => Object.hash(id,question);
  @override
  bool operator ==(Object other) {
    return other is Quiz && id == other.id && question == other.question;
  }
  bool checker (int selection){
    if(options[selection-1]==_correct){
      return true;
    }
    return false;
  }
}