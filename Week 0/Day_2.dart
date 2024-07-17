void main() {
// Arithmetic Operators
  int n1 = 5;
  int n2 = 20;
  print("Sum : ${n1 + n2}");
  print("sub : ${n1 - n2}");
// Unary operators
  print(n1++);
  print(n1--);
  print(--n1);
  print(++n1);

// Comparison operators
  print(n1 > n2);
  print(n1 != n2);
  print(n1 < n2);

// Addition
  n1 += 10;
  n2 += n1;
  print(n2);

// 9- Control Flow Statements

// if
  if (12 == 12) print('Equality');

// if else
  if (n1 > n2) {
    print("Number1 is bigger than Number2");
  } else if (n1 < n2) {
    print("Number2 is bigger than Number1");
  } else {
    print("Number1 is equal to Number2");
  }

// Switch Case
  String degree = "B";
  switch (degree) {
    case 'A':
      print("Excellent");
      break;

    case 'B':
      print("Very Good");
      break;

    case 'C':
      print("Good");
      break;

    default:
      print("Failed");
      break;
  }
//  10- Loops
// For Loop
  for (int i = 0; i <= 5; i++) {
    print("hi $i");
  }

  // Not fame syntax
  int j = 0;
  bool x = true;
  for (; x;) {
    print("For Loop $j");
    j++;
    x = j <= 5;
  }

// While Loop ==>works 0 or more
  int count = 1;
  while (count <= 5) {
    print("While Iteration ${count++}");
  }

// Do..While => works 1 at least
  int c = 0;
  do {
    print("Do Iteration ${c++}");
  } while (c <= 5);

// 11- Continue & Break

// Break
  for (int i = 0; i <= 5; i++) {
    if (i == 3) break;
    print("hi $i");
  }

// Continue
  for (int i = 0; i <= 5; i++) {
    if (i == 3) continue;
    print("hello $i");
  }

  // 12 - Functions out of the main scope 🔻🔻
}

//  12- Functions

// 1) Anonymous Function

Function anonymousFunction = () {
  print('* Anonymous Function *');
};

// Example
List fullName = ['Omar', 'Abdullah', 'Moharam'];
// showFullName is an anonymous function
void showFullName = () {
  // print using For in range
  for (var index in fullName) {
    print(index);
  }
  // Another way to print using Foreach
  // list.forEach((element) {
  //   print(element);
  // });
};
// {
//The forEach method is a higher-order function provided by the List class in Dart.
// A higher-order function is one that takes another function as an argument or returns a function.
// Here, forEach takes a function as its argument and applies that function to each element in the list.
// }

// ___________________********************* END Of Anonymous *********************___________________

//  2) Named Function :
//  A: void Function
void showYourName() {
  print('Omar As example for void function');
}

// ____________________________
//  B: Return Function
int calculateSum() {
  // ( return int value as an example )
  int a = 2, b = 10;
  return a + b;
}

// ___________________********************* END Of Named *********************___________________

// 3) Arrow Function
var arrowFunction = () => 'Arrow Function By String return Example';

// ___________________********************* END Of Arrow *********************___________________

// 4) Curring Function (function carries function)
Function sum(int a) {
  return (int b) => a + b;
}

// ___________________********************* END Of Curring  *********************___________________

//  5) Higher Order Function (HOF)
// => showEmployeeName is the higher order function
// => employeeRetriever is the callBack Function
// Suppose you have a map contains id of employee and his name
//this functions takes the id and prints the name of the needed ID
void showEmployeeName(
    Map<int, String> employees, void Function(int id) employeeRetriever) {
  int id = 1;
  print(employees[id]);
}
// ___________________********************* END Of Higher Order Function (HOF)  *********************___________________
