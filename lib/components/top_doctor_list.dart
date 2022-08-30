import 'package:doctor/components/top_doctors_card.dart';
import 'package:doctor/models/doctor.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TopDoctorsList extends StatelessWidget {
  const TopDoctorsList({super.key});



  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: topDoctors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: TopDoctorsCard(doctor: topDoctors[index]),
        );
      },
    );
  }
}
