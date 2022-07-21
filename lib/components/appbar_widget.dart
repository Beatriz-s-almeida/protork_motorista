import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  final String name;
  final Color colorApp;

  const CustomAppBar({Key? key, required this.name, required this.colorApp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: colorApp,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
          const SizedBox(
            width: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style:
                const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement child
  Widget get child => Container();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(123);
}
