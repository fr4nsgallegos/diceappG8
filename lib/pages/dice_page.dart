import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, backgroundColor: Colors.red),
      appBar: AppBar(
        title: Text("Dice App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                //PRIMERA FORMA DE APLICAR BORDE CIRCULAR A MI CONTAINER
                borderRadius: BorderRadius.circular(20),
                // borderRadius: BorderRadius.only(
                //   topRight: Radius.circular(20),
                //   topLeft: Radius.circular(50),
                // ),

                //SEGUNDA FORMA (En ésta se tranforma en un círculo)
                // shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(16),
              // color: Colors.red,
              width: 200,
              height: 200,
              child: Image.asset("assets/images/dice$n.png"),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (n == 1) {
                      n = 6;
                    } else {
                      n--;
                    }
                    setState(() {});
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(
                  width: 32,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (n == 6) {
                      n = 1;
                    } else {
                      n++;
                    }
                    setState(() {});
                  },
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                n = Random().nextInt(6) + 1;
                setState(() {});
              },
              child: Text("Random"),
            ),
          ],
        ),
      ),
    );
  }
}
