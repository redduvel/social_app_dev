import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_app/constants.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomRight,
        child: Container(
          padding:
              EdgeInsets.fromLTRB(0, 10 * rw(context), 35, 10 * rw(context)),
          child: FloatingActionButton(
            backgroundColor: HexColor('#171717'),
            onPressed: () {},
            child: const Icon(
              Icons.add,
              size: 35,
            ),
          ),
        ));
  }
}
