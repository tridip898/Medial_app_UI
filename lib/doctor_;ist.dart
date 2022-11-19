import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  final String iconPath;
  final double rating;
  final String doctorName;
  final String specialist;
  final int year;
  const DoctorList({Key? key, required this.iconPath, required this.rating, required this.doctorName, required this.specialist, required this.year}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(iconPath),
              )
            ),

            Container(
              width: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,color: Colors.orange,),
                  Text(rating.toString(),style: TextStyle(fontSize: 17),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text(doctorName, style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(specialist,style: TextStyle(fontSize: 16),),
                Text(", "+ year.toString()+ " y.e.",style: TextStyle(fontSize: 16),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
