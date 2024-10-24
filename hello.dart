// void main() {
//   for (int i = 0; i < 10; i++) {
//     print('hello ${i + 1}');
//   }
// }

// void main(){
//   print("hello, world");
// }

// void main(){
//   print();
// }

// void main() {
//   print("5" * 2);
//   print("5" + "2");
//   print(90/(4-1)-4+6*5); //Dart follow BOADMAS
// }

// //data type
// void main() {
//   int a = 5;
//   double b = 3.2;
//   print(a + b);

//   int fval = 4;
//   int sval = 5;
//   print(fval + sval);

//   String name = 'shayan';
//   print(name);

//   bool isLoogedin = true;
//   print(isLoogedin);

//   dynamic x = 10.2;
//   print(x);

//   int z = 54;
//   print(z.isEven);
//   print(z.isNegative);
//   print(z.runtimeType);
// }

// //operator
// void main() {
//   int a = 11;
//   double b = 3;
//   var result = a % b;

//   int a = 9;
//   double b = 2.0;
//   var result = a ~/ b;
//   print(result);
// }

// //variable
// void main() {
//   var x = 22;
//   x = 33;
//   print(x);

//   final y = DateTime.now();
//   print(y);

// //   const z = DateTime.now(); // const will cheque in the compile time
// //   print(z);
// }

// //optional variable
// String? aa;
// void main() {
// //   final a =null; // all variable will be null;
// //   String? x='';//it's not null;

// //   String? y=null;

// //   String? z;
// //   print(z);
// //   z="Shayan";
// //   print(z.length);
// //   z=null;
// // //   print(z.length);// it will give error bcz it is already null

//   print(aa);
//   aa=null;
//   print(aa?.length??0);
//   aa="Hellow";
//   print(aa?.length??1);
// }

// //if statement
// void main() {
// //   int n = 20;
// //   if (n > 0) {
// //     print("+");
// //   } else if (n < 0) {
// //     print("-");
// //   } else {
// //     print("0");
// //   }

// //   String x = 'hello';
// //   int age = 2;
// //   bool isAllowed = false;

// //   // if (age != 18 && isAllowed == true) {
// //   // if (x.isEmpty) {
// //   if (x.startsWith('')) {
// //     print('haha');
// //   } else {
// //     print('nana');
// //   }
// }

// void main(){
//   int age=17;
//   String msg=age>=18?'Adult':'minor';
//   print(msg);
// }

// void main(){
//   String grade='A';
//   String msg;
//   switch(grade){
//     case 'A':
//     case 'B':
//     case 'c':
//       msg='Passed';
//       break;
//     case 'D':
//     case 'E':
//       msg='Failled';
//       break;
//     default:
//       msg='Invalid Grade';
//   }
//   print(msg);
// }

// enum Direction {North, South,East,West}
// void main(){
//   Direction direction=Direction.North;
//   String msg;
//   switch(direction){
//     case Direction.North:
//       msg='Heading North';
//       break;
//     case Direction.South:
//       msg='Heading South';
//       break;
//     case Direction.East:
//       msg='Heading East';
//       break;
//     case Direction.West:
//       msg='Heading West';
//       break;
//     default:
//       msg='Unknown Direction';
//   }
//   print(msg);
// }

//// for loop
// void main(){
//   final n =7;
//   for(int i=0; i<n; i++){
//     if(i%2==0){
//       print('$i is even.');
//     }else if(i==0){
//       print('the number is 0.');
//     }else{
//       print('$i is odd.');
//     }
//   }
// }

// void main(){
//   List<String> fruits=['Mango','Banana','Apple'];
//   for(int i=0; i<fruits.length; i++){
//     print('${i+1}, ${fruits[i]}');
//   }
// }

//// function
// int add(int a, int b){
//   return a+b;
// }
// void main(){
//   int sum =add(4+5,7);
//   print(sum);
// }

// // Anonymous Function
// void main(){
//   const fruits=['Mango','Banana','Apple'];
//   fruits.forEach((item){
//     print(item);
//   });
// }

// // Arrow Function
// int add(int a,int b)=>a+b;
// void main(){
//   print(add(1,4));
// }

// // Named Parameters
// void greet({required String fname, required String lname}) {
//   print('Hi $fname,$lname');
// }

// void main() {
//   greet(fname: 'Jhon', lname: 'Doe');
// }

void describe(String name, [int? age, String? city]) {
  print('Name: $name, Age: ${age ?? 'N/A'}, City: ${city ?? 'N/A'}');
}

void main() {
  describe('Alice'); // Output: Name: Alice, Age: N/A, City: N/A
  describe('Bob', 25); // Output: Name: Bob, Age: 25, City: N/A
  describe('Charlie', 30,
      'New York'); // Output: Name: Charlie, Age: 30, City: New York
}

void greet(String name, {String greeting = 'Hello'}) {
  print('$greeting, $name!');
}

void main() {
  greet('Alice'); // Output: Hello, Alice!
  greet('Bob', greeting: 'Hi'); // Output: Hi, Bob!
}

void printResult(int a, int b, Function operation) {
  print(operation(a, b));
}

int add(int a, int b) => a + b;

void main() {
  printResult(5, 3, add); // Output: 8
}

Function multiplier(int factor) {
  return (int x) => x * factor;
}

void main() {
  var multiplyBy2 = multiplier(2);
  print(multiplyBy2(4)); // Output: 8
}

int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

void main() {
  print(factorial(5)); // Output: 120
}
