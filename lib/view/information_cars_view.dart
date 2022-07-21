import 'package:flutter/material.dart';

import '../components/appbar_widget.dart';


class InformationCars extends StatefulWidget {
  const InformationCars({Key? key}) : super(key: key);

  @override
  State<InformationCars> createState() => _InformationCarsState();
}

class _InformationCarsState extends State<InformationCars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(name: 'Informações', colorApp: Colors.blue),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Código do Veículo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFFBFE8F4),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    '#552200',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Marca e Modelo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 84,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black12)),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nibh.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Placa',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Renavam',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 44,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      '0000000',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Container(
                    height: 44,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Text(
                      '0000000',
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Marca e Modelo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black12)),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Dui cursus tortor.'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Marca e Modelo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 44,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black12)),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('Dui cursus tortor.'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/Rectangle20.png'),
                  Image.asset('assets/images/Rectangle20.png'),
                  Image.asset('assets/images/Rectangle20.png'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
