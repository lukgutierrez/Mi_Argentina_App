import 'package:flutter/material.dart';

class Documents extends StatelessWidget {
  const Documents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFF2CAEE8),
        title: Text("Mis documentos"),
      ),
      body: Column(
        children: [
          Card(
            child: Image(image: AssetImage("assets/image2.jpg")),
          ),
          Card(
            child: Image(image: AssetImage("assets/image3.jpg")),
          ),
          Card(
            child: Image(image: AssetImage("assets/image4.jpg")),
          ),
          ExpansionPanelList(
            children: [
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Text("heloo");
                  },
                  body: Text("pioo")),
            ],
          )
        ],
      ),
    );
  }
}
