import 'package:flutter/material.dart';

class Documents extends StatefulWidget {
  const Documents({Key? key}) : super(key: key);

  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  bool _expanded = false;
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
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _expanded = !_expanded;
              });
            },
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
                isExpanded: _expanded,
              ),
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Image(image: AssetImage("assets/image2.jpg"));
                  },
                  body: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  isExpanded: _expanded),
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Image(image: AssetImage("assets/image3.jpg"));
                  },
                  body: Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  isExpanded: _expanded)
            ],
          ),
        ],
      ),
    );
  }
}
