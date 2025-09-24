int globalVar = 10;

void testScope() {
  int localVar = 20;

  void innerFunction() {
    int innerVar = 30;
    print(globalVar); // ✅ Bisa akses
    print(localVar); // ✅ Bisa akses
    print(innerVar); // ✅ Bisa akses
  }

  innerFunction();
  // print(innerVar); // ❌ Error! Out of scope
}

Function makeCounter() {
  int count = 0; // Variabel lokal

  return () {
    count++; // Closure "mengingat" variabel count
    return count;
  };
}

void main() {
  var counter1 = makeCounter();
  var counter2 = makeCounter();

  print(counter1()); // 1
  print(counter1()); // 2
  print(counter2()); // 1 (instance terpisah)
}
