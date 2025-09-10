bool isPrime(int number) {
  if (number < 2) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;

  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) return false;
  }
  return true;
}

void printPrimeNumbers(int n, String nama, int nim) {
  for (int i = 0; i < n; i++) {
    if (isPrime(i)) {
      print('$nama $nim');
    } else {
      print(i);
    }
  }
}


void main(List<String> args) {
  int n = 201;
  String nama = "Atthalaric Nero Muchtar";
  int nim = 2341720215;
  
  printPrimeNumbers(n, nama, nim);
}
