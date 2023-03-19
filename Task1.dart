import 'dart:io';

class Vehicle{

  late String brand;

  late String model;

  late int year;


  Vehicle(this.brand, this.model, this.year);

  void drive(){
    
    print("The Vehicle is being Driven");
    
  }
  
}

class Car extends Vehicle{

  late int noOfDoors;

  Car(this.noOfDoors) : super('', '', 0);

  void drive(){

    print("The Car with $noOfDoors is being Driven");

  }

}

void main(){

  print("Enter Brand of Car: ");

  String? brand = stdin.readLineSync()!;

  print("Enter Model of Car: ");

  String? model = stdin.readLineSync()!;

  print("Enter year of Car: ");

  int? year = int.parse(stdin.readLineSync()!);

  print("Enter No of Doors of Car: ");

  int? doors = int.parse(stdin.readLineSync()!);

  Car car = new Car(doors);

  car.brand = brand;

  car.model = model;

  car.year = year;

  car.drive();

}