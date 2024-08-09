

import 'colors.dart';
import 'package:flutter/material.dart';
import 'package:profile_project/resultView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int age = 20;
  int weight = 40;
  int height = 180;
  bool isMale = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        backgroundColor: AppColors.background,
          appBar: AppBar(
            backgroundColor: AppColors.background,
            title: 
          const  Text("BMI Calculator",
            style:TextStyle(color:Colors.white) ,),centerTitle: true,

          ),
            body: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                
                    children:[
                      
                        Expanded(child:
                           Row(
                            children: [
                               Expanded(child: 
                               
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isMale = true;
                                      });
                                    },
                                    child: Container(
                                        decoration: BoxDecoration(
                                          color:(isMale)?AppColors.primary:AppColors.secondary,
                                      borderRadius: BorderRadius.circular(20)
                                        ),
                                        child:const Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.male,size:100,color:Colors.white,),
                                            SizedBox(height:10,),
                                            Text('Male',
                                            style: TextStyle(
                                              fontSize:20,
                                              color:Colors.white,
                                               )),
                                          ],
                                        ),
                                      ),
                                  ),
                                 
                               
                               ),

                        const  SizedBox(width: 10,),

                               Expanded(child: 
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isMale = false;
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:(!isMale)?AppColors.primary:AppColors.secondary,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.female,size: 100,
                                      color: Colors.white,),
                                                            SizedBox(height: 10,),
                                      Text("female",style:
                                      TextStyle(color: Colors.white,fontSize: 20) ,)
                                    ],
                                  ),
                                ),
                              ),
                               )
                            
                            ],
                          
                          ),
                        ),


                      Expanded(child: 
                      Container(
                        width: double.infinity,
                        height: 250,
                        margin:const  EdgeInsets.symmetric(vertical:10 ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:AppColors.secondary,
                        ),

                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          const  Text("Height",style: 
                            TextStyle(color:Colors.white,fontSize:20),),
                           const SizedBox(height: 10,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(),
                              style:const  TextStyle(
                                color:Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                            const  Text("cm",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                       
                            Slider(
                              value: height.toDouble(), 
                             min: 80,
                             max:220 ,
                             activeColor:AppColors.primary,
                             inactiveColor:AppColors.accent,
                              onChanged:(value){
                                setState(() {
                                  height = value.toInt();
                                });
                              }),



                          ],

                        
                          
            ),
                            
         ),
          
                           
         ),
                
                Expanded(child: 
                Row(
                  children: [
                    Expanded(child: 
                    Container(
                      decoration:BoxDecoration(
                        color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(10),

                      ),
                      
                      child: Column(
                        
                        children: [
                         const Padding(padding:EdgeInsets.symmetric(vertical:15 )),
                          const Text("Weight",style:
                          TextStyle(fontSize:25,color:Colors.white, ) ,),
                       const   SizedBox(height:5 ,),
                          Text(weight.toString(),style:
                      const  TextStyle(fontSize:28,color:Colors.white ) ,),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton.small(onPressed: (){
                                    setState(() {
                                      weight ++;
                                    });
                                  }
                                  ,
                                  backgroundColor:AppColors.primary,
                                  child:
                                 const Icon(Icons.add,color:Colors.white),
                                  ),

                                  FloatingActionButton.small(onPressed: (){
                                    if(weight>0){
                                      setState(() {
                                        weight -- ;
                                      });
                                    }
                                  },
                                  
                                  backgroundColor: AppColors.primary,
                                  child: 
                                 const Icon(Icons.remove,color:Colors.white,),
                                  
                                  )
                                ],
                              )
                        ],
                            

                      ),
                      
                    ),
                    
                    ),
                  const  SizedBox(width: 10),
                    Expanded(child:
                    Container(
                      decoration:BoxDecoration(
                        color: AppColors.secondary,
                        borderRadius: BorderRadius.circular(10),
                      ) ,
                      child: Column(
                        children: [
                         const Padding(padding:EdgeInsets.symmetric(vertical: 15)),
                         const Text("Age",style:
                          TextStyle(fontSize:25,color:
                          Colors.white,) ,),

                             const SizedBox(height:5),

                          Text(age.toString(),style:
                        const  TextStyle(color:Colors.white,fontSize: 28) ,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton.small(onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: AppColors.primary,
                              child: 
                           const   Icon(Icons.add,color: Colors.white,),
                              
                              ),
                              FloatingActionButton.small(onPressed: (){
                               if(age>0){
                                  setState(() {
                                    age--;
                                  });
                                }
                              },
                              backgroundColor:AppColors.primary,
                              child: 
                            const  Icon(Icons.remove,color: Colors.white,),
                              
                              )
                            ],
                          ),
                        ],
                      ),
                      
                    )
                    
                    ),
                    
                    
                  ],
                ),

              

                ),
                  const  SizedBox(height: 15,),

                SizedBox(
                  width:double.infinity,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                   
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>const ResultView(),));
                  
                  }, 
                  style:ElevatedButton.styleFrom(
                    backgroundColor:AppColors.primary,
                    foregroundColor:Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

                  ),
                  
                  
                  child: const Text("Calculate",
                  style:TextStyle(fontSize: 17,color:Colors.white))
                  
                  
                  
                  ),
                )
         ], 
         
        
       




       ),
      ),
    ),
    );

  }
}



