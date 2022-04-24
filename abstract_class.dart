//Declaring abstract class
abstract class Vehicle {
//Abstract method
  void wheels();
}

class Bike extends Vehicle {
  //Overriding asbtract method
  void wheels() {
    print("Bike has two wheels");
  }
}

class Car extends Vehicle {
  //Overriding abstract method
  void wheels() {
    print("Car has four wheels");
  }
}

void main() {
  Bike b = new Bike(); //Object of Bike class
  Car c = new Car(); //Object of Car class
  b.wheels();
  c.wheels();
}
