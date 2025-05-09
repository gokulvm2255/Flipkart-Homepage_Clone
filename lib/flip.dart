import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    PersonPage(),
    Validaepage()
      ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    
  }
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(title: const Text('Bottom Navigation'),),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),

        ),
        bottomNavigationBar:BottomNavigationBar(
          
          
          items:const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.music_video), label: 'Play'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account',),
          ],
          currentIndex: _selectedIndex,
          
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          
          
          onTap: _onItemTapped,
         ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 70,),
          decoration: BoxDecoration(
            color: Colors.white
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20,),
                height: 130,
                decoration:BoxDecoration(gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors:[
                   const Color.fromARGB(255, 82, 11, 235),
                   const Color.fromARGB(255, 81, 136, 232)])),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration( color:Colors.yellow,borderRadius: BorderRadius.circular(15) ),
                                           child: Image.asset('assets/images/flipkart-icon.png',fit: BoxFit.cover,),
                                           
                        ),
                        SizedBox(height: 10,),
                        Text('Flipkart',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration( color:Colors.white,borderRadius: BorderRadius.circular(15) ),
                        child: Image.asset('assets/images/gross4.png',height: 20, width: 20, fit: BoxFit.cover,),
                        ),
                        SizedBox(height: 10,),
                        Text('Groccery',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration( color:Colors.white,borderRadius: BorderRadius.circular(15) ),
                        child: Image.asset("assets/images/travel.png",fit: BoxFit.cover),
                        ),
                        SizedBox(height: 10,),
                        Text('Travel',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration( color:Colors.white,borderRadius: BorderRadius.circular(15) ),
                        child: Image.asset("assets/images/pay.png", fit: BoxFit.cover, ),
                        ),
                        SizedBox(height: 10,),
                        Text('Pay',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                  ],
                ),
                
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.location_on),
                  Text('678632'),
                  SizedBox(width: 10,),
                  Text('Select Delivery location',style: TextStyle(color: Colors.blue),),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios,size: 15,)
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: const Color.fromARGB(255, 163, 203, 235),
                    
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt),
                    label: Text('Search'),
                    
                    border: OutlineInputBorder(
                    
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 168, 209, 242),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text('Sale ends in 08 Hrs: 59 Min :52 sec')),
                ),
              ),
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
                  child: Image.asset("assets/images/flipkart_sale.webp",fit: BoxFit.cover,),
                ),
              ),

              Padding(
                
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Column(
                        
                        children: [

                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                   child: Image.asset("assets/images/gross3.jpg.jpg"),
                                  ),
                                  Text('Groccery')
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                   child: Image.asset('assets/images/fashion.jpg',fit: BoxFit.cover,), 
                                  ),
                                  Text('Fashion'),
                                ],
                              ),
                              SizedBox(width: 10,),
                               Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                    child: Image.asset('assets/images/food.jpg',fit: BoxFit.cover,),
                                  ),
                                  Text('Food'),
                                ],
                              ),
                              SizedBox(width: 10,),
                               Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                    child: Image.asset('assets/images/beauty.jpg'),
                                  ),
                                  Text('Beauty'),
                                ],
                              ),
                              SizedBox(width: 10,),
                               Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                    child: Image.asset('assets/images/electronics.jpg',fit: BoxFit.cover,),
                                  ),
                                  Text('Electronics'),
                                ],
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                    child: Image.asset('assets/images/scan.jpg',fit: BoxFit.cover,),
                                  ),
                                  Text('Scan')
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                    child: Image.asset('assets/images/mobiles.jpg',fit: BoxFit.cover,),
                                  ),
                                  Text('Mobiles'),
                                ],
                              ),
                              SizedBox(width: 10,),
                               Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                    child: Image.asset('assets/images/homed.jpg',fit: BoxFit.cover,),
                                  ),
                                  Text('Home'),
                                ],
                              ),
                              SizedBox(width: 10,),
                               Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                    child: Image.asset('assets/images/gadgets.jpg',fit: BoxFit.cover,),
                                  ),
                                  Text('Gadgets'),
                                ],
                              ),
                              SizedBox(width: 10,),
                               Column(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                    child: Image.asset('assets/images/appliances.jpg',fit: BoxFit.cover,),
                                  ),
                                  Text('Appliances'),
                                ],
                              ),
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),
                
              )
        
              
            ],
          ),
        ),
      ),
    );
  }
}
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Play',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          // 

        ],
      ),
    );
  }
}
class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Category',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          

        ],
      ),
    );
  }
}
class Validaepage extends StatelessWidget {
  const Validaepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Account',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}