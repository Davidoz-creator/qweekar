import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor: Color(0xffdeebfe),
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xffdeedfe),
        // leading: IconButton(
        // onPressed: ()   {}  )

      ),

      body: ListView(
        children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          // height: MediaQuery.of(context).size.height  * .5,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget> [
              Text('Sign Up',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),

              SizedBox(height: 20 ,),
              Text("Create an account, It's free and always will be",
              style: TextStyle(fontSize: 17,
              color: Colors.black45),
              ),

              SizedBox(height: 20 ,),

              Column(
                children: <Widget>[
                  inputFile(label:"Name"),
                  inputFile(label: "Last Name"),
                  inputFile(label:"Email"),
                  inputFile(label: "Password", obscureText: true),
                  inputFile(label:"Confirm Password", obscureText: true),
                ],
              ),
            ],
          ),
              ),
          Container(
            width:  MediaQuery.of(context).size.width * 1,
            child:  Image.asset('assets/background2.png'),
          ),

        ],

      ),
          );



  }
}



//we would be creating another widget fior the next screen
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style:TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      SizedBox(
        height:  5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
              horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color:  Color(0xff1aa095),
            ),
          ),
          border:OutlineInputBorder(
              borderSide: BorderSide(color:  Color(0xff1aa095))
          ),
        ),
      ),
      SizedBox(height: 20.0,)

    ],
  );
}
