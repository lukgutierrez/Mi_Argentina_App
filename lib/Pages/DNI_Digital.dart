import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:intl/intl.dart';
import 'package:mi_argentina_licenses/Pages/DNI2_Digital.dart';

class DNIDigital extends StatefulWidget {
  const DNIDigital({Key? key}) : super(key: key);

  @override
  State<DNIDigital> createState() => _DNIDigitalState();
}

class _DNIDigitalState extends State<DNIDigital> {
  final List<String> imagedni = [
    ///PROBLEMT////////
    'assets/.jpg',
    'assets/.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String _FechaActual = DateFormat("dd/MM/yyyy HH:mm", 'es_ES').format(now);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [Icon(Icons.refresh)],
        backgroundColor: Color(0xFFF2CAEE8),
        title: Text("Dni Digital"),
      ),
      body: Column(
        children: [
          Divider(
            height: 20,
            color: Colors.transparent,
          ),
          Text(
            "Última actualización:" + _FechaActual,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black54),
          ),
          Container(
            height: 300,
            child: CarouselSlider.builder(
                unlimitedMode: true,
                slideBuilder: (index) {
                  return Container(
                      alignment: Alignment.center,
                      child: Image(image: AssetImage(imagedni[index])));
                },
                slideTransform: FlipHorizontalTransform(),
                slideIndicator: CircularSlideIndicator(
                  padding: EdgeInsets.only(bottom: 32),
                ),
                itemCount: imagedni.length),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DNI2Digital()),
              );
            },
            leading: SizedBox(
              width: 35,
              height: 35,
              child: Image(
                image: AssetImage("assets/phone2.png"),
              ),
            ),
            title: Text("Ver detalle de mi DNI Digital"),
          ),
          ListTile(
            leading: ImageIcon(
              AssetImage("assets/telefonos.png"),
              size: 40,
            ),
            title: Text("Mesa de ayuda"),
          )
        ],
      ),
    );
  }
}
