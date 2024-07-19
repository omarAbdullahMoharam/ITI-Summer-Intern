// ignore_for_file: unused_local_variable, dead_code

void main(List<String> args) {
// Numbers
  double a = 1.5;
  int b = 2;
  // double+int==> double
  //double
  double calc = a + b;
  //NUM
  num years = 21;
  num months = 7;
  num temp = years + months;
  print("""Summation is  $temp and age is $years year and $months months
  ------------------------""");
//Strings
  String FirstName = "Omar";
  print("""First name is $FirstName , my age is $temp
  ------------------------""");
// Boolean
  bool compMax = 5 < 10;
  print("""$compMax
  ------------------------""");
// dynamic , var , Object
  Object ob1 = 'abc';
  print("""$ob1
  ------------------------""");
  ob1 = 999;
  print("""$ob1
  ------------------------""");
  ob1 = true;
  print("""$ob1
  ------------------------""");
  // var flag = true;
  // // Error
  // // {
  // // flag = 0;
  // // flag = "asddd";}
  // flag = false;
  dynamic flag = true;
  print("""$flag
  ------------------------""");
  flag = 0;
  print('''$flag
  ------------------------''');
  flag = "omar@";
  print("""$flag
  ------------------------""");
  flag = false;
  print('''$flag
  ------------------------''');
//JSON
  /// Map , List , Set => collection of data
  /// Map => key value pairs
  Map<String, dynamic> nums = {"name": 'omar', 'age': 21, 'salary': 15900};
  print("""$nums
  ------------------------""");
// List ==> let duplication
  List<int> listtt = [1, 2, 3, 1, 5];
  print('''$listtt
  ------------------------''');
// Set ==> prevent duplication
  // ignore: equal_elements_in_set
  Set<int> sett = {1, 2, 3, 1, 5};
  print('''$sett
  ------------------------''');
// final , const
//==> in CompileTime
  const n = 0;
//===>in runTime
  final time = DateTime.now();
  print('''$time
  ------------------------''');
// Runes
  //////////////////

//Logical Operators
// && , || , !, => ?:  => ??  ,, is , is!

  num x = 0.0;
  print(!false || (30 < 9 && x is double) || true || false);
  print("------------------------");
  // var isHere = true;

  // if (!isHere) {
  //   ////
  //   ////
  //   ///
  // }

// ?:  , ??
  var comparisonChecker = 5 > 10 ? "5 is bigger than 10" : 900;
  print('''${comparisonChecker is String}
  ------------------------''');

  print('''$comparisonChecker
  ------------------------''');

// ??

  dynamic userName = null;

  var displayName = !(userName == null) ? userName : "user";

  print('''$displayName
  ------------------------''');
// casting =>  as
}
