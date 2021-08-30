import 'package:flutter/material.dart';
import 'package:pkw_canteen_booker/utility/my_constant.dart';

class ChooseRoll extends StatefulWidget {
  const ChooseRoll({ Key key }) : super(key: key);

  @override
  _ChooseRollState createState() => _ChooseRollState();
}

class _ChooseRollState extends State<ChooseRoll> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: Text("Wow"),),
        body: Center(
          child: Text("Hi", style: MyConstant().h1kanit(),),
        ),
      ),
    );
  }
}