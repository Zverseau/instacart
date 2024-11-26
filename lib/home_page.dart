import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'all_category.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    Center(child: Text('Accueil', style: TextStyle(fontSize: 24))),
    Center(child: Text('Rechercher', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profil', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Center(child: Text("Home", style: TextStyle(color: Colors.white),),),
          backgroundColor: Colors.green,
          leading: const Icon(Icons.menu_outlined, color: Colors.white,),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.white,)),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(top: 10, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("All Categories", style: TextStyle(fontSize: 20),),
                    TextButton(onPressed: (){}, child: const Text("view items", style: TextStyle(color: Colors.grey, fontSize: 10),))
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>CategoryAll()));},
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            elevation: 5,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(padding: EdgeInsets.all(15),
                                  child: Image(image: AssetImage('assets/images/fruits.png'),height: 50,),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Text("Fruits"),
                      ],
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Image(image: AssetImage('assets/images/legume.png'),height: 50,),
                              )
                            ],
                          ),
                        ),
                        const Text("Vegetables"),
                      ],
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Image(image: AssetImage('assets/images/drink.png'),height: 50,),
                              )
                            ],
                          ),
                        ),
                        const Text("Drinks"),
                      ],
                    ),
                    const SizedBox(width: 15,),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(15),
                                child:Image(image: AssetImage('assets/images/backery.png'),height: 50,),
                              )
                            ],
                          ),
                        ),
                        Text("Bakery"),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Image(image: AssetImage('assets/images/fruits.png'),height: 50,),
                              )
                            ],
                          ),
                        ),
                        Text("Fruits"),
                      ],
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(padding: EdgeInsets.all(15),
                                child: Image(image: AssetImage('assets/images/fruits.png'),height: 50,),
                              )
                            ],
                          ),
                        ),
                        const Text("Fruits"),
                      ],
                    ),
                    const SizedBox(width: 15,),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(onPressed: (){}, child: const Text("Offers", style: TextStyle(color: Colors.green),)),
                      const Text("Fresh Produce", style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  TextButton(onPressed: (){}, child: const Text("view mores", style: TextStyle(color: Colors.grey, fontSize: 10),))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                Row(
                  children: [
                    SizedBox(
                      width: 120,
                      child:
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoryAll() ));
                            },
                            child:
                            Card(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              child:
                              const Column(
                                children: [
                                  Padding(padding: EdgeInsets.only(top: 10, right: 10),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child:
                                      Icon(Icons.favorite_outlined, size: 15, color: Colors.grey,),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 20),
                                    child: Image(image: AssetImage('assets/images/avocado.png'),width: 80,),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          const Padding(padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Organic Hass Avocado"),
                                Text("\$230", style: TextStyle(color: Colors.green),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child:
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child:
                                    Icon(Icons.favorite_outlined, size: 15, color: Colors.grey,),
                                  ),
                                ),

                                Image(image: AssetImage('assets/images/banana.png'))
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Organic Banana (each)"),
                                Text("\$230", style: TextStyle(color: Colors.green),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child:
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child:
                                    Icon(Icons.favorite_outlined, size: 15, color: Colors.grey,),
                                  ),
                                ),

                                Padding(padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 20),
                                  child: Image(image: AssetImage('assets/images/carrot.png')),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Peeled Bioe carrots"),
                                Text("\$230", style: TextStyle(color: Colors.green),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child:
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child:
                                    Icon(Icons.favorite_outlined, size: 15, color: Colors.grey,),
                                  ),
                                ),

                                Padding(padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 20),
                                    child:Image(image: AssetImage('assets/images/orange.png'),width: 60,)
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Organic Hass Avocado"),
                                Text("\$230", style: TextStyle(color: Colors.green),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Snacks", style: TextStyle(fontSize: 20),),
                  TextButton(onPressed: (){}, child: Text("view mores", style: TextStyle(fontSize: 10, color: Colors.grey),))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                Row(
                  children: [
                    SizedBox(
                      width: 120,
                      child:
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child:
                                    Icon(Icons.favorite_outlined, size: 15, color: Colors.grey,),
                                  ),
                                ),

                                Padding(padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 10),
                                  child: Image(image: AssetImage('assets/images/lays.png'),height: 100,),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Organic Hass Avocado"),
                                Text("\$230", style: TextStyle(color: Colors.green),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child:
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child:
                                    Icon(Icons.favorite_outlined, size: 15, color: Colors.grey,),
                                  ),
                                ),

                                Padding(padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 10),
                                  child: Image(image: AssetImage('assets/images/lays2.png'),height: 100,),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Organic Hass Avocado"),
                                Text("\$230", style: TextStyle(color: Colors.green),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child:
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child:
                                    Icon(Icons.favorite_outlined, size: 15, color: Colors.grey,),
                                  ),
                                ),

                                Padding(padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 10),
                                  child: Image(image: AssetImage('assets/images/lays.png'),height: 100,),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Organic Hass Avocado"),
                                Text("\$230", style: TextStyle(color: Colors.green),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 120,
                      child:
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              children: [
                                Padding(padding: EdgeInsets.only(top: 10, right: 10),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child:
                                    Icon(Icons.favorite_outlined, size: 15, color: Colors.grey,),
                                  ),
                                ),

                                Padding(padding: EdgeInsets.only(left: 0, top: 0, right: 0, bottom: 10),
                                  child: Image(image: AssetImage('assets/images/lays.png'),height: 100,),
                                ),
                              ],
                            ),
                          ),
                          const Padding(padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Organic Hass Avocado"),
                                Text("\$230", style: TextStyle(color: Colors.green),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(items :const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 32,), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag, size: 32,), label: 'shop'),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_giftcard, size: 32,), label: 'gift'),
          BottomNavigationBarItem(icon: Icon(Icons.person, size: 32,), label: 'account')
        ],
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          showSelectedLabels: false,
        )
    );
  }
}
