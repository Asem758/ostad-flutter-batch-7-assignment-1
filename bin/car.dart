class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(
      this.brand,
      this.model,
      this.year,
      this.milesDriven) {
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    DateTime now = DateTime.now();
    return now.year - year;
  }
}

void main() {

  Car carOne = Car('BMW', 'I7', 2023, 100);
  Car carTwo = Car('Ferrari', 'F8', 2021, 150);
  Car carThree = Car('Rolls Royce', 'Spectre', 2024, 200);

  carOne.drive(120);
  carTwo.drive(160);
  carThree.drive(210);

  print('Car One: ${carOne.getBrand()} ${carOne.getModel()}, Year: ${carOne.getYear()}, Miles Driven: ${carOne.getMilesDriven()}, Age: ${carOne.getAge()}');
  print('Car Two: ${carTwo.getBrand()} ${carTwo.getModel()}, Year: ${carTwo.getYear()}, Miles Driven: ${carTwo.getMilesDriven()}, Age: ${carTwo.getAge()}');
  print('Car Three: ${carThree.getBrand()} ${carThree.getModel()}, Year: ${carThree.getYear()}, Miles Driven: ${carThree.getMilesDriven()}, Age: ${carThree.getAge()}');

  print('Total number of cars objects created: ${Car.numberOfCars}');
}
