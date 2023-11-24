import 'package:flutter/material.dart';
import 'package:shopys/Screens/BestOfAudio.dart';
import 'package:shopys/Screens/CasualShoees.dart';
import 'package:shopys/Screens/Electronics.dart';
import 'package:shopys/Screens/FashionableTees.dart';
import 'package:shopys/Screens/KitchenBestsellers.dart';
import 'package:shopys/Screens/MenFashion.dart';
import 'package:shopys/Screens/WinterFashion.dart';
import 'package:shopys/Screens/WomenFashion.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
           Padding(
             padding:  EdgeInsets.only(left:5.0,right: 10.0),
            child: Icon(Icons.search_rounded,color:Colors.black,size: 25,),
          ),
          Padding(
            padding:  EdgeInsets.only(left:5.0,right: 20.0),
            child: Icon(Icons.shopping_cart_outlined,color:Colors.black,size: 25,),
          ),
        ],
        title:Text("shopify",style:TextStyle(color:Colors.deepPurpleAccent,fontFamily:"Gothic",fontSize: 24,))
      ),
      body:
        SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child:  Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex:5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children:[
                            InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>WinterFashionScreen()));
                              },
                                child: Image(image:AssetImage("assets/Images/winterfashion.png"))),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text("Winter Fashion",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex:5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder:(context)=>WomenFashionScreen()));
                                },
                                child: Image(image:AssetImage("assets/Images/WomenFashion.png"))),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text("Women Fashion",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex:5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder:(context)=>MenFashionScreen()));
                                },
                                child: Image(image:AssetImage("assets/Images/FashionMen.png"),height: 55,)),
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text("Men's Fashion",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex:5,
                      child:  Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            InkWell(
                                onTap:(){
                                  Navigator.push(context,MaterialPageRoute(builder:(context)=>ElectronicsRoom()));
                                },
                                child: Image(image:AssetImage("assets/Images/electronics.png"),height: 55,)),
                            Text("Electronics",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex:5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Image(image:AssetImage("assets/Images/autoAccessories.jpeg"),height: 65,),
                            Text("Auto Accessories",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // const Row(
                //   children: [
                //     Expanded(
                //       flex:5,
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                //         child: Column(
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children:[
                //             Image(image:AssetImage("assets/Images/wedding store.png"),height: 60,),
                //             Padding(
                //               padding: EdgeInsets.only(left: 8.0),
                //               child: Text("Wedding Store",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                //             )
                //           ],
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       flex:5,
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children:[
                //             Image(image:AssetImage("assets/Images/home appliance.webp"),height: 60,),
                //             Padding(
                //               padding: EdgeInsets.only(left: 8.0),
                //               child: Text("Home",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                //             )
                //           ],
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       flex:5,
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children:[
                //             Image(image:AssetImage("assets/Images/beauty.jpeg"),height: 65,),
                //             Padding(
                //               padding: EdgeInsets.only(left: 8.0),
                //               child: Text("Beauty & more",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                //             )
                //           ],
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       flex:5,
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children:[
                //             Image(image:AssetImage("assets/Images/kids.png"),height: 55,),
                //             Text("Kids & Toys",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                //           ],
                //         ),
                //       ),
                //     ),
                //     Expanded(
                //       flex:5,
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
                //         child: Column(
                //           mainAxisAlignment: MainAxisAlignment.center,
                //           children:[
                //             Image(image:AssetImage("assets/Images/fitness.jpeg"),height: 55,),
                //             Text("Fitness",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex:3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>FashionableTee()));
                              },
                                child: CustomContainer(imgPath:"assets/Images/fashion.webp", Name:"Fashion Tees", price:"From ₹99"))
                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                            child: InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>KitchenBestseller()));
                                },
                                child: CustomContainer(imgPath:"assets/Images/kitchen.webp", Name:"Kitchen Bestsellers", price:"From ₹99"))

                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                            child: InkWell(
                                onTap: (){
                                  Navigator.push(context,MaterialPageRoute(builder:(context)=>CasualShooes()));
                                },
                                child: CustomContainer(imgPath:"assets/Images/men-casual-shoes.png", Name:"Men's Casual Shoes", price:"From ₹179"))

                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex:3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>BestOfAudio()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.yellowAccent,
                                    borderRadius: BorderRadius.circular(10)
                                ),

                                child:const  Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children:[
                                    Image(image:AssetImage("assets/Images/audio.png"),height: 100,width: 80,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Best of Audio",style: TextStyle(fontSize: 13.5,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text("From ₹45",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellowAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),

                              child:const  Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Image(image:AssetImage("assets/Images/silk.png"),height: 100,width: 80,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Silk Sarees & more",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text("From ₹99",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.yellowAccent,
                                  borderRadius: BorderRadius.circular(10)
                              ),

                              child:const  Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Image(image:AssetImage("assets/Images/best of toys.png"),height: 100,width: 80,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Best of Toys",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text("From ₹39",style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex:3,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child:
                              CustomContainer(imgPath:"assets/Images/watch.png", Name:"Digital Watches", price:"From ₹70")
                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child: CustomContainer(imgPath:"assets/Images/double Bedsheet.png", Name:"Double Bedsheets", price:"From ₹119")

                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child: CustomContainer(imgPath:"assets/Images/kurtis.png", Name:"Printed Kurtis", price:"From ₹149")

                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex:3,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child:
                              CustomContainer(imgPath:"assets/Images/shampoo.png", Name:"Shampoos", price:"From ₹49")
                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child: CustomContainer(imgPath:"assets/Images/socks.webp", Name:"Socks & Combos", price:"From ₹25")

                          ),
                        ),
                        Expanded(
                          flex:3,
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child: CustomContainer(imgPath:"assets/Images/slipper.png", Name:"Men's Slippers", price:"From ₹75")

                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blueAccent,
                  child: Column(
                    children: [
                      Image(image:AssetImage("assets/Images/hotDeal.webp"),height: 80,width:200),
                      Text("New Deals Daily at 12 PM",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 1.3),),
                      Row(
                        children: [
                          Expanded(
                            flex:4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,

                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image(image:AssetImage("assets/Images/sweatshirt.webp")),
                                    Container(
                                        decoration: BoxDecoration(
                                          color:Colors.yellowAccent,
                                        ),
                                        height: 50,
                                        child:const Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text("Mens' Sweatshirt",style: TextStyle(fontSize:11,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        Text("Under ₹199",style: TextStyle(fontSize:11,color:Colors.blueAccent,fontWeight: FontWeight.bold),)
                                      ],
                                    )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex:4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    const Image(image:AssetImage("assets/Images/wall clock.webp"),height: 106,),
                                    Container(
                                        height: 50,
                                        width: 85,
                                        decoration: BoxDecoration(
                                            color:Colors.yellowAccent,
                                        ),
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Wall Clock",style: TextStyle(fontSize:11,fontWeight: FontWeight.bold),),
                                            Text("Just ₹179",style: TextStyle(fontSize:11,color:Colors.blueAccent,fontWeight: FontWeight.bold),)
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex:4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Image(image:AssetImage("assets/Images/bagpack.png"),height: 105,),
                                    Container(
                                      height: 51,
                                        width: 85,
                                        color:Colors.yellowAccent,
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Bagpack",style: TextStyle(fontSize:11,fontWeight: FontWeight.bold)),
                                            Text("Under ₹254",style: TextStyle(fontSize:11,color:Colors.blueAccent,fontWeight:FontWeight.bold))
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex:4,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 2.0,vertical: 5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,),
                                child: Column(
                                  children: [
                                    Image(image:AssetImage("assets/Images/lotion.webp"),height: 105,),
                                    Container(
                                      height: 50,
                                        width: 86,
                                        color:Colors.yellowAccent,
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text("Body Lotion",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 11)),
                                            Text("Just ₹47",style:TextStyle(color:Colors.blueAccent,fontWeight:FontWeight.bold,fontSize: 11))
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          )


                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
  Widget CustomContainer({required String imgPath,double height=100,double width=80,required String Name,required String price,Color myColor=Colors.yellowAccent}){
    return Container(
      decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image:AssetImage(imgPath),height: height,width: width,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Name,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(price,style: TextStyle(fontSize: 12.5,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          ),
        ],
      ),
    );
  }

}

