import 'package:flutter/material.dart';
import 'package:pkw_canteen_booker/utility/my_constant.dart';
import 'package:pkw_canteen_booker/widgets/show_title.dart';

class ShowShop extends StatefulWidget {
  const ShowShop({Key key}) : super(key: key);

  @override
  _ShowShopState createState() => _ShowShopState();
}

class _ShowShopState extends State<ShowShop> {
  bool trigger = false;
  void check() {
    setState(() {
      trigger = !trigger;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 0,
              color: trigger ? Colors.red.withOpacity(0.3) : MyConstant.bgColor,
              child: Row(
                mainAxisAlignment: trigger ? MainAxisAlignment.end : MainAxisAlignment.center,
                children: [
                  ShowTitle(title: trigger ? "False" : "True", textStyle: MyConstant().h1Style(trigger ? Colors.red : Colors.indigo[900])),
                ],
              ),
            ),
            SizedBox(height: 15,),
            TextButton(onPressed: () => check(), 
            child: ShowTitle(title: "Wow", textStyle: MyConstant().h1Style(MyConstant.dark),))
          ],
        ),
      ),
    );
  }
}

