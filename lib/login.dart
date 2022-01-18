import 'package:flutter/material.dart';
import 'package:my_app3/sign%20up.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
         // onPressed: ()   {}

      ),

      body: Container(
        height:MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Column(
                  children: [
                    Text('Login',
                    style: TextStyle(fontSize:30, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text('Login to your account',
                    style: TextStyle(
                      fontSize: 17,
                      color:Color(0xff1aa095),
                    ),)
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child:Column(
                    children: <Widget>[
                      inputFile(label: "Email"),
                      inputFile(label: "Password", obscureText:  true)
                    ]
                  ),



                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text("You don't have an account?"),
                    TextButton(
                      onPressed:() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                        child: Text("Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),)
                    )
                  ],
                ),
                Container(
                  // padding: EdgeInsets.only(top: 100),
                  // height: MediaQuery.of(context).size.height  *  .3,
                  width:  MediaQuery.of(context).size.width * 1,
                  child:  Image.asset('assets/background.png'),
                ),


                   ], ),
                  ),



              ],
            )),

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