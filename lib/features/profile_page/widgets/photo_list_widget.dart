import 'package:flutter/material.dart';
import 'package:social_app/constants.dart';

class PhotoListWidget extends StatelessWidget {
  const PhotoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62 * rw(context),
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 45),
          itemBuilder: (context, index) => Container(
                height: 62 * rw(context),
                width: 62 * rw(context),
                margin: const EdgeInsets.only(left: 16),
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Image.asset('assets/photo${index + 1}.png'),
              )),
    );
  }
}
