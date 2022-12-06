import 'package:flutter/material.dart';
import 'package:online/animation/fade_animation.dart';

void main()=>runApp(
  const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(Colors.redAccent, BlendMode.darken),
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.fill
                  )
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: FadeAnimation(delay: 1,child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/light-2.png'),
                          )
                        ),
                      ),),
                    ),
                    Positioned(
                      left: 140,
                      width: 80,
                      height: 150,
                      child: FadeAnimation(delay: 1.3,child: Container(
                        decoration:const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/light-1.png')
                          )
                        ),
                      ),),
                    ),
                    Positioned(
                      right: 40,
                      width: 80,
                      top: 40,
                      height: 150,
                      child: FadeAnimation(delay: 1.5,child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/clock.png')
                          )
                        ),
                      ),),
                    ),
                    Positioned(
                      child: FadeAnimation(delay: 1.6,child: Container(
                        margin: EdgeInsets.only(top: 50),
                        child:const Center(
                          child: Text('Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        ),
                      ),),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    FadeAnimation(delay: 1.8,child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow:const [
                            BoxShadow(
                                offset: Offset(0, 10),
                                color: Color.fromRGBO(143, 148, 251, .2),
                                blurRadius: 20
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey.shade100)),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade100)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Email or Phone number',
                                      helperStyle: TextStyle(color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey.shade100)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Password',
                                      helperStyle: TextStyle(color: Colors.grey.shade400),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),),
                    const SizedBox(height: 30,),
                   FadeAnimation(delay: 2,child: Container(
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       gradient: LinearGradient(
                         colors: [
                           Colors.redAccent,
                           Colors.grey.shade700
                         ]
                       )
                     ),
                     child: const Center(
                       child: Text('Login',
                       style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),
                       ),
                     ),
                   ),),
                    const SizedBox(height: 70,),
                    FadeAnimation(delay: 1.5,child: Text('Forget Password',style: TextStyle(
                      color: Colors.red
                    ),),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
