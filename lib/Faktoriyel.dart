import 'package:flutter/material.dart';

class Faktoriyel extends StatefulWidget {
  @override
  _FaktoriyelState createState() => _FaktoriyelState();
}

class _FaktoriyelState extends State<Faktoriyel> {
  int fakt = 0;
  int faktsonuc = 1;
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
                    hintText: "faktöriyelini almak istediğiniz sayıyı girin",
                  ),
                  onChanged: (yazilandeger) {
                    setState(() {
                      fakt = int.parse(yazilandeger);
                      print("fakt=$fakt");
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
                      for (int i = 1; i <= fakt; i++) {
                        faktsonuc = faktsonuc * i;
                      }
                      print("faktsonuc=$faktsonuc");
                      sonradegisecek = faktsonuc.toString();
                      faktsonuc = 1;
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
                      "sayının faktöriyel cevabı",
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
