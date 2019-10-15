import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Homework Flutter 03/ video 5',
      home: LoginUI(),
    ),
  );
}

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: CustomPaint(
                painter: ShapePainter(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 52.0,
                left: 20.0,
              ),
              child: Text(
                'Developer\nSAU',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Indie Flower',
                  fontSize: 50.0,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 32.0,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 220.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      //height: 200.0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 10.0,
                        child: Column(
                          //child of card can input one widget only
                          children: <Widget>[
                            SizedBox(
                              height: 24.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.0,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: 'Input Email',
                                  labelStyle: TextStyle(
                                    color: Colors.deepOrange[200],
                                  ),
                                  icon: Icon(
                                    Icons.mail,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 18.0,
                              ),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Input Password',
                                  labelStyle: TextStyle(
                                    color: Colors.deepOrange[200],
                                  ),
                                  icon: Icon(
                                    Icons.lock,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 120.0,
                          child: RawMaterialButton(
                            onPressed: () {},
                            fillColor: Colors.deepOrange,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                            ),
                            elevation: 3.0,
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 16.0,
                            ),
                          ),
                        ),
                        RawMaterialButton(
                          onPressed: (){},
                          fillColor: Color(0xFF3B5998),
                          shape: CircleBorder(),
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            color: Colors.white.withOpacity(1.0),
                            size: 18.0,
                          ),
                          padding: EdgeInsets.all(16.0),
                          elevation: 3.0,
                        ),
                        RawMaterialButton(
                          onPressed: (){},
                          fillColor: Color(0xFF1BCAFF),
                          shape: CircleBorder(),
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white.withOpacity(1.0),
                            size: 18.0,
                          ),
                          padding: EdgeInsets.all(16.0),
                          elevation: 3.0,
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Divider(
                      height: 4.0,
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Do not have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Colors.deepOrangeAccent,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*--------------------------------------------------*/
class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    // define a center point of circle, radius and color
    final paint = Paint();
    var dummyRec = Rect.fromLTRB(0.0, 0.0, size.width, size.height);
    /*----------------------------------------------*/
    //creat a fist circle
    var center1 = Offset(size.width * 0.8, size.height * 0.05);
    var r1 = size.width / 4;
    paint.shader = LinearGradient(
      colors: [
        Colors.deepOrange[200],
        Colors.deepOrange[400],
        Colors.deepOrange,
      ],
      stops: [
        0.1,
        0.3,
        0.8,
      ],
      begin: FractionalOffset.topLeft,
      end: FractionalOffset.bottomRight,
    ).createShader(dummyRec);
    canvas.drawCircle(center1, r1, paint);
    //creat a second circle
    var center2 = Offset(size.width * 0.2, size.height * 0.1);
    var r2 = size.width / 2;
    paint.shader = LinearGradient(
      colors: [
        Colors.deepOrange[200],
        Colors.deepOrange[400],
        Colors.deepOrange,
      ],
      stops: [
        0.2,
        0.4,
        0.7,
      ],
      begin: FractionalOffset.topLeft,
      end: FractionalOffset.bottomRight,
    ).createShader(dummyRec);
    canvas.drawCircle(center2, r2, paint);
    //creat a third circle
    var center3 = Offset(size.width * 1.1, size.height * 0.95);
    var r3 = size.width / 2;
    paint.shader = LinearGradient(
      colors: [
        Colors.deepOrange,
        Colors.deepOrange[400],
        Colors.deepOrange[200],
      ],
      stops: [
        0.5,
        0.8,
        0.9,
      ],
      begin: FractionalOffset.topLeft,
      end: FractionalOffset.bottomRight,
    ).createShader(dummyRec);
    canvas.drawCircle(center3, r3, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
