import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../components/travel_item.dart';
import 'information_motorista_view.dart';


class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Pro Tork',
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Colors.black)),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Text('Viagens',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black)),
              Text('Fiscal',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.separated(
                itemBuilder: (context, i) {
                  TravelModel item = list[i];
                  return TravelItem(item: item);
                },
                separatorBuilder: (context, i) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemCount: list.length),
            ListView.separated(itemBuilder: (context, i){return InformationFiscal();}, separatorBuilder: (context, i){return SizedBox( height: 10,);}, itemCount: 1)
          ],
        ),
      ),
    );
  }

  List<TravelModel> list = [
    TravelModel(
      title: "00001",
      date: "02/06/2022",
      start_address: 'Garça,SP',
      end_address: "Marilia,SP",
      date_start:'02 de junho, 8h',
      date_end:'03 de junho, 9h',
      details_start: 'Rua Penido Rosa - nº 50, Parque Industrial, Siqueira Campos - PR',
      details_end: 'Vila Libanesa, Centro nº 350, Fortaleza - CE',
    ),
    TravelModel(
      title: "00002",
      date: "04/06/2022",
      start_address: 'Marilia, SP',
      end_address: "Oriente, SP",
      date_start:'04 de junho, 8h',
      date_end:'05 de junho, 9h',
      details_start: 'Rua Penido Rosa - nº 50, Parque Industrial, Siqueira Campos - PR',
      details_end: 'Vila Libanesa, Centro nº 350, Fortaleza - CE',
    ),
    TravelModel(
      title: "00003",
      date: "09/06/2022",
      start_address: 'Presidente Prudente, SP',
      end_address: "Vera Cruz, SP",
      date_start:'09 de junho, 8h',
      date_end:'10 de junho, 9h',
      details_start: 'Rua Penido Rosa - nº 50, Parque Industrial, Siqueira Campos - PR',
      details_end: 'Vila Libanesa, Centro nº 350, Fortaleza - CE',
    ),
  ];
}
