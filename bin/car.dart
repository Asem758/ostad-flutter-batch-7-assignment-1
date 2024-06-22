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

  Car car1 = Car('BMW', 'I7', 2023, 100);
  Car car2 = Car('Ferrari', 'F8', 2021, 150);
  Car car3 = Car('Rolls Royce', 'Spectre', 2024, 200);

  car1.drive(120);
  car2.drive(160);
  car3.drive(210);

  print('Car 1: ${car1.getBrand()} ${car1.getModel()}, Year: ${car1.getYear()}, Miles Driven: ${car1.getMilesDriven()}, Age: ${car1.getAge()}');
  print('Car 2: ${car2.getBrand()} ${car2.getModel()}, Year: ${car2.getYear()}, Miles Driven: ${car2.getMilesDriven()}, Age: ${car2.getAge()}');
  print('Car 3: ${car3.getBrand()} ${car3.getModel()}, Year: ${car3.getYear()}, Miles Driven: ${car3.getMilesDriven()}, Age: ${car3.getAge()}');

  print('Total number of cars objects created: ${Car.numberOfCars}');
}
