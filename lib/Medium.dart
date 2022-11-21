import 'package:flutter/material.dart';

class Medium extends StatefulWidget {
  const Medium({Key? key}) : super(key: key);

  @override
  State<Medium> createState() => _MediumState();
}

class _MediumState extends State<Medium> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Medium Mode"),
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
