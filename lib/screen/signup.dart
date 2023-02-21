import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JoinNow extends StatelessWidget {
  const JoinNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

       backgroundColor: Colors.white,
        body:Padding(
          padding: const EdgeInsets.all(15),
          child: Column(

           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const SizedBox(height: 70,),
          Row(
           

            children: [
              Text('Linked',style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade700,
              ),),
              const SizedBox(width: 5,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.blue.shade700,
                ),
                alignment: Alignment.center,
                height: 25,
                width: 25,
                child: const Text('in',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),),

              ),



            ],
          ),
              const SizedBox(height: 36,),
              const Text('Add your name',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black

              ),),
              const SizedBox(height: 30,),
              TextFormField(

                decoration:  const InputDecoration(
                  hintText: 'First name*',


                ),
              ),
              const SizedBox(height: 25,),
              TextFormField(

                decoration:  const InputDecoration(
                  hintText: 'Last name*',
                ),
              ),
              const SizedBox(height: 35,),
              GestureDetector(
                onTap: (){

                },
                child: Container(
                  height: 38,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                      color: Colors.blue.shade800),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Continue",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 15,color: Colors.white),),
                  ),
                ),

              ),
            ]
          ),
        ) );

  }
}

