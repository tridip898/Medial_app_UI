import 'package:flutter/material.dart';

class Caregories extends StatelessWidget {
  final String icon;
  final String catname;
  const Caregories({Key? key, required this.icon, required this.catname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.purpleAccent.shade100
        ),
        child: Row(
          children: [
            Image.asset(icon,height: 30,),
            SizedBox(width: 10,),
            Text(catname,style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
