void main() {
  //----------object creation----------

  //----------object 1----------
  Car c = Car();
  c.setSpeed(10);
  c.move();

  //----------object 2----------
  Car c2 = Car();
  c2.setSpeed(-10);
  c2.move();

  //----------object 3----------
  Car c3 = Car();
  c3.setSpeed(80);
  c3.move();
}

//===================Custom Exception=================
class InvalidSpeedException implements Exception {
  final String message;
  InvalidSpeedException(this.message);

  @override
  String toString() {
    return "InvalidSpeedException: $message";
  }
}

//===================Abstract class===================
abstract class Vehicle {
  var _speed = 0; // Private variable with default value

  void move(); // Abstract method

  //-----------exception handling when set speed-----------
  void setSpeed(int speed) {
    try {
      if (speed < 0) {
        throw InvalidSpeedException(
          "Speed Cann't be a negative number. Give a positive number.",
        );
      } else {
        _speed = speed;
      }
    } catch (e) {
      print(e);
    }
  }

  //-----------getter method-----------
  int getSpeed() {
    return _speed;
  }
}

//===================Car subclass===================
class Car extends Vehicle {
  void move() {
    if (_speed > 0) {
      print("The car is moving at ${getSpeed()} km/h");
    } else {
      return;
    }
  }
}
