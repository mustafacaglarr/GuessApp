import 'package:flutter/material.dart';
import 'package:guessapp/buttons.dart';
import 'package:guessapp/kisiler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  

  String? testFunc(String ulke){
      if (kisi.ulke ==ulke ) {
        
        return _ulke ;
      }
     

  }
    String? takimFunc(String takim){
      if (kisi.takim ==takim ) {
        
        return _takim ;
      }
     

  }



  TextEditingController kisi1 = TextEditingController();
   String _isim="biseyler yaz";
   String _ulke="biseyler yazz";
   String _takim="biseyler yaz";
   int i =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(145, 129, 37, 126),
      body: Column(
        children: [
          
          Padding(
            padding: const EdgeInsets.only(top:80),
            child: TextField(
                
              decoration: InputDecoration(
                
                hintText: "Lütfen Oyuncu İsmi Yazınız",
                labelText: "İsim",
                filled: true,
                fillColor: Colors.orange,
                
                border: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.circular(20),
                )

              ),

              controller: kisi1,
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 50),
             child: ElevatedButton(onPressed: (){
                
                 setState(() {
                   _isim=kisi1.text;
                  for (var i = 0; i <4; i++) {
                    
                      
                     if (_isim==kisilistesi[i].isim) {
                       _ulke=kisilistesi[i].ulke;
                       _takim=kisilistesi[i].takim;
                     }

                 }
                   
                 
                });

             },
             style: ElevatedButton.styleFrom(
              fixedSize: Size(150, 45),
              primary: Colors.orange,
              elevation: 20,
              shadowColor: Colors.orange,
              side: BorderSide(color: Colors.black87,width: 2),
              shape: StadiumBorder()


             ),
             
              child: Text("Tahmin Et"),
             
             ),
           ),
          
          
        

          Row(
                children: [
                 
            Padding(
              padding: const EdgeInsets.only(top: 70,left: 35,right: 15),
              child: Container(
               height: 130,
               width: 130,
               //color: (kisilistesi[0].isim ==_isim ? Colors.red:Colors.black),
               decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              //image: (kisi.ulke ==_ulke ? AssetImage("assets/abd.png"):AssetImage("assets/siyah.png")),
                              image: (kisi.ulke == testFunc(_ulke)? AssetImage("assets/$_ulke.png"):AssetImage("assets/siyah.pnng")),
                              ),
                            color: (kisi.ulke ==_ulke ? Colors.red:Color.fromARGB(255, 188, 205, 207)),
                            boxShadow: [
                              BoxShadow(
                                color: (kisi.ulke ==_ulke ? Colors.green:Colors.red),
                            blurRadius: 15,
                            spreadRadius: 5,
                            offset: Offset(0, 0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(70),
                            
                          ),
           ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70,right: 1,left: 50),
              child: Container(
               height: 130,
               width: 130,
               //color: (kisilistesi[0].isim ==_isim ? Colors.red:Colors.black),
               decoration: BoxDecoration(
                            color: (kisi.isim ==_isim ? Colors.red:Color.fromARGB(255, 188, 205, 207)),
                            borderRadius: BorderRadius.circular(70),
                            boxShadow: [
                              BoxShadow(
                                color: (kisi.isim ==_isim ? Colors.green:Colors.red),
                            blurRadius: 15,
                            spreadRadius: 5,
                            offset: Offset(0, 0),
                              )
                            ],
                            
                          ),
           ),
            ),
           
                ],

          ),
          Row(
                children: [
                 
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 35,right: 15),
              child: Container(
               height: 130,
               width: 130,
               //color: (kisilistesi[0].isim ==_isim ? Colors.red:Colors.black),
               decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              
                              image: (kisi.takim == takimFunc(_takim)? AssetImage("assets/$_takim.png"):AssetImage("assets/siyah.pnng")),
                              ),
                            color: (kisi.takim ==_takim ? Colors.red:Color.fromARGB(255, 188, 205, 207)),
                            borderRadius: BorderRadius.circular(70),
                            boxShadow: [
                              BoxShadow(
                                color: (kisi.takim ==_takim ? Colors.green:Colors.red),
                            blurRadius: 15,
                            spreadRadius: 5,
                            offset: Offset(0, 0),
                              )
                            ],
                            
                          ),
           ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,right: 1,left: 50,),
              child: Container(
               height: 130,
               width: 130,
               //color: (kisilistesi[0].isim ==_isim ? Colors.red:Colors.black),
               decoration: BoxDecoration(
                            color: (kisi.isim ==_isim ? Colors.red:Color.fromARGB(255, 188, 205, 207)),
                            borderRadius: BorderRadius.circular(70),
                            boxShadow: [
                              BoxShadow(
                                color: (kisi.isim ==_isim ? Colors.green:Colors.red),
                            blurRadius: 15,
                            spreadRadius: 5,
                            offset: Offset(0, 0),
                              )
                            ],
                            
                          ),
           ),
            ),
           
                ],

          ),

          
           
        ],
      ),


    );
  }
}


