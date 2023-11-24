import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WomenFashionScreen extends StatefulWidget {
  const WomenFashionScreen({super.key});

  @override
  State<WomenFashionScreen> createState() => _WomenFashionScreenState();
}

class _WomenFashionScreenState extends State<WomenFashionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        title: const Text("Women's Fashion",style: TextStyle(color: Colors.white),),
        actions: const [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.0),
            child: Icon(Icons.search_rounded,color:Colors.white),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.0),
            child: Icon(Icons.shopping_cart_outlined,color:Colors.white),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
             const SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text("Fashionista Zone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.black),),
                    ),

                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://assets0.mirraw.com/images/10961712/image_zoom.jpeg?1669445561", Name:"Elegant Sarees", price:"From ₹149 ",myColor:const Color(0XFFd9b3ff))),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://www.jiomart.com/images/product/original/rvs390cxk9/clickedia-womens-fully-stitched-rayon-batik-kurti-with-tassels-fine-printed-stylish-long-dress-and-anarkali-cut-kurta-kurti-product-images-rvs390cxk9-0-202208281753.png?im=Resize=(1000,1000)", Name:"Stylish Kurtis", price:"From ₹129",myColor:const Color(0XFFd9b3ff))),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://www.fabfiola.com/image/cache/catalog/products/675X1000%20product/Crop%20top/crop_top_blue_main_a2-550x550h.png.webp", Name:"Fashionable Tops", price:"From ₹119",myColor:const Color(0XFFd9b3ff))),


                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://pcchandraindia.com/storage/product/large/22KNABCELG47_1.png", Name:"Jewellery Sets", price:"From ₹99 ",myColor:const Color(0XFFd9b3ff))),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://nitaraclothing.in/wp-content/uploads/2023/10/NC-20230822-96.png", Name:"Ethnic Sets", price:"From ₹179",myColor:const Color(0XFFd9b3ff))),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://sslimages.shoppersstop.com/sys-master/images/hb6/hf5/9267985088542/200846311_9327_alt1.png_2000Wx3000H", Name:"Sling Bags", price:"From ₹99",myColor:const Color(0XFFd9b3ff))),


                ],
              ),
              Row(
                children: [
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://sslimages.shoppersstop.com/sys-master/images/h82/hae/8907731730462/9726854_9208.png_230Wx334H", Name:"Flats & FlipFlops", price:"From ₹99 ",myColor:const Color(0XFFd9b3ff))),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://5.imimg.com/data5/SELLER/Default/2022/7/VG/JB/KP/156889834/pp-dana-500x500.png", Name:"Women Bra's", price:"From ₹29",myColor:const Color(0XFFd9b3ff))),
                  Expanded(
                      flex:3,
                      child: CustomContainer(imgPath:"https://crissangel.com/wp-content/uploads/2021/11/01-11-1101-2075-2079_COMBO-CAPTEE-MINDFREAK-LOGO_IMG_3064.png", Name:"Tees & Combos", price:"From ₹109",myColor:const Color(0XFFd9b3ff))),


                ],
              ),
              const SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text("Budget Accessories Zone",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.black),),
                    ),

                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      flex:4,
                      child: CustomContainer(imgPath:"https://aurajewels.s3.amazonaws.com/images/AuraJewels/270680284rg3dygp", Name:"Earings & studs", price:"From ₹65 ",myColor:const Color(0XFFd9b3ff))),
                  Expanded(
                      flex:4,
                      child: CustomContainer(imgPath:"https://www.bigbasket.com/media/uploads/p/xl/40249126_1-cs-hair-clip-medium-size-multicoloured.jpg", Name:"Hair Clips Bands", price:"From ₹14",myColor:const Color(0XFFd9b3ff))),
                  Expanded(
                      flex:4,
                      child: CustomContainer(imgPath:"https://www.josalukkasonline.com/Media/original_jos-alukkas-Gold-Necklace--JA6DC4-Bscc.png", Name:"Tees & Combos", price:"From ₹109",myColor:const Color(0XFFd9b3ff))),
                  Expanded(
                      flex:4,
                      child: CustomContainer(imgPath:"https://i0.wp.com/www.lagubandhu.in/wp-content/uploads/2022/02/19HO6993-1-2.png?fit=1000%2C1000&ssl=1", Name:"Necklaces", price:"From ₹65",myColor:const Color(0XFFd9b3ff))),



                ],
              ),
            ],
          ),
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
