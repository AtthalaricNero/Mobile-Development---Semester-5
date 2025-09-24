// Menggunakan Record - cara terbaru
(String, int) getPersonInfo() {
  return ('Atthalaric Nero', 2341720215);
}

// Dengan named fields
({String name, int nim}) getPersonInfoNamed() {
  return (name: 'Atthalaric Nero', nim: 2341720215);
}

void main() {
  var (name, nim) = getPersonInfo();
  print('Name: $name, NIM: $nim');
  
  var info = getPersonInfoNamed();
  print('Name: ${info.name}, NIM: ${info.nim}');
}

List<dynamic> getCoordinates() {
  return [10.5, 20.3, 'Jakarta'];
}

void main() {
  var coords = getCoordinates();
  print('X: ${coords[0]}, Y: ${coords[1]}, City: ${coords[2]}');
}

Map<String, dynamic> getUserData() {
  return {
    'name': 'Atthalaric Nero',
    'nim': 2341720215,
    'active': true
  };
}

void main() {
  var user = getUserData();
  print('Name: ${user['name']}, NIM: ${user['nim']}');
}

class PersonInfo {
  final String name;
  final int nim;
  
  PersonInfo(this.name, this.nim);
}

PersonInfo getPersonData() {
  return PersonInfo('Atthalaric Nero', 2341720215);
}