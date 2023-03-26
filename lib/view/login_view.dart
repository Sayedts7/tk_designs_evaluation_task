import 'package:flutter/material.dart';
import '../utils/contstants.dart';
import 'Navigation_bar.dart';

class Login_view extends StatelessWidget {
  const Login_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.08),
                  child: const Image(image: AssetImage('assetes/Logo.png')),
                ),

                 Padding(
                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.04),
                  child: const Text('Wellcome to Mr Tailor', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter username',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)

                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)

                      ),
                    ),
                  ),
                ),



                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    suffixIcon: const Icon(Icons.visibility_off),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text('Forgot password?', style: TextStyle(fontSize: 16, color: Color(0xff7B7B7B),
                      ),),
                    ],
                  ),
                ),
                 Padding(
                   padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.052),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                     children: const [
                       Text('Sign-in with', style: TextStyle(fontSize: 14),),
                     ],
                   ),
                 ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Image(
                          height: 40,
                          image: AssetImage('assetes/facebook.png')),

                      Image(
                          height: 40,
                          image: AssetImage('assetes/google.png')),

                      Image(
                          height: 40,
                          image: AssetImage('assetes/twitter.png')),


                    ],
                  ),
                ),

                Padding(
                  padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.02 ),
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Navigation_bar()));
                  },
                      child:   Container(
                         height: 50,
                        width: MediaQuery.of(context).size.width *1,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(child: Text('Sign in', style: TextStyle(fontSize: 20, color: appColor2),)),
                  )
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Dont have an account?'),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Create One',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline ),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
