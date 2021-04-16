import 'package:calculator/Dortislem.dart';
import 'package:calculator/Faktoriyel.dart';
import 'package:calculator/KarekokBulma.dart';
import 'package:calculator/Usalma.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Mainclass());
  }
}

class Mainclass extends StatefulWidget {
  @override
  _MainclassState createState() => _MainclassState();
}

class _MainclassState extends State<Mainclass> {
  List<Widget> sayfalar = [];
  int aktifbodyno = 0;
  @override
  void initState() {
    super.initState();
    sayfalar = [
      Dortislem(),
      Faktoriyel(),
      KarekokBulma(),
      Usalma(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF55C5BE),
            size: 30.0,
          ),
          onPressed: () {},
        ),
        title: Text(
          "fonkiyonel hesap makinesi",
          style: TextStyle(
            color: Color(0xFF55C5BE),
            fontSize: 16.0,
          ),
        ),
      ),
      body: Center(child: sayfalar[aktifbodyno]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Color(0xFF55C5BE),
        unselectedItemColor: Color(0xFFF9955C),
        type: BottomNavigationBarType.fixed,
        currentIndex: aktifbodyno,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            title: Text("dört işlem"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_downward_rounded,
            ),
            title: Text("faktöriyel"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exposure_minus_2,
            ),
            title: Text("karekök"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.superscript,
            ),
            title: Text("üs"),
          )
        ],
        onTap: (gelensayi) {
          setState(() {
            aktifbodyno = gelensayi;
            print(aktifbodyno);
          });
        },
      ),
    );
  }
}
