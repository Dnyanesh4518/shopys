import 'package:flutter/material.dart';

class ElectronicsRoom extends StatefulWidget {
  const ElectronicsRoom({super.key});

  @override
  State<ElectronicsRoom> createState() => _ElectronicsRoomState();
}

class _ElectronicsRoomState extends State<ElectronicsRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0XFF005ce6),
        title: const Text("Shopys Electronics",style: TextStyle(color: Colors.white),),
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
      backgroundColor: Color(0XFFcce6ff),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              height: 180,
              color: Color(0XFF000099),
              child: Stack(
                children: [
                  const Positioned(
                      child:Text("Grab Audio Blockbusters",style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: Colors.white),),
                    top: 50,
                    left: 10,
                  ),
                 const  Positioned(
                    child:Text("Play & Unwind",style: TextStyle(fontSize:15,color: Colors.white),),
                    top: 70,
                    left:10,
                  ),
                 const  Positioned(
                    child:Text("From ₹49",style: TextStyle(fontSize:24,fontWeight: FontWeight.bold,color: Colors.yellow),),
                    top: 100,
                    left: 10,
                  ),
                  Positioned(
                      child:Image.network("https://media.croma.com/image/upload/v1607951973/Croma%20Assets/Entertainment/Headphones%20and%20Earphones/Images/231401_qzfdlj.png",scale: 6,),
                      right: 0,
                      left: 200,
                      top: 10,
                  )


                ],
              ),
            ),
            const ListTile(
              title: Text("Meet The Tech Superstar",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
              subtitle: Text("At RockBottom prices",style: TextStyle(fontSize: 14,),),
            ),
            Container(
             margin: EdgeInsets.all(10),
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Color(0XFF66b3ff)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage("https://static.vecteezy.com/system/resources/previews/023/499/165/non_2x/woman-with-headphone-isolated-generative-ai-png.png"))
                    ),
                  ),
                  CircleAvatar(
                    child: Image.network("https://cdn.shopify.com/s/files/1/0002/9677/9842/t/28/assets/pf-75136a63--TWSFront3D05_500x.png?v=1595410041",scale: 5,),
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.network("https://media-ik.croma.com/prod/https://media.croma.com/image/upload/v1697621337/Croma%20Assets/Entertainment/Headphones%20and%20Earphones/Images/257082_vl9gim.png?tr=w-600",scale: 8,),
                    radius: 50,
                  ),

                ],
              ),

            ),
            const Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("True Wireless Buds",style: TextStyle(fontSize: 11),),
                      Text("From ₹225",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: [
                      Text("BT Neckbands",style: TextStyle(fontSize: 11),),
                      Text("From ₹149",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold))
                    ],
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color(0XFF66b3ff)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: Image.network("https://hammeronline.in/cdn/shop/files/Pulse-4.0.webp?v=1694431960&width=1080",scale: 12,),
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: Image.network("https://5.imimg.com/data5/SELLER/Default/2021/11/JE/UI/OH/66893220/fire-boltt-bsw005-ring-bluetooth-calling-smartwatch.png",scale: 12,),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage("https://storecdn.goqii.com/media/smartvitalnewwebsite/images2/smartvitalmax/images/smart-vital-max.png"))
                    ),
                  ),

                ],
              ),

            ),
            const Padding(
              padding: const EdgeInsets.only(right: 120.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Every Day SmartWatch",style: TextStyle(fontSize: 11),),
                      Text("From ₹269",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: [
                      Text("BT SmartWatch",style: TextStyle(fontSize: 11),),
                      Text("From ₹319",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold))
                    ],
                  )

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Color(0XFF66b3ff)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image: NetworkImage("https://www.jeancoutu.com/globalassets/revamp/beaute/conseils-beaute/20160721-01-shopping-sechoirs/image-principale.png"))
                    ),
                  ),
                  CircleAvatar(
                    child: Image.network("https://dy6o3vurind23.cloudfront.net/img/developerimg/choco_life_20161214074908_db/mebase/CustomSectionStyle/Images/carrera_groomidng_tools.webp",scale: 5,),
                    radius: 50,
                    backgroundColor: Colors.white,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.network("https://cdn-img.remington-europe.com/manager/remington-europe_com/au-products/large_PROLUXE-RANGE_500x500.png",scale: 8,),
                    radius: 50,
                  ),
                ],
              ),

            ),
            const Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Trimmers & Shavers",style: TextStyle(fontSize: 11),),
                      Text("From ₹179",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: [
                      Text("Hair Dryers & more",style: TextStyle(fontSize: 11),),
                      Text("From ₹99",style:TextStyle(fontSize: 12,fontWeight: FontWeight.bold))
                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
