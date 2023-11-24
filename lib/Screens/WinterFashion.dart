import 'package:flutter/material.dart';
import 'package:shopys/Screens/HomeScreen.dart';

class WinterFashionScreen extends StatefulWidget {
  const WinterFashionScreen({super.key});

  @override
  State<WinterFashionScreen> createState() => _WinterFashionScreenState();
}

class _WinterFashionScreenState extends State<WinterFashionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: Text("Winter Store",style: TextStyle(color: Colors.white),),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Icon(Icons.search_rounded,color:Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Icon(Icons.shopping_cart_outlined,color:Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               height: 121,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage("assets/Images/WhatsApp Image 2023-11-23 at 20.04.51_bead0762.jpg")
                 )
               ),
             ),
             Container(
               width: MediaQuery.of(context).size.width,

               decoration: BoxDecoration(

                 color: Colors.deepPurpleAccent,
               ),
               height: 100,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children :[
                   Text("Top Winter Picks",style: TextStyle(fontSize: 21,color:Colors.white,fontWeight: FontWeight.bold),),
                   Text("At Rock Botton Prices",style:TextStyle(fontSize:15,color:Colors.white))
                 ]

               ),
             ),
             Column(
               children: [
                 Row(
                  children: [
                    Expanded(
                      flex:3,
                        child: CustomContainer(imgPath:"https://classic.cdn.media.amplience.net/i/hibbett/D9049_6125_main?w=300&h=300&img404=404&v=1", Name:"Hoodies", price:"From ₹155 ",myColor: Colors.deepPurpleAccent)),
                    Expanded(
                      flex:3,
                        child: CustomContainer(imgPath:"https://shop.vogue.com/cdn/shop/files/VOGUECroppedSweatshirtAshRosewithembroidery1Clipped_344x.png?v=1695213981", Name:"Sweatshirts", price:"From ₹139",myColor: Colors.deepPurpleAccent)),
                    Expanded(
                      flex:3,
                        child: CustomContainer(imgPath:"https://www.eagleconsumer.in/wp-content/uploads/2022/03/listing_steel-eco-300x300.png", Name:"Flasks", price:"From ₹80",myColor: Colors.deepPurpleAccent)),


                  ],
                 ),
                 Row(
                   children: [
                     Expanded(
                         flex:3,
                         child: CustomContainer(imgPath:"https://fjallraven.in/cdn/shop/products/Fjallraven_Tab_Hat_84767-356_F_MAIN_FJR.png?v=1672904208", Name:"Beanies & Caps", price:"From ₹89 ",myColor: Colors.deepPurpleAccent)),
                     Expanded(
                         flex:3,
                         child: CustomContainer(imgPath:"https://www.joypersonalcare.com/media/catalog/product/s/f/sfl_400ml_f_1.png", Name:"Moisturisers", price:"From ₹29",myColor: Colors.deepPurpleAccent)),
                     Expanded(
                         flex:3,
                         child: CustomContainer(imgPath:"https://static.nike.com/a/images/t_default/2a87e3da-58fd-4cdf-8b11-aee7501a8ac5/revolution-6-road-running-shoes-NC0P7k.png", Name:"Men's Shoes", price:"From ₹179",myColor: Colors.deepPurpleAccent)),


                   ],
                 ),
                 Row(
                   children: [
                     Expanded(
                         flex:3,
                         child: CustomContainer(imgPath:"https://marineshop.net/wp-content/uploads/sites/3/2014/08/106250.png", Name:"Kids Caps", price:"From ₹60 ",myColor: Colors.deepPurpleAccent)),
                     Expanded(
                         flex:3,
                         child: CustomContainer(imgPath:"https://ridexhelmet.com/wp-content/uploads/2022/12/orangejacket.png", Name:"Jackets", price:"From ₹225",myColor: Colors.deepPurpleAccent)),
                     Expanded(
                         flex:3,
                         child: CustomContainer(imgPath:"https://www.pk.thelinen.company/cdn/shop/files/the-linen-company-bedding-maroon-microfiber-plush-blanket-41404377661699.png?v=1699822877&width=600", Name:"Blankets", price:"From ₹108",myColor: Colors.deepPurpleAccent)),


                   ],
                 )
               ],
             )
           ],
         ),
      ),
    );
  }
  Widget CustomContainer({required String imgPath,double height=100,double width=80,required String Name,required String price,Color myColor=Colors.yellowAccent}){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0,vertical: 2.0),
      child: Container(
        decoration: BoxDecoration(
            color: myColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image:NetworkImage(imgPath),height: height,width: width,),
            Container(
              height: 40,
              color:Color(0XFFb0e0e6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Name,style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(price,style: TextStyle(fontSize: 11.5,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
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
