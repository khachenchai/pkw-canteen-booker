import 'package:flutter/material.dart';
import 'package:pkw_canteen_booker/utility/my_constant.dart';
import 'package:pkw_canteen_booker/widgets/show_image.dart';
import 'package:pkw_canteen_booker/widgets/show_title.dart';

class ChooseRoll extends StatefulWidget {
  const ChooseRoll({Key key}) : super(key: key);

  @override
  _ChooseRollState createState() => _ChooseRollState();
}

class _ChooseRollState extends State<ChooseRoll> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyConstant.bgColor,
      appBar: AppBar(
        title: Text("Wow"),
        centerTitle: true,
        backgroundColor: MyConstant.primary,
      ),
      body: ListView(
        children: [
          SizedBox(height: height * 0.07),
          buildBuyer(width),
          SizedBox(height: 5),
          buildText("Buyer"),
          SizedBox(height: height * 0.05),
          buildSeller(width),
          SizedBox(height: 5),
          buildText("Seller")

        ],
      ),
    );
  }

  Row buildText(String text) {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ShowTitle(title: text, textStyle: MyConstant().h1kanit()),
          ],
        );
  }

  Row buildSeller(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(36)),
            color: MyConstant.roll,
          ),
          width: width * 0.5,
          height: width * 0.5,
          child: Padding(
            padding: const EdgeInsets.only(top: 28),
            child: Center(
                child: buildImage(width),
            ),
          ),
        ),
      ],
    );
  }
}

Row buildBuyer(double width) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(36)),
            color: MyConstant.roll),
        width: width * 0.5,
        height: width * 0.5,
        child: Padding(
          padding: const EdgeInsets.only(top: 28),
          child: Center(
              child: Icon(
            Icons.person,
            size: 200,
            color: Colors.white,
          )),
        ),
      ),
    ],
  );
}

  Row buildImage(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(child: ShowImage(path: MyConstant.chef)),
      ],
    );
  }