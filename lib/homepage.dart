import 'package:flutter/material.dart';

import 'categories.dart';
import 'doctor_;ist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List doctorList=[
    ["lib/images/doctor1.jpg",4.2,"Dr. Cristiana Lopez","Theraphist",5],
    ["lib/images/doctor2.jpg",4.5,"Dr. Jennifer Marie","Neurologist",7],
    ["lib/images/doctor3.jpg",4.7,"Dr. Steve Jonathon","Sergeon",8],
    ["lib/images/doctor4.jpg",4.3,"Dr. Shane Watson","Cardiologist",4],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Column(
          children: [
            //app bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Tridip Bhowmik",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: Colors.teal.shade200),
                      height: 50,
                      child: Image.asset("lib/icons/man.png"),
                    ),
                  )
                ],
              ),
            ),
            //card
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                height: 170,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.pink.shade200,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      child: Image.asset("lib/icons/doctor.png"),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "How do you feel?",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Fill out your medical\ncard right now.",
                          style: TextStyle(fontSize: 17),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Get Started"),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.only(left: 30, right: 30),
                            textStyle: TextStyle(fontSize: 20),
                            backgroundColor: Colors.indigoAccent.shade200,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "How can we help you?",
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        size: 30,
                      )),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            //categorie
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Caregories(icon: "lib/icons/tooth.png", catname: "Dentist"),
                  Caregories(
                      icon: "lib/icons/medicine.png", catname: "Medicine"),
                  Caregories(icon: "lib/icons/surgeon.png", catname: "Surgeon")
                ],
              ),
            ),

            SizedBox(height: 15,),
            //text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor List",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade800),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(fontSize: 17,color: Colors.grey.shade600),
                  )
                ],
              ),
            ),

            SizedBox(height: 5,),
            Expanded(
              child: GridView.builder(
                itemCount: doctorList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,childAspectRatio: 1/1.15 ),
                  itemBuilder: (context, index) {
                    return DoctorList(
                      iconPath: doctorList[index][0],
                      rating: doctorList[index][1],
                      doctorName: doctorList[index][2],
                      specialist: doctorList[index][3],
                      year: doctorList[index][4],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
