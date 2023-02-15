import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black54,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/hause.png")), label: "INICIO"),
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image(image: AssetImage("assets/novedades.png"))),
              label: "NOVEDADES"),
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image(image: AssetImage("assets/telefonos.png"))),
              label: "TELEFONOS"),
          BottomNavigationBarItem(
              icon: SizedBox(
                  width: 40,
                  height: 40,
                  child: Image(image: AssetImage("assets/tina.png"))),
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
