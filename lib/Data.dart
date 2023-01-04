import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kbc/ModelEasy.dart';

import 'Home.dart';

class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  List que2 = [
    "1. Who Is Indian Country Prime Minister ?",
    "2. Which Year Win India In Cricket ODI Cup?",
    "3. KGF & KGF CH-2 Director Name ?",
    "4. Who Is Indian First Prime Ministers ?",
    "5. How Many State In India ?",
    "6. What Is Largest State In India ?",
    "7. Who Is Google CEO in 2022 ?",
    "8. Who Is Owner Of Twitter In 2022 ?",
    "9. What Is State Capital Of India ?",
    "10. Which Team Is Highest Winner In IPL ?",
  ];
  List a2=[
    "A. Rahul Gandhi",
    "A. 2007",
    "A. karan johar",
    "A. Rahul Gandhi",
    "A. 30",
    "A. Gujaraj",
    "A. Tim Cook",
    "A. Sundar Pichai",
    "A. Jambu Kashmir",
    "A. CSK",
  ];
  List b2=[
    "B. Narendr Modi",
    "B. 2015",
    "B. S.S.Rajamouli",
    "B. Narendr Modi",
    "B. 28",
    "B. Maharashtra",
    "B. Satya Nadella",
    "B. Alone Musk",
    "B. Gujarat",
    "B. MI",
  ];
  List c2=[
    "C. Javaharlal Naheru",
    "C. 2011",
    "C. Orson Welles",
    "C. Javaharlal Naheru",
    "C. 29",
    "C. Rajasthan",
    "C. Sundar Pichai",
    "C. Tim Cook",
    "C. Delhi",
    "C. KKR",
  ];
  List d2=[
    "D. Kejriwal",
    "D. 2019",
    "D. Prashanth Neel",
    "D. Kejriwal",
    "D. 31",
    "D. Uttar Pradesh",
    "D. Shantanu Narayan",
    "D. Arvind Krishna",
    "D. Mumbai",
    "D. RR",
  ];

  List Mque2 = [
    "1. The International Literacy Day is observed on",
    "2. The language of Lakshadweep. a Union Territory of India, is",
    "3. World Health Day is observed on",
    "4. Bahubali festival is related to",
    "5. World Water Day is observed on",
    "6. Ghototkach in Mahabharat was the son of",
    "7. The first month of the Indian national calendar is",
    "8. Rath Yatra is famous festival at",
    "9. The Komark Temple is dedicated to",
    "10. Meenakshi Temple is in",
  ];
  List ma = [
    "A. Sep 8",
    "A. Tamil",
    "A. Apr 7",
    "A. Islam",
    "A. June 26",
    "A. Duryodhana",
    "A. Chaitra",
    "A. Ayodhya",
    "A. Vishnu",
    "A. Puri",
  ];
  List mb = [
    "B. Nov 28",
    "B. Hindi",
    "B. Mar 6",
    "B. Hinduism",
    "B. March 22",
    "B. Arjuna",
    "B. Magha",
    "B. Mathura",
    "B. Shiva",
    "B. Madurai",
  ];
  List mc = [
    "C. May 2",
    "C. Malayalam",
    "C. Mat I5",
    "C. Buddhism",
    "C. Nov 15",
    "C. Yudhishthir",
    "C. Phalguna",
    "C. Ambaji",
    "C. Sun- God",
    "C. Chennai",
  ];
  List md = [
    "D. Sep 22",
    "D. Telugu",
    "D. Apr 28",
    "D. Jainism",
    "D. Dec 2",
    "D. Bhima",
    "D. Vaishakha",
    "D. Puri",
    "D. Krishna",
    "D. Trivandrum",
  ];

  List Eque3 = [
    "1. Thillana is a format of",
    "2. The headquarters of the Sahitya Academy is at",
    "3. Kathak is a classical dance of",
    "4. The book of the Parsis is",
    "5. Which of the following is a dance-drama",
    "6. Boat Race is a popular sport in",
    "7. The folk theatre of Karnataka is",
    "8. The national song of India was composed by",
    "9. The National Anthem was first sung in the year",
    "10. Our National Anthem is",
  ];
  List ea = [
    "A. Kuchipudi",
    "A. Mumbai",
    "A. Manipur",
    "A. Torah",
    "A. Odissi",
    "A. Orissa",
    "A. Bhagawat Mela",
    "A. Bankim Chandra Chatterji",
    "A. 1911",
    "A. Jhanda Uncha Rahe Hamara",
  ];
  List eb = [
    "B. Odissi",
    "B. Chennai",
    "B. North India",
    "B. Bible",
    "B. Manipuri",
    "B. Karnataka",
    "B. Yakshagana",
    "B. Jai Shankar Prasad",
    "B. 1935",
    "B. Jana Gana Mana",
  ];
  List ec = [
    "C. Bharathatyarn",
    "C. New Delhi",
    "C. Tarnil Nadu",
    "C. Gita",
    "C. Bharat Natyam",
    "C. Kerala",
    "C. Bhavai",
    "C. Rabindranath Tagore",
    "C. 1913",
    "C. Sare Jaha Se Accha,",
  ];
  List ed = [
    "D. Kathak",
    "D. Kolkata",
    "D. Kerala",
    "D. Zend Avesta",
    "D. Kathakali",
    "D. Tamil Nadu",
    "D. Koodiattam",
    "D. Iqbal",
    "D. 1936",
    "D. Vande Mataram",
  ];

  List<easymodel> Data = [];
  List<easymodel2> Data2 = [];
  List<easymodel3> Data3 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Select Any One"),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
          ),
          body: Center(
            child: Stack(
              children: [
                Container(
                  height: 850,
                  width: double.infinity,
                  color: Colors.purple[900],
                  child: Image.asset("assets/image/data.webp",fit: BoxFit.fill,),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 280),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                            for(int i=0; i<que2.length; i++)
                              {
                                easymodel data = easymodel(
                                  que1: que2[i],
                                  a: a2[i],
                                  b: b2[i],
                                  c: c2[i],
                                  d: d2[i],
                                );
                                Data.add(data);
                              }

                            Navigator.pushNamed(context, 'easy',arguments: Data);
                          },
                          child: button("EASY")
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                            onTap: (){
                              for(int i=0; i<que2.length; i++)
                              {
                                easymodel2 data2 = easymodel2(

                                  que2: Mque2[i],
                                  a2: ma[i],
                                  b2: mb[i],
                                  c2: mc[i],
                                  d2: md[i],
                                );
                                Data2.add(data2);
                              }
                              Navigator.pushNamed(context, 'medium',arguments: Data2);
                            },
                            child: button("MEDIUM")
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                            onTap: (){
                              for(int i=0; i<que2.length; i++)
                              {
                                easymodel3 data3 = easymodel3(

                                  que3: Eque3[i],
                                  a3: ea[i],
                                  b3: eb[i],
                                  c3: ec[i],
                                  d3: ed[i],
                                );
                                Data3.add(data3);
                              }
                              Navigator.pushNamed(context, 'hard',arguments: Data3);
                            },
                            child: button("HARD")
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
