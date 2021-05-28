import 'package:flutter/material.dart';

import 'signup.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(15.0, 50.0, 15.0, 0.0),
              child: Center(
                child: Image.asset(
                  "assets/images/STEM.jpeg",
                  fit: BoxFit.contain,
                  height: 150,
                  width: 150,
                ),
              ),
            ),
          ],
        )),
        Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: 'EMAIL',
                      labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.pinkAccent[700]))),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'PASSWORD',
                      labelStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.pinkAccent[700]))),
                  obscureText: true,
                ),
                SizedBox(height: 5.0),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top: 15.0, left: 20.0),
                  child: InkWell(
                    child: Text(
                      'Forget Password',
                      style: TextStyle(
                          color: Colors.pinkAccent[700],
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.pinkAccent,
                    color: Colors.pinkAccent[700],
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins'),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.pinkAccent[700],
                            style: BorderStyle.solid,
                            width: 1.0),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: ImageIcon(AssetImage('assets/facebook.png')),
                        ),
                        Center(
                          // SizedBox(width: 10.0),
                          child: Text('Log In with facebook',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins')),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
        SizedBox(height: 15.0),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            'New to App ?',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
          SizedBox(width: 5.0),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/signup');
            },
            child: Text(
              'Register',
              style: TextStyle(
                  color: Colors.pinkAccent[700],
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline),
            ),
          )
        ])
      ],
    ));
  }
}
