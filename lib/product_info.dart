import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Map<String, String> product;

  const ProductDetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // Image en haut
          ClipRRect(
            borderRadius: const BorderRadius.vertical(bottom: Radius.circular(16)),
            child: Image.network(
              product['image']!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 28),
          // Section principale
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(35.0)),
                border: Border.all(
                  color: Colors.grey.shade300, // Couleur du contour
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 6.0,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Titre et prix
                  Text(
                    product['name']!,
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product['price']!,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Description
                  const SizedBox(height: 16),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut gravida elementum nunc, vitae facilisis orci varius ac.',
                    style: TextStyle(fontSize: 16),
                  ),

                  // Related Items
                  const SizedBox(height: 16),
                  const Text(
                    'Related Items:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        relatedItemWidget(
                          image: 'https://kivugreen.com/92-large_default/fraise.jpg',
                          name: 'Strawberry',
                          price: '\$20.85',
                        ),
                        relatedItemWidget(
                          image: 'https://static.libertyprim.com/files/familles/avocat-large.jpg?1569271724',
                          name: 'Avocado',
                          price: '\$23.85',
                        ),
                        relatedItemWidget(
                          image: 'https://i0.wp.com/pam-main-website-media.s3.amazonaws.com/wp-content/uploads/2023/10/06111734/Expanding-Your-Cottage-Bakery-Product-Line.jpg?fit=1200%2C800&ssl=1',
                          name: 'Bakery',
                          price: '\$15.10',
                        ),
                        relatedItemWidget(
                          image: 'https://static.wixstatic.com/media/49332e_38977e44d644415f940e9f408ddd30ba~mv2.jpg/v1/fill/w_480,h_404,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/49332e_38977e44d644415f940e9f408ddd30ba~mv2.jpg',
                          name: 'Orange',
                          price: '\$18.00',
                        ),
                        relatedItemWidget(
                          image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTup-VkjPUnlYuo509ehU2Gb43eYfa6MNPNgA&s',
                          name: 'Monster',
                          price: '\$23.85',
                        ),
                      ],
                    ),
                  ),

                  // Espacement flexible et bouton en bas
                  const Spacer(),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Ajouter au panier
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                      ),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget stylisé pour les "related items"
  Widget relatedItemWidget({required String image, required String name, required String price}) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 4.0,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Image du produit
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                image,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis, // Gestion du texte trop long
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: const TextStyle(fontSize: 14, color: Colors.green),
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
