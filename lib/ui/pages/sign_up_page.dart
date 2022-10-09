// ignore_for_file: prefer_const_constructors

import 'package:airplane/ui/pages/widgets/custom_button.dart';
import 'package:airplane/ui/pages/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title(){

      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
        'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          ),
        ),
      );
    } 

    Widget inputSection(){
      Widget nameInput(){
        return CustomTextFormField(
          title: 'Full name', 
          hinText: 'Your full name',
        );
      }

      Widget emailInput(){
        return CustomTextFormField(
          title: 'Email Address',
          hinText: 'Your email address',
        );
      }

      Widget passwordInput(){
        return CustomTextFormField(
          title: 'Password', 
          hinText: 'Your password',
          obscureText: true,
        );
      }
      
      Widget hobbyInput(){
        return CustomTextFormField(
          title: 'Hobby', 
          hinText: 'Your hobby',
        );
      }

      Widget submitButton(){
        return CustomButton(
          title: 'Get Started',
          onPressed: (){
              Navigator.pushNamed(context, '/bonus');
          },
        );
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget tacButton(){
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 50, bottom: 73),
          child: Text(
            'Terms And Conditions',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline
            ),
          ),
        );
      }

    return Scaffold(
      backgroundColor:  kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton()
          ],
        ),
      ),
    );
  }
}