import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Mahasiswa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Map<String, String>> mahasiswa = [
    {'nama': 'Deni Setiadi', 'nim': 'STI202102464'},
    {'nama': 'Riyana', 'nim': 'STI202102468'},
    {'nama': 'Apik Maulidah Purnaningsih', 'nim': 'STI202102475'},
    {'nama': 'Shabrina Anggarda Paramita Tunismono', 'nim': 'STI202102479'},
    {'nama': 'Faqih Dwi Alfan', 'nim': 'STI202102482'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Mahasiswa'),
      ),
      body: ListView.builder(
        itemCount: mahasiswa.length,
        itemBuilder: (context, index) {
          return Container(
            color: mahasiswa[index]['nama'] == 'Apik Maulidah Purnaningsih' ? Color.fromARGB(255, 78, 178, 81) : Colors.transparent,
            child: ListTile(
              title: Text(mahasiswa[index]['nama']!),
              subtitle: Text('NIM: ${mahasiswa[index]['nim']}'),
            ),
          );
        },
      ),
    );
  }
}
