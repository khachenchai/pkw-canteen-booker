import 'package:flutter/material.dart';
import 'package:pkw_canteen_booker/states/authen.dart';
import 'package:pkw_canteen_booker/states/buyer_service.dart';
import 'package:pkw_canteen_booker/states/create_account.dart';
import 'package:pkw_canteen_booker/states/seller_service.dart';
import 'package:pkw_canteen_booker/utility/my_constant.dart';


final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  '/buyerService': (BuildContext context) => BuyerService(),
  '/sellerService': (BuildContext context) => SellerService(),
};

String initialRoute;

void main() {
  initialRoute = MyConstant.routeAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initialRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}