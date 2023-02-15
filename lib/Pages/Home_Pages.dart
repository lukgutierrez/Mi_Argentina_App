import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cabin_sharp,
              color: Colors.black,
            ),
            label: "INICIO",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.abc,
                color: Colors.black,
              ),
              label: "NOVEDADES"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.abc,
                color: Colors.black,
              ),
              label: "TELEFONOS"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.abc,
                color: Colors.black,
              ),
              label: "TINA"),
        ],
      ),
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF2CAEE8),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: 110,
                height: 100,
                child: Image(image: AssetImage("assets/logomiarg.png"))),
          ],
        ),
      ),
    );
  }
}
