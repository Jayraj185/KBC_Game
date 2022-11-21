import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbc/ModelEasy.dart';

class Easy extends StatefulWidget {
  const Easy({Key? key}) : super(key: key);

  @override
  State<Easy> createState() => _EasyState();
}

class _EasyState extends State<Easy> {
  List uans = [];
  int i = 0, point = 0;
  List answer = [
    "B. Narendr Modi",
    "C. 2011",
    "D. Prashanth Neel",
    "C. Javaharlal Naheru",
    "C. 29",
    "C. Rajasthan",
    "C. Sundar Pichai",
    "B. Alone Musk",
    "C. Delhi",
    "B. MI",
  ];
  List<monylist> monyl = [];
  List colore = [
    Colors.purpleAccent,
    Colors.blue.shade800,
    Colors.red.shade300,
    Colors.yellow.shade600,
    Colors.lightGreenAccent.shade700,
    Colors.lightBlueAccent.shade400,
    Colors.red.shade800,
    Colors.indigo.shade700,
    Colors.blue.shade900,
    Colors.deepOrangeAccent,
  ];
  List text = [
    Color(0xFFEFFFE8),
    Color(0xFFEFFFE8),
    Color(0xFF000000),
    Color(0xFF000000),
    Color(0xFF000000),
    Color(0xFFFFFFFF),
    Color(0xFF000000),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
    Color(0xFFFFFFFF),
  ];

  @override
  Widget build(BuildContext context) {
    List<easymodel> data =
        ModalRoute.of(context)!.settings.arguments as List<easymodel>;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  uans.clear();
                  i = 0;
                  point = 0;
                });
              },
              icon: Icon(Icons.refresh))
        ],
        title: Text("Easy Mode"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 410,
                width: double.infinity,
                color: colore[i],
                alignment: Alignment.center,
                child: Text(
                  "${data[i].que1}",
                  style: TextStyle(
                      color: text[i],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Expanded(
                  child: Container(
                    height: 480,
                    width: double.infinity,
                    color: Color(0xFF000000),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 90),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    uans.add(data[i].a);
                                    if (i != 9) {
                                      if (uans[i] == answer[i]) {
                                        point++;
                                        Navigator.pushNamed(context, 'true',
                                            arguments: point * 10000);
                                      } else {
                                        Navigator.pushNamed(context, 'false');
                                      }
                                    }
                                  });
                                  if (i < 9) {
                                    setState(() {
                                      i++;
                                    });
                                  }
                                  if (i == 9) {
                                    result();
                                  }
                                },
                                child: Container(
                                  height: 45,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1E1F23),
                                      borderRadius: BorderRadius.circular(10)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${data[i].a}",
                                    style: TextStyle(
                                        color: Color(0xFFA8A8A9), fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20, top: 90),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    uans.add(data[i].b);
                                    if (i != 9) {
                                      if (uans[i] == answer[i]) {
                                        point++;
                                        Navigator.pushNamed(context, 'true',
                                            arguments: point * 10000);
                                      } else {
                                        Navigator.pushNamed(context, 'false');
                                      }
                                    } else {
                                      Navigator.pushNamed(context, 'end');
                                    }
                                  });
                                  if (i < 9) {
                                    setState(() {
                                      i++;
                                    });
                                  }
                                  if (i == 9) {
                                    result();
                                  }
                                },
                                child: Container(
                                  height: 45,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1E1F23),
                                      borderRadius: BorderRadius.circular(10)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${data[i].b}",
                                    style: TextStyle(
                                        color: Color(0xFFA8A8A9), fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 21,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    uans.add(data[i].c);
                                    if (i != 9) {
                                      if (uans[i] == answer[i]) {
                                        point++;
                                        Navigator.pushNamed(context, 'true',
                                            arguments: point * 10000);
                                      } else {
                                        Navigator.pushNamed(context, 'false');
                                      }
                                    } else {
                                      Navigator.pushNamed(context, 'end');
                                    }
                                  });
                                  if (i < 9) {
                                    setState(() {
                                      i++;
                                    });
                                  }
                                  if (i == 9) {
                                    result();
                                  }
                                },
                                child: Container(
                                  height: 45,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1E1F23),
                                      borderRadius: BorderRadius.circular(10)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${data[i].c}",
                                    style: TextStyle(
                                        color: Color(0xFFA8A8A9), fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    uans.add(data[i].d);
                                    if (i != 9) {
                                      if (uans[i] == answer[i]) {
                                        point++;
                                        Navigator.pushNamed(context, 'true',
                                            arguments: point * 10000);
                                      } else {
                                        Navigator.pushNamed(context, 'false');
                                      }
                                    } else {
                                      Navigator.pushNamed(context, 'end');
                                    }
                                  });
                                  if (i < 9) {
                                    setState(() {
                                      i++;
                                    });
                                  }
                                  if (i == 9) {
                                    result();
                                  }
                                },
                                child: Container(
                                  height: 45,
                                  width: 160,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF1E1F23),
                                      borderRadius: BorderRadius.circular(10)),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${data[i].d}",
                                    style: TextStyle(
                                        color: Color(0xFFA8A8A9), fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void result() {
    for (int i = 0; i < answer.length; i++) {
      if (uans[i] == answer[i]) {
        point++;
      }
    }
  }
}
