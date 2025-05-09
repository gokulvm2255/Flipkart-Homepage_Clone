
import 'package:flutter/material.dart';


void main() async {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyoneApp(),
    );
  }
}

class MyoneApp extends StatefulWidget {
  const MyoneApp({super.key});

  @override
  State<MyoneApp> createState() => _MyoneAppState();
}

class _MyoneAppState extends State<MyoneApp> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(title: Text('Signup Page'),),
      body: Container(
        
        margin: EdgeInsets.only(top: 100),
        
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
           color: const Color.fromARGB(255, 33, 37, 243),
           borderRadius: BorderRadius.only(topLeft: Radius.circular(80)),
        
        ),
        child: Padding(
          
          padding: const EdgeInsets.all(20.0),
          child: Center(
            
            child: Container(
              padding: EdgeInsets.all(15),
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: const Color.fromARGB(255, 228, 224, 219),borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Text('Signup',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                        
                  SizedBox(height: 10,),
                  // Text('Email'),
                  SizedBox(height: 10,),
                  TextFormField(
                    
                    controller: emailController,
                    decoration: InputDecoration(
                      
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                      label: Text('email',style: TextStyle(fontWeight: FontWeight.bold),),
                      hintText: 'Enter Your Email',
                    ),
                        
                  ),
                  // SizedBox(height: 10,),
                  // Text('Password',style: TextStyle(height: 12),),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(35),borderSide: BorderSide(color: Colors.white)),
                      label: Text('Password'),
                      hintText: 'Enter Your Password',
                    ),
                  ),
                  SizedBox(height: 10,),
                  Center(child: OutlinedButton(onPressed: (){}, child: Text('Signup'))),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',style: TextStyle(fontWeight: FontWeight.bold),),
                      TextButton(onPressed: (){}, child:Text('Login')),
                    ],
                  )
                      
                        
                  
                ],
              ),
            ),
          ),
        ),
      ),
      

    );
  }
}