import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {

  //NOTE :0. Available 1. Selected 2. Unavailable
  final int status;

  const SeatItem({ Key? key, required this.status }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    backgroundColor(){
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return KUnavailableColor;
        default:
          return KUnavailableColor;
      }
    }

    borderColor(){
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return KUnavailableColor;
        default:
          return KUnavailableColor;
      }
    }  
    
    child(){
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU ',
              style: whiteTextStyle.copyWith(
                fontWeight: semibold,
              ),   
             ), 
            );
        case 2:
          return SizedBox();
        default:
          return SizedBox();      
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
          width: 2,
        ),
      ),
      child: child(),
    );
  }
}