import 'package:doctor/constants.dart';

import 'package:flutter/material.dart';
import 'package:doctor/components/home_screen_navbar.dart';

import '../components/doctor_app_grid_menu.dart';
import '../components/top_doctor_list.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenNavbar(),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    style: Theme.of(context).textTheme.headline1,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      const TextSpan(
                        text: '  Find',
                      ),
                      TextSpan(
                        text: ' your doctor',
                        style: Theme.of(context)
                            .textTheme
                            .headline1!
                            .copyWith(color: kGreyColor900),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 56,
                  padding:
                      EdgeInsets.only(right: 8, left: 16, bottom: 5, top: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kGreyColor500),
                  child: TextField(
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: kBlackColor900),
                    cursorHeight: 24,
                    decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.search,
                          color: kBlackColor900,
                        ),
                        suffixIconConstraints:
                            const BoxConstraints(maxHeight: 24),
                        hintText: 'Search Doctor, medicines etc',
                        hintStyle: Theme.of(context).textTheme.headline5!,
                        contentPadding: EdgeInsets.only(bottom: 20),
                        border: InputBorder.none),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const DoctorAppGridMenu(),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      'View all',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: kBlueColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const TopDoctorsList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
