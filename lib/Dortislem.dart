import 'package:flutter/material.dart';

class Dortislem extends StatefulWidget {
  @override
  _DortislemState createState() => _DortislemState();
}

class _DortislemState extends State<Dortislem> {
  double ilksayi = 0.0, ikincisayi = 0.0;
  double sonuc = 0.0;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Color(0xFF55C5BE),
                    hintText: "ilk sayiyi girin"),
                keyboardType: TextInputType.number,
                onChanged: (gelendeger) {
                  setState(() {
                    ilksayi = double.parse(gelendeger);
                    print(ilksayi);
                  });
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    fillColor: Color(0xFF55C5BE),
                    hintText: "ikinci sayiyi girin"),
                keyboardType: TextInputType.number,
                onChanged: (gelendeger) {
                  setState(() {
                    ikincisayi = double.parse(gelendeger);
                    print(ikincisayi);
                  });
                },
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                    bottom: 50.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    height: 100.0,
                    width: 100,
                    child: Text("cevap=$sonuc"),
                    decoration: BoxDecoration(
                      color: Color(0xFF55C5BE),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        hesaplafonk("+"),
                        hesaplafonk("-"),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        hesaplafonk("x"),
                        hesaplafonk("/"),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        hesaplafonk("%"),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 65.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ],
    );
  }

  Widget hesaplafonk(String harf) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
      child: FlatButton(
          onPressed: () {
            if (harf == "+") {
              setState(() {
                sonuc = ilksayi + ikincisayi;
                print(sonuc);
              });
            } else if (harf == "-") {
              setState(() {
                sonuc = ilksayi - ikincisayi;
                print(sonuc);
              });
            } else if (harf == "x") {
              setState(() {
                sonuc = ilksayi * ikincisayi;
                print(sonuc);
              });
            } else if (harf == "/") {
              setState(() {
                sonuc = ilksayi / ikincisayi;
                print(sonuc);
              });
            } else if (harf == "%") {
              setState(() {
                sonuc = ilksayi * (ikincisayi / 100);
                print(sonuc);
              });
            }
          },
          color: Color(0xFFF9955C),
          child: Text(harf)),
    );
  }
}
