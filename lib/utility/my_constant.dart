import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyConstant {
  
  //General
  static String appName = 'PKW Canteen Booker';
  
  //Route
  static String routeAuthen = '/authen';
  static String routeCreateAccount = '/createAccount';
  static String routeBuyerSurvice = '/buyerService';
  static String routeSellerSurvice = '/sellerService';
  static String routeChooseRoll = '/chooseRoll';

  //Image
  static String image1 = 'images/image1.png';
  static String image2 = 'images/image2.png';
  static String avatar = 'images/avatar.png';

  //Color
  static Color primary = Color(0xffa8cc44);
  static Color dark = Color(0xff769b05);
  static Color light = Color(0xffdcff75);

  //Style
  TextStyle h1Style() => TextStyle(
    fontSize: 24,
    color: dark,
    fontWeight: FontWeight.bold
  );
  TextStyle h2Style() => TextStyle(
    fontSize: 18,
    color: dark,
    fontWeight: FontWeight.w700
  );
  TextStyle h3Style() => TextStyle(
    fontSize: 14,
    color: dark,
    fontWeight: FontWeight.normal
  );
  TextStyle h1kanit() => GoogleFonts.kanit(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.bold
  );
  TextStyle h2kanit() => GoogleFonts.kanit(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.w600
  );
  TextStyle h3kanit() => GoogleFonts.kanit(
    fontSize: 14,
    color: dark,
    fontWeight: FontWeight.normal
  );

  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
    primary: MyConstant.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}