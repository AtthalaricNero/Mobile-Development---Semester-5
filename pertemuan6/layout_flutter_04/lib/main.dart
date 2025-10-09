import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard() {
    return SizedBox(
      height: 210,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                '1625 Main Street',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text('My City, CA 99984'),
              leading: Icon(Icons.restaurant_menu, color: Colors.green[500]),
            ),
            const Divider(),
            ListTile(
              title: const Text(
                '(408) 555-1212',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              leading: Icon(Icons.call, color: Colors.green[500]),
            ),
            ListTile(
              title: const Text('costa@example.com'),
              leading: Icon(Icons.contact_mail, color: Colors.green[500]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave', Icons.theaters),
        _tile('The Castro Theater', '429 Castro St', Icons.theaters),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St', Icons.theaters),
        _tile('Roxie Theater', '3117 16th St', Icons.theaters),
        _tile(
          'United Artists Stonestown Twin',
          '501 Buckingham Way',
          Icons.theaters,
        ),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        const Divider(),
        _tile('K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile('Emmy\'s Restaurant', '1923 Ocean Ave', Icons.restaurant),
        _tile('Chaiya Thai Restaurant', '272 Claremont Blvd', Icons.restaurant),
        _tile('La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
      ),
      subtitle: Text(subtitle),
      leading: Icon(icon, color: Colors.blue[500]),
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          /* soal 3*/
          // const Icon(Icons.star, color: Colors.yellow),
          // const Text('41'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.yellow[500]),
              Icon(Icons.star, color: Colors.yellow[500]),
              Icon(Icons.star, color: Colors.yellow[500]),
              Icon(Icons.star, color: Colors.yellow[500]),
              const Icon(Icons.star, color: Colors.black),
              const Text('4,1'),
            ],
          ),
        ],
      ),
    );

    
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Batu Malang adalah sebuah kota wisata yang terletak di Provinsi Jawa Timur, Indonesia.'
        'Kota ini terletak 90 km sebelah barat daya Surabaya atau 15 km sebelah barat laut Malang.'
        'Batu terkenal dengan keindahan alamnya yang menawan, dengan ketinggian sekitar 700-1.700 meter di atas permukaan laut.'
        'dan memiliki suhu udara yang sejuk mencapai 15-19 derajat celcius.'
        'Kota Batu menjadi salah satu destinasi wisata terkemuka di Indonesia.'
        '\n\nNama : Atthalaric Nero. M'
        '\nNim : 2341720215',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Atthalaric Nero. M - 2341720215',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo')),
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/KotaBatu.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      'images/KotaBatu.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      'images/KotaBatu.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            titleSection,
            // buttonSection,
            _buildCard(),
            // _buildList(),
            textSection,
          ],
        ),
      ),
    );
  }
}
