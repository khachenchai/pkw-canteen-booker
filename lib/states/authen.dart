import 'package:flutter/material.dart';
import 'package:pkw_canteen_booker/utility/my_constant.dart';
import 'package:pkw_canteen_booker/widgets/show_image.dart';
import 'package:pkw_canteen_booker/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusRedEye = true;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          behavior: HitTestBehavior.opaque,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: buildImage(size),
              ),
              SizedBox(
                height: 30,
              ),
              buildAppName(),
              buildUser(size),
              buildPassword(size),
              buildLogin(size),
              buildCreateAccount()
            ],
          ),
        ),
      ),
    );
  }

  Row buildCreateAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: 'No Account ? ',
          textStyle: MyConstant().h3Style(MyConstant.dark),
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, MyConstant.routeCreateAccount),
          child: Text('Create Account'))
      ],
    );
  }

  Row buildLogin(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 16),
          width: size * 0.6,
          child: ElevatedButton(
            style: MyConstant().myButtonStyle(),
            onPressed: () {},
            child: Text('Login'),
          ),
        ),
      ],
    );
  }

  Row buildUser(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h3Style(MyConstant.dark),
              labelText: 'User :',
              prefixIcon: Icon(Icons.account_circle),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyConstant.dark),
                  borderRadius: BorderRadius.circular(30)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyConstant.light),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
      ],
    );
  }

  Row buildPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            obscureText: statusRedEye,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    statusRedEye = !statusRedEye;
                  });
                },
                icon: statusRedEye
                    ? Icon(Icons.remove_red_eye, color: MyConstant.dark)
                    : Icon(Icons.remove_red_eye_outlined,
                        color: MyConstant.dark),
              ),
              labelStyle: MyConstant().h3Style(MyConstant.dark),
              labelText: 'Password :',
              prefixIcon: Icon(Icons.lock),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyConstant.dark),
                  borderRadius: BorderRadius.circular(30)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyConstant.light),
                  borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
      ],
    );
  }

  Row buildAppName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(
          title: MyConstant.appName,
          textStyle: MyConstant().h1Style(MyConstant.dark),
        ),
      ],
    );
  }

  Row buildImage(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(width: size * 0.6, child: ShowImage(path: MyConstant.image1)),
      ],
    );
  }
}
