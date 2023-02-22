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
            expansionCallback: (int panelIndex, bool isExpanded) {
              setState(() {
                _expanded = !_expanded;
              });
            },
            children: [
              //////////////////////////PANEL DNI DIGITAL/////////////////////////////////
              ExpansionPanel(
                  headerBuilder: (context, isExpanded) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 18,
                          height: 18,
                        ),
                        SizedBox(
                            width: 50,
                            height: 50,
                            child: Image(
                                image: AssetImage("assets/documents.jpg"))),
                        Text(
                          "   DNI Digital: 42563675",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.w600),
                        )
                      ],
                    );
                  },
                  body: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Container(
                          height: 50,
                          width: 300,
                          child: Center(child: Text('VER MI DNI DIGITAL'))),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Color(0xFFF2CAEE8);
                            }
                            return Color(0xFFF2CAEE8);
                          },
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ),
                    ),
                  ),
                  isExpanded: _expanded),
              ///////////////////////////////////////////////////////////////////////////
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return Image(image: AssetImage("assets/image7.jpg"));
                },
                body: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
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
              ),
              ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return Image(image: AssetImage("assets/image3.jpg"));
                },
                body: Container(
                  width: 100,
                  height: 100,
                  color: Colors.amber,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
