import 'dart:math';
import 'package:flutter/material.dart';

class KarekokBulma extends StatefulWidget {
  @override
  _KarekokBulmaState createState() => _KarekokBulmaState();
}

class _KarekokBulmaState extends State<KarekokBulma> {
  String sonradegisecek = "";
  double gelensayi = 0.0;
  double koku = 0;
  int gelensayi0siz = 0;
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
                    hintText: "karekökünü bulmak istediğin sayıyı gir",
                  ),
                  onChanged: (yazilandeger) {
                    setState(() {
                      gelensayi = double.parse(yazilandeger);
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
                      koku = sqrt(gelensayi);
                      sonradegisecek = koku.toString();
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
                      "sayının karekökü:",
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
