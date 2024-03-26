import 'dart:io';

abstract class Vehicle{
  void start();
  void stop();
}

class Car implements Vehicle{
  @override 
  void start(){
   print("car started");
  }

  @override 
  void stop(){
    print("Car stooped");
  }

  void accelerate(){
    print("Car accelerating");
  }
}

class ElectricCar extends Car{
  @override 
  void start(){
    print("Electric car started");
  }
}

class DataFromFile{
  String fileName;
  DataFromFile(this.fileName);

  void readData(){
    try{
      File file = File(fileName);
      String contents = file.readAsStringSync();
      print("data from file: $contents");
    }catch(e){
      print("Error reading file: $e");
    }
  }
}

void main(){
  DataFromFile dataFromFile = DataFromFile("data.txt");
  dataFromFile.readData();

  ElectricCar electricCar = ElectricCar();

  for(int i = 0; i < 3; i++){
    electricCar.start();
    electricCar.accelerate();
    electricCar.stop();
  }
}