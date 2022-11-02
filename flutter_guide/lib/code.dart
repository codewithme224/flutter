class Person {
  String name;
  int age;

//  Constructor
  // Person(String inputName, int age) {
  //   name = inputName;
  //   this.age = age;
  // }

  Person({required this.name, required this.age});
}

double addNumbers(double num1, double num2) {
//  print( num1 + num2);
  return num1 + num2;
}

void main() {
  var p1 = Person(name: "John", age: 30);
  var p2 = Person(name: 'Emma', age: 22);

  print(p1.name);
  print(p1.age);
  print(p2.name);
  print(addNumbers(2.2, 4.1));
  print(addNumbers(10, 11));

  // Null safety
  var userName;
}
