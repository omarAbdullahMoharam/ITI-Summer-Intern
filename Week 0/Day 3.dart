void main(List<String> args) {
// Required Parameters
  int reqFunction(int x) {
    return (2 * x);
  }

  print(reqFunction(10));

// Optional Parameters
  void showData(String name, [int? age]) {
    if (age != null) {
      print("Name : $name , Age : $age");
    } else {
      print("Age is unknown");
    }
  }

  showData("Mohamed", 21);

// Named Parameters
  void getData(String username,
      {String? Fname, String? Lname, required double gpa}) {
    if (Fname != null && Lname != null) {
      print("Username : $gpa , FName : $Fname , LName : $Lname , GPA : $gpa");
    } else {
      print("Username : $gpa , GPA : $gpa");
    }
  }

  getData("OmarAbdullah", Fname: "Omar", Lname: "abdullah", gpa: 3.125);

// Default Parameters
  void show(String name, [int age = 18]) {
    print("Name : $name , Age : $age");
  }

  show("Omar");
  show("Omar", 21);

// Overloading
  int add(int a, int b, {int? c, int? d}) {
    if (c != null && d != null) {
      return a + b + c + d;
    } else if (c != null) {
      return a + b + c;
    } else {
      return a + b;
    }
  }

  print("The Sum is : ${add(10, 20)}");

// ----------------------- OOP ----------------------------

  /*
  person per = new person.full("Mohamed", "me827794@gmail.com", 21);
  per.showPerson();
  */

// Inheritance
  student stu = new student("omar", "omarE@gmail.com", 21, 4, 3.125);
  stu.showStudent();
  stu.abstractFunction();

// Mixin
  Students students = new Students();
  // named constructors
  students.play("FootBall");
  students.study(4);
  students.displayData();
}

// abstract class
abstract class person {
  String? name;
  String? _email;
  int? age;
  // Named Constructor ==> normal constructor and we give him any
  // name we want for example (person.full || person.special)
  person.full(this.name, String email, this.age) {
    _email = email;
  }

  person.special(this.name, String email) {
    _email = email;
  }

  void setEmail(String email) {
    _email = email;
  }

  String? getEmail() {
    return _email;
  }

  void showPerson() {
    print("Name is: $name, Email is: $_email, Age is: $age");
  }

  void abstractFunction() {
    print("Original Function");
  }
}

// must override all variables and functions exists on the parent  abstract class
class student extends person {
  int? grade;
  double? gpa;

  student(super.name, super.email, super.age, this.grade, this.gpa)
      : super.full();

  void showStudent() {
    super.showPerson();
    print("The Grade is : $grade , The GPA is : $gpa");
  }

  @override
  void abstractFunction() {
    print("Instance Function");
  }
}

// ------------------- Mixin ---------------------
mixin Study {
  void study(int hours) {
    print("Student can study for $hours H");
  }
}
mixin Play {
  void play(String kindOfPlay) {
    print("Student can play $kindOfPlay ");
  }
}

// inheritance in Mixin
class Students with Play, Study {
  void displayData() {
    print("Student can study and play");
  }
}
// 🚨🚨Task is to apply this code by yourself 🔻🔻