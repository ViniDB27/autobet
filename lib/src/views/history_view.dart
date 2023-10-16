import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/padding_values.dart';
import '../widgets/footer.dart';
import '../widgets/navigationbar_custom.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> data = [
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
      {
        "id": 1,
        "date": "01/09/2023",
        "categorX": "catX",
        "categoryY": "catY",
        "ritmo": "ritmo z",
        "certeza": "ritmo z",
        "status": "correto z",
      },
    ];

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const NavigationbarCustom(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 120),
          width: size.width,
          child: Column(
            children: [
              Container(
                width: size.width,
                height: 1100,
                padding: PaddingValues.padding(context),
                child: Column(
                  children: [
                    titlePage(),
                    filters(),
                    listHeader(),
                    SizedBox(
                      width: double.infinity,
                      height: 600,
                      child: renderListItens(data),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 265,
                          height: 56,
                          decoration: BoxDecoration(
                              color: Color(0xFF1E88E5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add),
                              Text("Novo Diagnóstico"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  ListView renderListItens(List<Map<String, dynamic>> data) {
    final itensTextStyle = GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
    );

    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (ctx, index) => Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 30),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black,
              width: 1,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(data[index]['id'].toString(), style: itensTextStyle),
            Text(data[index]['date'].toString(), style: itensTextStyle),
            Text(data[index]['categorX'].toString(), style: itensTextStyle),
            Text(data[index]['categoryY'].toString(), style: itensTextStyle),
            Text(data[index]['ritmo'].toString(), style: itensTextStyle),
            Text(data[index]['certeza'].toString(), style: itensTextStyle),
            Text(data[index]['status'].toString(), style: itensTextStyle),
          ],
        ),
      ),
    );
  }

  Container listHeader() {
    final headerTextStyle = GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 16,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 30),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("ID", style: headerTextStyle),
          Text("Data e Hora", style: headerTextStyle),
          Text("CategoriaX", style: headerTextStyle),
          Text("CategoriaY", style: headerTextStyle),
          Text("Ritmo", style: headerTextStyle),
          Text("Certeza", style: headerTextStyle),
          Text("Status", style: headerTextStyle),
        ],
      ),
    );
  }

  Container filters() {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFDEE1FF),
            width: 1,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          searchInput(),
          filtersDropDown(),
        ],
      ),
    );
  }

  Container filtersDropDown() {
    return Container(
      width: 100,
      height: 40,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Filtros"),
          Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }

  Container searchInput() {
    return Container(
      width: 264,
      height: 40,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: const Row(
        children: [
          Icon(Icons.search),
          SizedBox(width: 10),
          Text("Buscar"),
        ],
      ),
    );
  }

  Container titlePage() {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFDEE1FF),
            width: 1,
          ),
        ),
      ),
      child: Center(
        child: Text(
          "Histórico",
          style: GoogleFonts.poppins(
            color: const Color(0xFF1E88E5),
            fontSize: 32,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
