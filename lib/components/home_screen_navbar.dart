import 'package:doctor/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class HomeScreenNavbar extends StatelessWidget {
  const HomeScreenNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: Svg('assets/svg/icon-burger.svg', size: Size(24, 24)),
            ),
          ),
        ),
         // ignore: sized_box_for_whitespace
         Container(
          width: 36,
          height: 36,
          child: const CircleAvatar(
            backgroundColor: kBlueColor,
            backgroundImage: NetworkImage(
                'https://4.bp.blogspot.com/-XL1PE9TV3cI/Yhx38ZdITJI/AAAAAAAABnk/Ayq5SF4HYQMuuKKA4yM9G0aFRgCuXyD_gCK4BGAYYCw/s113/IMG_5542%2Bblack%2Bwhite.jpg'),
          ),
        )
      ],
    );
  }
}
