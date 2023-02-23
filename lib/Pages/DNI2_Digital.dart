import 'package:flutter/material.dart';

class DNI2Digital extends StatelessWidget {
  const DNI2Digital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFF2CAEE8),
        title: Text("Dni Digital - Detalle"),
      ),
      body: ListView(
        children: [
          Lista("Número de DNI", "3213123"),
          Lista("Número de trámite", "3213123"),
          Lista("Apellido", "3213123"),
          Lista("Sexo", "3213123"),
          Lista("Nacionalidad", "3213123"),
          Lista("Ejemplar", "3213123"),
          Lista("Número de oficina", "3213123"),
          Lista("Fecha de nacimiento", "3213123"),
          Lista("Fecha de emisión", "3213123"),
          Lista("Fecha de vencimiento", "3213123"),
          Lista("Domicilio", "3213123"),
          Lista("Lugar de nacimiento", "3213123"),
        ],
      ),
    );
  }
}

Lista(dato1, dato2) {
  return ListTile(
    title: Text(
      dato1,
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
    subtitle: Text(
      dato2,
      style: TextStyle(fontWeight: FontWeight.w500),
    ),
  );
}
