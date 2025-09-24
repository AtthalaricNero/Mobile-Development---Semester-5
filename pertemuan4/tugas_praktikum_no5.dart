void main(List<String> args) {
  // Anonymous function dasar
  var numbers = [1, 2, 3, 4, 5];

  // Dengan anonymous function
  var doubled = numbers.map((n) => n * 2).toList();
  print(doubled); // [2, 4, 6, 8, 10]

  // Anonymous function dengan body
  var filtered = numbers.where((n) {
    print('Processing $n');
    return n % 2 == 0;
  }).toList();

  // Anonymous function sebagai variabel
  var multiply = (int a, int b) => a * b;
  print(multiply(4, 5)); // 20
}
