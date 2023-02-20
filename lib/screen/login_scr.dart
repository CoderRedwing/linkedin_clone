import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/widgets/button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Linked',style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),),
                const SizedBox(width: 5,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blue,
                  ),
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  child: const Text('in',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Colors.white,
                  ),),

                ),



              ],

            ),
            const SizedBox(height: 5,),
            const Text('Join a trusted community of 800M professionals',style: TextStyle(fontSize: 16),),
            Container(height: 200,),
           Container(
             alignment: Alignment.bottomCenter,
             child: Column(
               crossAxisAlignment:CrossAxisAlignment.end
               ,
               children: [
                 GestureDetector(
                   onTap: (){},
                   child: Container(
                     height: 38,
                     width: 315,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),

                         color: Colors.blue.shade800),
                     child: const Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Text("Join now",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,
                           fontSize: 15,color: Colors.white),),
                     ),
                   ),

                 ),
                 const SizedBox(height: 10,),
                 RoundButton(title: 'Continue with Google', onTap: (){}),
                 const SizedBox(height: 10,),
                 RoundButton(title: 'Continue with Facebook', onTap: (){}),
                 const SizedBox(height: 15,),
                 GestureDetector(
                   onTap: (){},
                   child: Container(
                     height: 38,
                     width: 315,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),

                         color: Colors.white),
                     child:  Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Sign in",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,
                           fontSize: 15,color: Colors.blue.shade600),),
                     ),
                   ),

                 ),
               ],
             ),
           )
          ],



      )

    );
  }
}

