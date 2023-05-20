void main() {
  print('Hello, World!');
}


// A function declaration.
int timesTwo(int x) {
  return x * 2;
}

// Arrow syntax is shorthand for `{ return expr; }`.
int timesFour(int x) => timesTwo(timesTwo(x));

// Functions are objects.
int runTwice(int x, int Function(int) f) {
  for (var i = 0; i < 2; i++) {
    x = f(x);
  }
  return x;
}

void main() {
  print('4 times two is ${timesTwo(4)}');
  print('4 times four is ${timesFour(4)}');
  print('2 x 2 x 2 is ${runTwice(2, timesTwo)}');
}


bool isEven(int x) {
  // An if-else statement.
  if (x % 2 == 0) {
    return true;
  } else {
    return false;
  }
}

List<int> getEvenNumbers(Iterable<int> numbers) {
  var evenNumbers = <int>[];

  // A for-in loop.
  for (var i in numbers) {
    // A single line if statement.
    if (isEven(i)) {
      evenNumbers.add(i);
    }
  }

  return evenNumbers;
}

void main() {
  var numbers = List.generate(10, (i) => i);
  print(getEvenNumbers(numbers));
}

import 'dart:math' as math;

void main() {
  print('a single quoted string');
  print("a double quoted string");

  // Strings can be combined by placing them adjacent to each other.
  print('cat' 'dog');

  // Triple quotes define a multi-line string.
  print('''triple quoted strings
are for multiple lines''');

  // Dart supports string interpolation.
  final pi = math.pi;
  print('pi is $pi');
  print('tau is ${2 * pi}');
}


// A list literal.
const lostNumbers = [4, 8, 15, 16, 23, 42];

// A map literal.
const nobleGases = {
  'He': 'Helium',
  'Ne': 'Neon',
  'Ar': 'Argon',
};

// A set literal.
const frogs = {
  'Tree',
  'Poison dart',
  'Glass',
};

void main() {
  print(lostNumbers.last);
  print(nobleGases['Ne']);
  print(frogs.difference({'Poison dart'}));
}