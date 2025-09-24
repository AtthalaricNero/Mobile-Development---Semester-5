void main(List<String> args) {
  String greet(String name, int age) {
    return 'Hello $name, you are $age years old';
  }

  // Pemanggilan: greet('John', 25)

  String greet2(String name, [int? age]) {
    return age != null ? 'Hello $name, $age' : 'Hello $name';
  }
  // Pemanggilan: greet('John') atau greet('John', 25)

  String greet3({required String name, int age = 18}) {
    return 'Hello $name, you are $age years old';
  }

  // Pemanggilan: greet(name: 'John', age: 25)

  String greet4(String name, {int age = 18, String? city}) {
    return 'Hello $name from $city, age $age';
  }

  // Pemanggilan: greet('John', age: 25, city: 'Jakarta')
}
