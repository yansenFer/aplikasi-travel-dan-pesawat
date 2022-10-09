// ignore_for_file: prefer_const_constructors

import 'package:airplane/ui/pages/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget bonusCard(){
      return Container(
        height: 211,
        width: 300,
        padding: EdgeInsets.all(
          defaultMargin,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_card.png'
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0,10),
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                
                      Text(
                        'Laurentia Tanjaya',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icon_plane.png'
                      ),
                    ),
                  ),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
              ),
            )
          ],
        ),
      );
    }

    Widget title(){
      return Container(
        margin: EdgeInsets.only(top: 90),
        child: Text(
          'Big Bonus',
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semibold
          ),
        ),
      );
    }

    Widget subtitle(){
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you credit so that \nyou can buy a flight ticket',
          style: greyTextStyle.copyWith(
            fontSize: 18,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton(){
      return CustomButton(
       title: 'Start Fly Now',
       margin: EdgeInsets.only(top : 50),
       width: 220,
       onPressed: (){
          Navigator.pushNamed(context, '/main');
        },
      );
    }


    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            title(),
            subtitle(),
            startButton(),
          ],
        ),
      ),
    );
  }
}