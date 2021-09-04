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
  static String routeShowShop = '/showShop';

  //Image
  static String image1 = 'images/image1.png';
  static String image2 = 'images/image2.png';
  static String avatar = 'images/avatar.png';
  static String chef = 'images/chef.png';

  //Color
  static Color bgColor = Color(0xffdefff2);
  static Color primary = Color(0xffa8cc44);
  static Color dark = Color(0xff769b05);
  static Color light = Color(0xffdcff75);
  static Color roll = Color(0xff4D4D4D);

  //Style
  TextStyle h1Style(Color color) => TextStyle(
    fontSize: 24,
    color: color,
    fontWeight: FontWeight.bold
  );
  TextStyle h2Style(Color color) => TextStyle(
    fontSize: 18,
    color: color,
    fontWeight: FontWeight.w700
  );
  TextStyle h3Style(Color color) => TextStyle(
    fontSize: 14,
    color: color,
    fontWeight: FontWeight.normal
  );
  TextStyle h1kanit(Color color) => GoogleFonts.kanit(
    fontSize: 24,
    color: color,
    fontWeight: FontWeight.bold
  );
  TextStyle h2kanit(Color color) => GoogleFonts.kanit(
    fontSize: 18,
    color: color,
    fontWeight: FontWeight.w600
  );
  TextStyle h3kanit(Color color) => GoogleFonts.kanit(
    fontSize: 14,
    color: color,
    fontWeight: FontWeight.normal
  );

  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
    primary: MyConstant.primary,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}