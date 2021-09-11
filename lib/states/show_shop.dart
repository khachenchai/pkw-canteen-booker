// import 'dart:ffi';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:pkw_canteen_booker/utility/my_constant.dart';
import 'package:pkw_canteen_booker/widgets/show_image.dart';
import 'package:pkw_canteen_booker/widgets/show_title.dart';

class ShowShop extends StatefulWidget {
  const ShowShop({Key key}) : super(key: key);

  @override
  _ShowShopState createState() => _ShowShopState();
}

class _ShowShopState extends State<ShowShop> {
  bool trigger = true;
  void check() {
    setState(() {
      trigger = !trigger;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi Peaw"),
      ),
      body: Column(
        children: [
          Container(
            color: trigger ? Colors.red : Colors.green,
            width: 500,
            height: 500,
          ),
          SizedBox(height: 30),
          TextButton(onPressed: () => check(), child: Text("ghjvhg"))
        ],
      ),
    );
  }
}

// class CustomCardPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     var radius = 24;

//     var paint = Paint();
//     paint.shader = ui.Gradient.linear(
//       Offset(0, 0), Offset(size.width, size.height), [
//         HSLColor.fromColor(startColor).withLightness(0.8).toColor(), 
//         endColor
//       ]
//     );

//     var path = Path()
//       ..moveTo(0, size.height)
//       ..lineTo(size.width - radius, size.height)
//       ..quadraticBezierTo(
//         size.width, size.height, size.width - radius, size.height - radius)
//       ..lineTo(size.width, size.height - radius)
//       ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
//       ..quadraticBezierTo(-radius, y1, x2, y2)


//   }
//}


// appBar: AppBar(
//         backgroundColor: MyConstant.primary,
//         title: ShowTitle(
//           title: "Restaurant",
//           textStyle: MyConstant().h1kanit(Colors.black),
//         ),
//         centerTitle: true,
//       ),
//       backgroundColor: MyConstant.bgColor,
//       body: SafeArea(
//         child: ListView(
//           children: <Widget>[
//             buildRestaurantList(),
//             buildRestaurantList(),
//             buildRestaurantList(),
//             buildRestaurantList2()
//           ],
//         ),
//       ),
//     );
//   }

//   Container buildRestaurantList() {
//     return Container(
//       margin: EdgeInsets.only(top: 20, right: 10, left: 10),
//       height: 100,
//       child: Card(
//         child: ListTile(
//           tileColor: MyConstant.dark,
//           title: Padding(
//             padding: const EdgeInsets.only(top: 25),
//             child: ShowTitle(
//               title: "Restaurant 1",
//               textStyle: MyConstant().h1kanit(MyConstant.light),
//             ),
//           ),
//           leading: Padding(
//             padding: const EdgeInsets.only(top: 25.0),
//             child: ShowImage(path: MyConstant.image1),
//           ),
//           subtitle: ShowTitle(
//               title: "สวัสดีครับ",
//               textStyle: MyConstant().h2kanit(Colors.black)),
//           // trailing: Padding(
//           //   padding: const EdgeInsets.only(top: 15),
//           //   child: Icon(
//           //     Icons.text_rotation_down,
//           //   ),
//           // )
//           onTap: () => print("Go"),
//         ),
//       ),
//     );
//   }

//   Widget buildRestaurantList2() {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Stack(
//         children: <Widget>[
//           Container(
//             height: 150,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(24),
//               gradient: LinearGradient(
//                 colors: [Colors.blue[200], Colors.white],
//                 begin: Alignment.bottomLeft,
//                 end: Alignment.topRight
//               )
//             ),
//           )
//         ],
//       ),
//     );
//   }