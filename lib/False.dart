import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class False extends StatefulWidget {
  const False({Key? key}) : super(key: key);

  @override
  State<False> createState() => _FalseState();
}

class _FalseState extends State<False> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Center(child: Padding(
                      padding: EdgeInsets.only(left: 30),
                      child: Image.asset("assets/image/lose.png",height: 150,width: 150,),
                    )),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 200),
                        child: Text("  Opps!",style: TextStyle(fontSize: 20,color: Color(0xFFD4D4FF)),),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 300),
                        child: Text("     Sorry You Are\n   The Lose Game",style: TextStyle(fontSize: 20,color: Color(0xFFD4D4FF)),),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 450),
                        child: Text("",style: TextStyle(fontSize: 20,color: Color(0xFFC78640)),),
                      ),
                    ),
                    Center(
                      child: Padding(
                          padding: EdgeInsets.only(top: 470,left: 30),
                          child: InkWell(
                            onTap: (){
                              Navigator.popAndPushNamed(context, 'data',);
                            },
                            child: Container(
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: Color(0xFF1E1F23),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "Try Again",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Color(0xFFd6D6D6)
                                ),
                              ),
                            ),
                          )
                      ),
                    ),
                  ],
                ),
              ),

            ),
          ),
        )
    );
  }
}
