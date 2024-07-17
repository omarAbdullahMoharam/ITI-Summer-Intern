import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> args) async {
  try {
    // var x = await fetchData();
    // print(x);

    // await for (var val in countStream(6)) {
    //   print(val);
    // }

    // await for (var val in generateCountStream(6)) {
    //   print(val);
    // }

    // generateCountStream
  } catch (e) {
    print(e);
  }
}

Future<String> fetchData() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/3'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body)['title'];
  } else {
    throw Exception('Failed to load data ${response.statusCode} ');
  }
}

Stream<int> countStream(int count) async* {
  for (var i = 0; i < count; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<int> generateCountStream(int count) async* {
  yield* countStream(3);
  yield* countStream(7);
  yield* countStream(2);
}


/*
// void main(List<String> arguments) {
//   //KISS
//   // var x = [2, 3, 4, 5];
//   // void multiplyAndPrint(List<int> numbers) {
//   //   var result = 1;
//   //   for (var i = 0; i < numbers.length; i++) {
//   //     result *= numbers[i];
//   //   }
//   //   print("$result");
//   // }

//   // void multiplyAndPrint(List<int> numbers) {
//   //   var result = numbers.reduce(((a, b) => a * b));
//   //   print("$result");
//   // }

//   // multiplyAndPrint(x);
// }

//DRY
// void displayGreetingInEnglish() {
//   print("Hello");
// }

// void displayGreetingInArabic() {
//   print("saba7 el5air ");
// }

// void displayGreetingInSpain() {
//   print("Hola");
// }

// void displayGreeting(greet) {
//   print(greet);
// }

/////////////////////////SOLID///////
/* ///SRP


//Violating SRP
// class User {
//   String name;
//   String email;

//   User(this.email, this.name);

//   void saveToDatabase() {}

//   void sendEmail() {}
// }

///following SRP:
///
///
// class User {
//   String name;
//   String email;


//   User(
//     this.name,
//     this.email,
//   );
// }

// class UserRepository{
//   void saveToDatabase(User usr){
//     //saveUSer
//   }
// }

// class EmailService{
//   void sendEmail(User usr , String mail){
//     //logic
//   }
// }

*/

//without OCP
// class Rectangle {
//   double width;
//   double height;

//   Rectangle(
//     this.width,
//     this.height,
//   );

//   double area() {
//     return width * height;
//   }
// }

// class AreaCalculator {
//   double calc(Rectangle rec) {
//     return rec.area();
//   }
// }

//with OCP
// abstract class Shape {
//   double area();
// }

// class Rectangle implements Shape {
//   double width;
//   double height;

//   Rectangle(
//     this.width,
//     this.height,
//   );

//   @override
//   double area() {
//     return width * height;
//   }
// }

// class Circle extends Shape {
//   double radius;

//   Circle(
//     this.radius,
//   );

//   @override
//   double area() {
//     return 3.14 * radius * radius;
//   }
// }

// class AreaCalculator {
//   double calc(Shape shape) {
//     return shape.area();
//   }
// }

/////////////
///
///LSP

// class Bird {
//   void fly() {}
// }

// class Ostrich extends Bird{
//   @override
//   void fly(){
//     ///
//   }
// }

// class Bird {
//   void move() {}
// }

// class FlayingBird implements Bird {
//   @override
//   void move() {
//     fly();
//   }

//   void fly() {}
// }

// class Ostrich implements Bird {
//   @override
//   void move() {
//     run();
//   }

//   void run() {}
// }

/////////////////////////
///
///
///
// without ISP
abstract class Worker {
  void work();
  void eat();
}

class Programmer implements Worker {
  @override
  void work() {}

  @override
  void eat() {}
}

class Robot implements Worker {
  @override
  void work() {}

  @override
  void eat() {
    throw Exception("Robot can't eat");
  }
}

// with ISP
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

class Programmer implements Workable, Eatable {
  @override
  void work() {}

  @override
  void eat() {}
}

class Robot implements Workable {
  @override
  void work() {}
}

///////////////////////////////////////////////////
// without DIP
class MySQLDatabase {
  void connect() {}
}

class UserRepository {
  final MySQLDatabase database;

  UserRepository(this.database);

  void save() {
    database.connect();
  }
}

// with DIP:
abstract class Database {
  void connect();
}

class MySQLDatabase implements Database {
  @override
  void connect() {}
}

class UserRepository {
  final Database database;

  UserRepository(this.database);

  void save() {
    database.connect();
  }
}
// */