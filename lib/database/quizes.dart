import 'package:quiz_master/models/quiz.dart';
Quiz quiz1 = Quiz(question: 'dart qachon yaratilgan', options: ['1983','1982','1991','1997'], correct: '1983');
Quiz quiz2 = Quiz(question: 'dartda nechta contanta turi bor', options: ['1','2','3','4'], correct: '2');
Quiz quiz3 = Quiz(question: 'dart qanaqa turlarni quvvatlaydi', options: ['static','dynamic','static va dynamic','savol xato'], correct: 'static va dynamic');
Quiz quiz4 = Quiz(question: 'dartnig asosiy freamworki qays', options: ['flutter','java','3','4'], correct: 'flutter');
Quiz quiz5 = Quiz(question: 'flutter nima', options: ['framework','language','3','4'], correct: 'framework');
List<Quiz> questionsList = [quiz1,quiz2,quiz3,quiz4,quiz5];