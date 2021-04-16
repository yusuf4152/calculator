import 'package:flutter/material.dart';

class Usalma extends StatefulWidget {
  @override
  _UsalmaState createState() => _UsalmaState();
}

class _UsalmaState extends State<Usalma> {
  int ussualinacak = 0;
  int usderecesi = 0;
  int cevap = 1;
  String sonradegisecek = "";
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 30.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Color(0xFF55C5BE),
                    hintText: "üssünü almak istediğiniz sayıyı girin",
                  ),
                  onChanged: (yazilandeger) {
                    setState(() {
                      ussualinacak = int.parse(yazilandeger);
                      print("usssualinacak= $ussualinacak");
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, left: 30.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Color(0xFF55C5BE),
                    hintText: "kaç derece üssünü almak istersiniz",
                  ),
                  onChanged: (yazilandeger) {
                    setState(() {
                      usderecesi = int.parse(yazilandeger);
                      print("üs derecesi=$usderecesi");
                    });
                  },
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              OutlinedButton(
                  onPressed: () {
                    setState(() {
                      for (int i = 0; i < usderecesi; i++) {
                        cevap = ussualinacak * cevap;
                      }
                      sonradegisecek = cevap.toString();
                      ussualinacak = 0;
                      usderecesi = 0;
                      cevap = 1;
                    });
                  },
                  child: Text(
                    "hesapla",
                    style: TextStyle(color: Colors.black),
                  )),
              SizedBox(
                height: 20.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF9955C),
                  borderRadius: BorderRadius.circular(120.0),
                ),
                width: 250.0,
                height: 250.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 55.0,
                    ),
                    Text(
                      "cevap:",
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 40.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 12.0, left: 8.0),
                      child: Text(
                        sonradegisecek,
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
