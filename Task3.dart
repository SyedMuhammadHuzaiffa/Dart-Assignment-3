import 'dart:io';

class Person{

  late String _firstName;

  late String _lastName;

  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }

  Person();

  String fullName(){

    String fullName = firstName + " " + lastName;

    return fullName;

  }

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }
}


class Student{

  late String major;


  Student(this.major);

  Person person = new Person();

  String fullName(){

    String fullName = person.firstName + " " + person.lastName + " is Studying " + major ;

    return fullName;

  }

}

void main(){

  print("Enter First Name of Student: ");

  String? firstName = stdin.readLineSync();

  print("Enter last Name of Student: ");

  String? lastName = stdin.readLineSync();

  print("Enter major of Student: ");

  String? major = stdin.readLineSync();

  Student student = new Student(major!);

  student.person.firstName = firstName!;

  student.person.lastName = lastName!;

  String fullName =  student.fullName();

  print(fullName);

}