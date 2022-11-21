import 'package:flutter/material.dart';

class End extends StatefulWidget {
  const End({Key? key}) : super(key: key);

  @override
  State<End> createState() => _EndState();
}

class _EndState extends State<End> {
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
                      padding: EdgeInsets.only(left: 30,top: 150),
                      child: Image.asset("assets/image/win.png",height: 150,width: 150,),
                    )),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 300),
                        child: Text("Congratulations You Are Winner This Game",style: TextStyle(fontSize: 20,color: Color(0xFF5B5F62)),),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 350),
                        child: Text("  Game Over",style: TextStyle(fontSize: 20,color: Color(0xFFFFFFFF)),),
                      ),
                    ),
                    Center(
                      child: Padding(
                          padding: EdgeInsets.only(top: 470),
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
                                "Restart",
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
