(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var record2 = tukar((3, 5));
  print(record2);

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa;
  mahasiswa = ('Atthalaric Nero Muchtar', 2341720215);
  print(mahasiswa);

  var mahasiswa2 = ('Atthalaric Nero. M', a: 2341720215, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'Atthalaric Nero. M'
  print(mahasiswa2.a); // Prints 2341720215
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
