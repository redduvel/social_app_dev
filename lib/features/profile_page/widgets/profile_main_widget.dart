import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_app/constants.dart';
import 'package:social_app/core/widgets/add_icon.dart';

class ProfileMainWidget extends StatelessWidget {
  const ProfileMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Widget renderButton({required String title}) {
      return Container(
        padding: EdgeInsets.symmetric(
            horizontal: 16 * rw(context), vertical: 8 * rw(context)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: HexColor('#171717')),
        child: Text(
          title,
          style: getStyle(
              fontSize: 12,
              height: 18 / 12,
              fontWeight: FontWeight.w500,
              color: HexColor('#FFFFFF')),
        ),
      );
    }

    return Padding(
        padding:
            EdgeInsets.fromLTRB(20, 12 * rw(context), 27, 18 * rw(context)),
        child: Row(
          children: [
            Container(
              height: 100 * rw(context),
              width: 100 * rw(context),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/profile_photo.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned(bottom: 0, right: 0, child: AddIcon())
                ],
              ),
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _renderTabs(
                          count: 16,
                          title: 'Моментов',
                          alignment: Alignment.centerLeft),
                      _renderTabs(
                          count: 12,
                          title: 'Друзей',
                          alignment: Alignment.center),
                      _renderTabs(
                          count: 75,
                          title: 'Дружит',
                          alignment: Alignment.centerRight),
                    ],
                  ),
                  SizedBox(height: 26 * rw(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      renderButton(title: 'Публикация'),
                      SizedBox(width: 24 * rw(context)),
                      renderButton(title: 'Написать'),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  Widget _renderTabs(
      {required int count,
      required String title,
      required Alignment alignment}) {
    return Expanded(
        child: Align(
      alignment: alignment,
      child: Column(
        children: [Text(count.toString()), Text(title)],
      ),
    ));
  }
}
