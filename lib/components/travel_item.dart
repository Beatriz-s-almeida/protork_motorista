import 'package:flutter/material.dart';
import 'package:protork_motorista/view/details_view.dart';


class TravelModel {
  final String title;
  final String date;
  final String start_address;
  final String end_address;
  final String date_start;
  final String date_end;
  final String details_start;
  final String details_end;

  TravelModel({
    required this.title,
    required this.date,
    required this.end_address,
    required this.start_address,
    required this.date_start,
    required this.date_end,
    required this.details_start,
    required this.details_end,
  });
}

class TravelItem extends StatefulWidget {
  final TravelModel item;

  const TravelItem({Key? key, required this.item}) : super(key: key);

  @override
  State<TravelItem> createState() => _TravelItemState();
}

class _TravelItemState extends State<TravelItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 292,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              height: 56,
              margin: EdgeInsets.zero,
              decoration: const BoxDecoration(
                  color: Color(0xFFFFF492),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.item.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      widget.item.date,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 30,
                                child: Stack(children: [
                                  const Positioned(
                                    top: 0,
                                    bottom: 20,
                                    left: 0,
                                    right: 0,
                                    child: Icon(
                                      Icons.circle_outlined,
                                      color: Colors.yellow,
                                    ),
                                  ),
                                  Positioned(
                                      top: 25,
                                      bottom: 0,
                                      right: 14,
                                      left: 14,
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.yellow),
                                        width: 1,
                                      ))
                                ]),
                              ),
                              Column(
                                children: [
                                  Text(
                                    widget.item.start_address,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    widget.item.date_start,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15,
                            width: 30,
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 0,
                                    bottom: 0,
                                    right: 14,
                                    left: 14,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.yellow),
                                      width: 1,
                                    ))
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 50,
                                width: 30,
                                child: Stack(
                                  children: [
                                    const Positioned(
                                      top: 20,
                                      bottom: 0,
                                      right: 0,
                                      left: 0,
                                      child: Icon(
                                        Icons.add_location_outlined,
                                        color: Colors.yellow,
                                      ),
                                    ),
                                    Positioned(
                                        top: 0,
                                        bottom: 25,
                                        right: 14,
                                        left: 14,
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              color: Colors.yellow),
                                          width: 1,
                                        ))
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    widget.item.end_address,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    widget.item.date_start,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 100,
                        height: 26,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(6)),
                        child: const Center(
                          child: Text(
                            'Andamento',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              width: 300,
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.yellow),
                  ),
                  onPressed: () {
                    Navigator.push(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => Details(item: widget.item,)));
                  },
                  child: const Text(
                    'DETALHES',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
