void main(List<String> args) {
  // Function sebagai variabel
  int add(int a, int b) => a + b;
  var operation = add;
  print(operation(5, 3)); // 8

  // Function sebagai parameter
  int calculate(int a, int b, int Function(int, int) op) {
    return op(a, b);
  }

  print(calculate(10, 5, add)); // 15

  // Function return function
  Function createMultiplier(int factor) {
    return (int value) => value * factor;
  }

  var multiplyBy3 = createMultiplier(3);
  print(multiplyBy3(4)); // 12
}
