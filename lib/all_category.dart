import 'package:flutter/material.dart';
import 'package:instacart/product_info.dart';

class CategoryAll extends StatefulWidget {
  const CategoryAll({super.key});

  @override
  State<CategoryAll> createState() => _CategoryAllState();
}

class _CategoryAllState extends State<CategoryAll> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {
                  // Action pour l'icône de recherche
                },
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(48.0),
              child: Container(
                color: Colors.white,
                child: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  unselectedLabelStyle: TextStyle(color: Colors.black),
                  labelPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  tabs: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.0),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Tab(text: "Fruits"),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.0),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Tab(text: "Vegetables"),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.0),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Tab(text: "Bakery"),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 6.0),
                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: const Tab(text: "Drinks"),
                    ),
                  ],
                ),
              ),
            ),
          ),
         body: Padding(
           padding:  EdgeInsets.all(16.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             const Text("Popular Item", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
             ),

             const SizedBox(height: 16),
             Expanded(child: GridView.builder(
                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                   crossAxisCount: 2,
                   childAspectRatio: 0.7,
                   crossAxisSpacing: 15,
                   mainAxisSpacing: 15,
                      ),
                 itemCount: products.length,
                 itemBuilder: (context, index){
                   final product = products[index];
                   return GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> ProductDetailsScreen(product: product,))
                       );
                     },
                     child: Column(
                       children: [
                     
                         Card(
                           color: Colors.white,
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(16),
                           ),
                           elevation: 3,
                           child: Padding(
                           padding: EdgeInsets.all(8.0),
                           child: Image.network(
                             product['image']!,
                             fit: BoxFit.cover,
                             height: 150,
                             width: double.infinity
                           ),),
                         ),
                     
                         const SizedBox(height: 8.0),
                         Text(
                           textAlign: TextAlign.left,
                           product['name']!,
                           style: const TextStyle(
                     
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                         Text(
                           product['price']!,
                           style: const TextStyle(
                             color: Colors.green,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                     
                       ],
                     ),
                   );
                 }))
           ],

         ),),
        ),
      ),
    );
  }
}

final List<Map<String, String>> products = [
  {
    'name': 'Juicy Strawberry',
    'price': '\$20.85',
    'image': 'https://kivugreen.com/92-large_default/fraise.jpg',
  },
  {
    'name': 'Bakery',
    'price': '\$15.10',
    'image': 'https://i0.wp.com/pam-main-website-media.s3.amazonaws.com/wp-content/uploads/2023/10/06111734/Expanding-Your-Cottage-Bakery-Product-Line.jpg?fit=1200%2C800&ssl=1',
  },
  {
    'name': 'Organic Avocado',
    'price': '\$23.85',
    'image': 'https://static.libertyprim.com/files/familles/avocat-large.jpg?1569271724',
  },
  {
    'name': 'Orange',
    'price': '\$18.00',
    'image': 'https://static.wixstatic.com/media/49332e_38977e44d644415f940e9f408ddd30ba~mv2.jpg/v1/fill/w_480,h_404,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/49332e_38977e44d644415f940e9f408ddd30ba~mv2.jpg',
  },
  {
    'name': 'Monster',
    'price': '\$23.85',
    'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTup-VkjPUnlYuo509ehU2Gb43eYfa6MNPNgA&s',
  },
  {
    'name': 'Banana',
    'price': '\$18.00',
    'image': 'https://www.jaimefruitsetlegumes.ca/wp-content/uploads/2019/08/iStock_000007671231Large-e1565725651658-700x700.jpg',
  },
];