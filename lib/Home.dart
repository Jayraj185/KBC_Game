import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbc/Data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("KBC GAME"),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
          ),
          body: Center(
            child: Container(
              color: Colors.deepPurple.shade900,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(height:double.infinity,width:double.infinity,child: Image.asset("assets/image/kbc.jpg",fit: BoxFit.fill,)),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 500),
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, 'data');
                        },
                        child: button("PLAY"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    );

  }

}
Widget button(String name)
{
  return Container(
    height: 60,
    width: 200,
    decoration:BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.deepPurple,
            Colors.deepPurple.shade900
          ],
        ),
        borderRadius: BorderRadius.circular(30)
    ),
    alignment: Alignment.center,
    child: Text("$name",style: TextStyle(color: Colors.white,fontSize: 25),),
  );
}
