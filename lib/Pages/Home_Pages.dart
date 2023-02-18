import 'package:flutter/material.dart';
import 'package:mi_argentina_licenses/Pages/Documents.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   showUnselectedLabels: true,
      //   unselectedItemColor: Colors.black54,
      //   unselectedFontSize: 13,
      //   fixedColor: Color(0xFFF2CAEE8),
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/hause.png"),
      //           color: Color(0xFFF2CAEE8),
      //         ),
      //         label: "INICIO"),
      //     BottomNavigationBarItem(
      //         icon: SizedBox(
      //             width: 40,
      //             height: 40,
      //             child: Image(image: AssetImage("assets/novedades.png"))),
      //         label: "NOVEDADES"),
      //     BottomNavigationBarItem(
      //         icon: SizedBox(
      //             width: 40,
      //             height: 40,
      //             child: Image(image: AssetImage("assets/telefonos.png"))),
      //         label: "TELEFONOS"),
      //     BottomNavigationBarItem(
      //         icon: SizedBox(
      //             width: 40,
      //             height: 40,
      //             child: Image(image: AssetImage("assets/tina.png"))),
      //         label: "TINA"),
      //   ],
      // ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image(image: AssetImage("assets/miargentina.png")),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text(
                        "Jorge Lopez Moralez",
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        width: 25,
                        height: 25,
                        child: Image(image: AssetImage("assets/check.png")),
                      )
                    ],
                  ),
                  subtitle: Text(
                    "459587345",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 18,
                      height: 10,
                    ),
                    Text(
                      "Identidad Validada",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),

            Divider(
              height: 10.0,
              color: Colors.black,
            ),
            //////////////////////////////////////////////////////////
            listicon("Mi perfil", "assets/profile.png"),
            listicon("Hijos/as asociados", "assets/family.png"),
            listicon("Notificaciones", "assets/timber.png"),
            Divider(
              height: 10.0,
              color: Colors.black,
            ),
            /////////////////////////////////////////////////////////////
            listicon("Acerca de esta aplicación", "assets/information.png"),
            listicon("Términos y condiciones", "assets/c.png"),
            ///////////////////////////////////////////////////////////////
            Divider(
              height: 10.0,
              color: Colors.black,
            ),
            listicon("Cerrar sesión", "assets/exit.png"),
            listicon("Volver al inicio", "assets/hauseicon.png")
          ],
        ),
      ),
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
      body: Container(
        child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Documents()),
              );
            },
            child: Image(image: AssetImage("assets/fondo.jpg"))),
      ),
    );
  }
}

listicon(name, iconts) {
  return ListTile(
    title: Text(name,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
        )),
    leading: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Image(image: AssetImage(iconts)),
    ),
  );
}
