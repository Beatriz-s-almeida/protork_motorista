import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformationFiscal extends StatefulWidget {
  const InformationFiscal({Key? key}) : super(key: key);

  @override
  State<InformationFiscal> createState() => _InformationFiscalState();
}


class _InformationFiscalState extends State<InformationFiscal> {
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xFFFFF492)),
          height: 104,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/natalia.png'),
                  maxRadius: 50,
                ),
                Text(
                  'Natalia Souza',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                  readOnly: true,
                  enabled: false,
                  initialValue: '336.182.658-58',
                  decoration: const InputDecoration(
                      labelText: 'CPF', border: OutlineInputBorder())),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                readOnly: true,
                enabled: false,
                initialValue: '40.780.588-6',
                decoration: const InputDecoration(
                    labelText: 'RG', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                readOnly: true,
                enabled: false,
                initialValue: '(14) 99821-6563',
                decoration: const InputDecoration(
                    labelText: 'Celular', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                readOnly: true,
                enabled: false,
                initialValue: 'Irene Souza',
                decoration: const InputDecoration(
                    labelText: 'Contato de emergencia',
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                readOnly: true,
                enabled: false,
                initialValue: '(14) 99621-6365',
                decoration: const InputDecoration(
                    labelText: 'Celular de emergencia',
                    border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
