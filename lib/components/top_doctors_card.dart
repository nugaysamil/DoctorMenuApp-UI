import 'package:doctor/constants.dart';
import 'package:doctor/models/doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TopDoctorsCard extends StatelessWidget {
  const TopDoctorsCard(List<int> list, {super.key, this.doctor});

  final Doctor? doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Container(
        color: Colors.transparent,
        height: 80,
        width: MediaQuery.of(context).size.width - 32,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 88,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/${doctor!.doctorPicture}'),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: doctor!.doctorName,
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        doctor!.doctorName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                  Text(
                    '${doctor!.doctorSpecialty} • ${doctor!.doctorHospital}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 136,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                RatingBar.builder(
                                  itemSize: 16,
                                  initialRating:
                                      double.parse(doctor!.doctorRating),
                                  maxRating: 1,
                                  direction: Axis.horizontal,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.zero,
                                  itemBuilder: (context, _) => const Icon(
                                    Icons.star,
                                    color: kYellowColor,
                                  ),
                                  onRatingUpdate: (rating) {
                                    debugPrint(rating.toString());
                                  },
                                  unratedColor: kGreenColor,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text('(${doctor!.doctorNumberOfPatient})',
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                              ],
                            ),
                            Container(
                              height: 24,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 13, vertical: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: kGreenLightColor),
                              child: Text(
                                'Open',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: kGreenColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
