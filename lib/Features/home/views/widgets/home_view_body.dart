import 'package:bookly_app/Features/home/views/widgets/custom_appbar.dart';
import 'package:bookly_app/Features/home/views/widgets/custom_listviewitem.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), CustomListViewItem()],
    );
  }
}