import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatueredBook extends StatelessWidget {
  const FeatueredBook({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        width: 100,
        height: MediaQuery.of(context).size.height / 3.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.testImage),
            )),
      ),
    );
  }
}
