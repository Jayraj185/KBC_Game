import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbc/ModelEasy.dart';

class True extends StatefulWidget {
  const True({Key? key}) : super(key: key);

  @override
  State<True> createState() => _TrueState();
}

class _TrueState extends State<True> {
  List mony = [
    "10,000",
    "20,000",
    "40,000",
    "80,000",
    "1,60,000",
    "3,20,000",
    "6,40,000",
    "12,80,000",
    "50,00,000",
    "1 Core",
  ];
  int i=0;
  @override
  Widget build(BuildContext context) {
   dynamic data = ModalRoute.of(context)!.settings.arguments;
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
                      padding: EdgeInsets.only(left: 30,top: 150),
                      child: Image.asset("assets/image/win.png",height: 150,width: 150,),
                    )),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 300),
                        child: Text("Your Answer Is Currect",style: TextStyle(fontSize: 20,color: Colors.redAccent),),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 350),
                        child: Text("  You Win\n   $data",style: TextStyle(fontSize: 20,color: Color(0xFFC78640)),),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 470),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              i++;
                            });
                            Navigator.pop(context, 'easy',);
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
                              "Next",
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
