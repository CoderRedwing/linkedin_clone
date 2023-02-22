import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin/widgets/button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool passwordVisible=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisible=true;
  }
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
                const Text('Sign in',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black

                ),),
                const SizedBox(height: 30,),
                TextFormField(

                  decoration:   const InputDecoration(
                    hintText: 'Email or Phone',


                  ),
                ),
                const SizedBox(height: 25,),
                TextField(
                  obscureText: passwordVisible,
                  decoration:   InputDecoration(
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                              () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },

                    ),
                    alignLabelWithHint: false
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
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
                const SizedBox(height: 10,),
                const Text('------------------------------------------or----------------------------------------'),
                const SizedBox(height: 10,),
                RoundButton(title: 'Sign in with Google', onTap: (){}),
                const SizedBox(height: 10,),
                RoundButton(title: 'Sign in with Facebook', onTap: (){}),
                const SizedBox(height: 10,),
                RoundButton(title: 'sign in with Apple', onTap: (){}),
              ]

          ),

        )
    );

  }
}




