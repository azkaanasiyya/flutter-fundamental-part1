import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: const Text(
                    'Wisata Museum Satwa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    // Menambahkan buttonSection
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Menambahkan teks dengan sub-poin
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Museum Satwa di Jatim Park 2 ini merupakan museum bertaraf internasional, '
            'dengan memiliki koleksi satwa yang sangat lengkap dengan dibalut konsep yang sangat modern. '
            'Jika ketika berada di Batu Secret Zoo kita akan menyaksikan hewan-hewan yang masih hidup, '
            'berbeda ketika berada di Museum Satwa kita akan mendapati hewan-hewan yang sudah diawetkan namun tampak sangat nyata. '
            'Koleksi satwa yang ada di Museum Satwa ini diantaranya:',
            softWrap: true,
          ),
          SizedBox(height: 15), // Menambah jarak sebelum sub-poin
          Text('• Hewan-hewan pemangsa'),
          Text('• Aneka unggas'),
          Text('• Binatang air'),
          Text('• Reptil'),
          Text('• Galeri kupu-kupu'),
          Text('• Aneka hewan purba'),
          SizedBox(
            height: 15,
          ),
          Text('Azka Anasiyya Haris | 2241720157')
        ],
      ),
    );

    return MaterialApp(
      title: 'Azka Anasiyya Haris | 2241720157',
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Flutter layout demo'),
        // ),
        body: ListView(
          children: [
            Image.asset(
              'images/museum.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ),
      ),
    );
  }

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
}
