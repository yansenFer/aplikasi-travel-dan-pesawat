// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/pages/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget buildContent(){
      return HomePage();
    }

    Widget CustomButtomNavigation(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30, 
            left: defaultMargin, 
            right: defaultMargin,
            ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_booking.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigationItem(
                imageUrl: 'assets/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          buildContent(),
          CustomButtomNavigation()
        ],
      ),
    );
  }
}