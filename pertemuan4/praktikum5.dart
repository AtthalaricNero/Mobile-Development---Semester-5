(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main(List<String> args) {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  var record2 = tukar((3, 5));
  print(record2);
}
