import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app3/login.dart';
import 'package:my_app3/sign up.dart';



void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomeTime(),
));

class HomeTime extends StatefulWidget {
  const HomeTime({Key? key}) : super(key: key);

  @override
  _HomeTimeState createState() => _HomeTimeState();
}

class _HomeTimeState extends State<HomeTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdeebfe),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            height: MediaQuery
                .of(context)
                .size
                .height,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Welcome',

                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Qweekar provides safe, reliable and quick delivery of'
                              " items to you, and help's you discover merchants  around you."
                              ' Use qweekar services for the best courier and sales experience!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/welcome2.png'),
                      ),
                    ),
                  ),
                  Column(children: <Widget>[
                    //-------------------------------------creating the Login page button-----------------------------//
                    MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        //defining the shape
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xff1aa095),
                            ),
                            borderRadius: BorderRadius.circular(50)),
                        child: Text('Log In',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            )
                        )),

                    //------------------------------------------creating the signup page button---------------------------//
                    SizedBox(height: 20.0),
                    MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpPage()));
                        },
                        color: Color(0xff1aa095),
                        //defining the shape
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text('Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            )
                        )),

                  ]),
                ])),
      ),
    );
  }
}

