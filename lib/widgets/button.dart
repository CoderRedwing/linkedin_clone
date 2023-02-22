import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;

  final VoidCallback onTap;
  const RoundButton({Key? key, required this.title, required this.onTap, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: onTap,
      child: Container(

        height: 38,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
            border: Border.all(color: Colors.black),

            borderRadius: BorderRadius.circular(20),


      ),
        child: Center(child: Text(title,style: const TextStyle(color: Colors.grey
            ,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),)),
      )
    );
  }
}

