import 'package:flutter/material.dart';
import 'package:social_app/features/profile_page/widgets/floating_button.dart';
import 'package:social_app/features/profile_page/widgets/id_row_widget.dart';
import 'package:social_app/features/profile_page/widgets/photo_list_widget.dart';
import 'package:social_app/features/profile_page/widgets/profile_main_widget.dart';
import 'package:social_app/core/widgets/staggered_grid_widget.dart';
import 'package:social_app/core/widgets/tabs_list_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static List<String> items = ['Сцена', 'Видео', 'Музыка', 'Новости'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          const IdRowWidget(),
          const ProfileMainWidget(),
          const PhotoListWidget(),
          TabsListWidget(items: items),
          const StaggeredGridWidget(items: [
            [
              'assets/stag1.png',
              'assets/stag2.png',
              'assets/stag3.png',
              'assets/stag4.png'
            ]
          ], leftCoef: 0.3, rightCoef: 0.53),
          const FloatingButton()
        ]),
      ),
    );
  }
}
