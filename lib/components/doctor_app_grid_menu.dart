import 'package:doctor/models/doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class DoctorAppGridMenu extends StatelessWidget {
  const DoctorAppGridMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, mainAxisSpacing: 8),
      padding: const EdgeInsets.all(4),
      itemCount: doctorMenu.length,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          child: Container(
            constraints: const BoxConstraints(maxHeight: 81),
            child: Column(
              children: [
                Container(
                  constraints: const BoxConstraints(
                    minHeight: 56,
                    minWidth: 56,
                    maxHeight: 69,
                    maxWidth: 69,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Svg('assets/svg/${doctorMenu[index].image}'))),
                ),
                const SizedBox(
                  height: 4,
                ),
                Expanded(
                  child: Text(
                    doctorMenu[index].name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
