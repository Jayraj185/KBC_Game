import 'package:flutter/material.dart';

class Hard extends StatefulWidget {
  const Hard({Key? key}) : super(key: key);

  @override
  State<Hard> createState() => _HardState();
}

class _HardState extends State<Hard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Hard Mode"),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
          ),
          body: Center(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    height: 450,
                    width: 500,
                    color: Colors.pink.shade300,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 450,
                    width: 500,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
