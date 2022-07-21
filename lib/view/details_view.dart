import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import '../components/appbar_widget.dart';
import '../components/travel_item.dart';
import 'information_cars_view.dart';

class Details extends StatefulWidget {
  final TravelModel item;

  const Details({Key? key, required this.item}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        name: 'Detalhes',
        colorApp: Colors.yellow,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 46,
              decoration: const BoxDecoration(
                color: Color(0xFFFFF492),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.item.title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      widget.item.date_start,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Endereço de Saída',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 84,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            widget.item.details_start,
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Endereço de Saída',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 84,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            widget.item.details_end,
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Veiculos',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              (context),
                              MaterialPageRoute(
                                  builder: (context) =>
                                      (const InformationCars())));
                        },
                        child: Container(
                          height: 84,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Infomações sobre veiculo',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.info,
                                size: 44,
                              )
                            ],
                          ),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Arquivos da Viagem',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Badge(
                            position: BadgePosition.bottomEnd(),
                            badgeContent: Text('10'),

                            child: IconButton(
                                onPressed: () {}, icon: Icon(Icons.document_scanner)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {
                  // Navigator.push((context), MaterialPageRoute(
                  //     builder: (context) => CheckListPage1()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'INICIAR CHECKLIST',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

Information() {}

Checklist() {}
