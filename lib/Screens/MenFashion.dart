import 'package:flutter/material.dart';

class MenFashionScreen extends StatefulWidget {
  const MenFashionScreen({super.key});

  @override
  State<MenFashionScreen> createState() => _MenFashionScreenState();
}

class _MenFashionScreenState extends State<MenFashionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text("Men's Fashion",style: TextStyle(color: Colors.white),),
        actions: const [
          Padding(
            padding:  EdgeInsets.only(left:5.0,right: 10.0),
            child: Icon(Icons.search_rounded,color:Colors.white,size: 25,),
          ),
          Padding(
            padding:  EdgeInsets.only(left:5.0,right: 20.0),
            child: Icon(Icons.shopping_cart_outlined,color:Colors.white,size: 25,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children :[
                      Text("Champion Bestsellers",style: TextStyle(fontSize: 21,color:Colors.blue,fontWeight: FontWeight.bold),),
                      Text("Super-Saver Offers",style:TextStyle(fontSize:15,color:Colors.black))
                    ]

                ),
              ),
              Row(
                children: [
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://images.glowroad.com/faceview/a7b/bh/ce/c9b/imgs/6cb646b1-e03c-4eeb-aa1f-0df2eae43416_21241701-xlgnm400x400.jpg", Name:"Stylish Tees", price:"From ₹99 ")),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://www.beyeaware.com/cdn/shop/products/mens-high-top-canvas-shoes-white-left-61b2104acf8ef.png?v=1639059539", Name:"Trendy Shoes", price:"From ₹169")),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://www.ottostore.com/cdn/shop/products/FLORENCIA_BLACK_1_1200x630.png?v=1633778662", Name:"Men's Track Pants", price:"From ₹189")),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://cdn.fynd.com/v2/falling-surf-7c8bb8/fyprod/wrkr/products/pictures/item/free/original/6rf5qQwSr-Hemsters-Men-Solid-Casual-Grey-Shirt.png", Name:"Casual Shirts", price:"From ₹179 ")),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://www.manarden.com/cdn/shop/products/SKSAL3COMBO26.png?v=1684830288", Name:"Socks & Combos", price:"From ₹19 ")),

                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://guesswatches.com/cdn/shop/products/GW0454G4_F.png?v=1691697893&width=990", Name:"Classic Watches", price:"From ₹129",)),


                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://onemg.gumlet.io/l_watermark_346,w_480,h_480/a_ignore,w_480,h_480,c_fit,q_auto,f_auto/8e8c317408cc4cdaa7d4dc6de24ce234.jpg", Name:"FlipFlops & Combo", price:"From ₹169 ")),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://one8innerwear.com/wp-content/uploads/2021/01/210-600x660.png", Name:"Innerwear & Combos", price:"From ₹49")),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://www.buffalojeans.com/cdn/shop/files/skinny_side_800x_3bf3b08b-9e85-4c17-be45-36770b97b296_600x.png?v=1643699170", Name:"Men's Jeans", price:"From ₹299")),


                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
                child: Column(
                  children: [
                    Image(image:NetworkImage("https://sabmohmayahai.shop/cdn/shop/files/smmh_store_tag-2.png?v=1699440398"),height: 80,width:200),
                    Text("Bumper Budget Deals",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 1.3),),
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
                                  const  Image(image:NetworkImage("https://www.stanfields.com/cdn/shop/products/stretch-brief-3-pack-2561_2561-black-sw.png?v=1635946503&width=2048")),
                                  Container(
                                      decoration: BoxDecoration(
                                        color:Colors.orange,
                                      ),
                                      height: 40,
                                      child:const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("Mens' Brief",style: TextStyle(fontSize:11,fontWeight: FontWeight.bold),),
                                            ],
                                          ),
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
                                  const Image(image:NetworkImage("https://images.ctfassets.net/hnk2vsx53n6l/1e2FkdLjp3OzUX0pvQRoS1/aea4aabc20a1bac766217db76e4d9beb/36f29a67c85ffda7749471880e2446076dc610b5.png?fm=webp"),height: 117,),
                                  Container(
                                      height: 40,
                                      width: 85,
                                      decoration: BoxDecoration(
                                        color:Colors.orange,
                                      ),
                                      child:Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Text("Men's Vest",style: TextStyle(fontSize:11,fontWeight: FontWeight.bold),),
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
                                 const  Image(image:NetworkImage("https://cdn11.bigcommerce.com/s-42vljde0p0/images/stencil/500x500/products/876/829/712-6017-975__18901.1578449224.png?c=1"),height: 117,),
                                  Container(
                                      height: 40,
                                      width: 85,
                                      color:Colors.orange,
                                      child:const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Designer Scoks",style: TextStyle(fontSize:11,fontWeight: FontWeight.bold)),
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
                                  const Image(image:NetworkImage("https://consumer.huawei.com/content/dam/huawei-cbg-site/common/mkt/pdp/wearables/watch-3/img/one/huawei-watch-3-kv.png"),height: 117,),
                                  Container(
                                      height: 40,
                                      width: 86,
                                      color:Colors.orange,
                                      child:const Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text("Stylish Watches",style:TextStyle(fontWeight:FontWeight.bold,fontSize: 11)),
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
              ),

            ],
          ),
        ),
      ),
    );
  }
  Widget CustomContainer({required String imgPath,double height=100,double width=80,required String Name,required String price,Color myColor=Colors.white}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 2.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange),
          color: myColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image:NetworkImage(imgPath),height: height,width: width,),
            Container(
              height: 40,
              color:Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Name,style: TextStyle(fontSize: 11,),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(price,style: TextStyle(fontSize: 11.5,fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
