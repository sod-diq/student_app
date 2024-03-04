import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
// create a student class with props 5 list of students, display on UI
// 2. calculate the ave score of the total student

void main() {
  runApp(StudentApp());
}

class StudentApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: MainUI(),
    );
  }
}
 
class MainUI extends StatelessWidget{
     const MainUI({super.key}); 

     @override
     Widget build(BuildContext context){


        List<Student> students = [
          Student(name: 'Paul', age: 23, score: 50.0),
          Student(name: 'Kande', age: 56, score: 50.0),
          Student(name: 'Dan', age: 80, score: 100.0),
          Student(name: 'Salam', age: 12, score: 120.0),
          Student(name: 'Segun', age: 18, score: 40.0),
        ];


        double scoreSum =students.map((student) => student.score).reduce((value, element) => value+element);


        List<Widget> widgets = students.map((student) => ListTile(
            title: Text(student.name),
            subtitle: Text("Age: ${student.age}"),
            trailing: Text("Score: ${student.score}"),
        ),).toList();




      return Scaffold(
       appBar: AppBar(),
       body: Column(
         children: [
           Card(child: Text("Avarage: ${(scoreSum/ students.length) * 100 }"),),
           Column(
            children: widgets,
            ),
         ],
       ) ,
      ); 
     }


     
 }


class Student {
  final String name;
  final int age;
  late final double score;

  Student ({required this.name, required this.age, required this.score}) ;
}

