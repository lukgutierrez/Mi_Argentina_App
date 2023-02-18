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
          ExpansionPanelList(
            children: [
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Image(image: AssetImage("assets/image7.jpg"));
                  },
                  body: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  isExpanded: false),
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Image(image: AssetImage("assets/image2.jpg"));
                  },
                  body: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  isExpanded: false),
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Image(image: AssetImage("assets/image3.jpg"));
                  },
                  body: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  isExpanded: false),
            ],
          ),
        ],
      ),
    );
  }
}
