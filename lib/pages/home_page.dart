import 'package:flutter/material.dart';
import 'package:reseau_social/components/navbar.dart';
import 'package:reseau_social/components/publication.dart';
import 'package:reseau_social/components/story.dart';
import 'package:reseau_social/pages/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight + 20),
        child: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.black87,),
            onPressed: () {
              // Perform camera action
            },
          ),
          title: Container(
            height: 40, // Set the width of the Container
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Rechercher',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                ),
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Image.network("https://img.icons8.com/fluency/48/null/facebook-messenger--v2.png"),
              onPressed: () {
                // Show notifications
              },
            ),
          ],
          backgroundColor: Colors.white,
        ),
      ),

      //body
      body: Stack(
        children: [SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [

              //contenu principal
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [

                    //stories
                    Row(
                      children: const [
                        Text(
                          "Stories",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text("Voir les archives>"),
                      ],
                    ),

                    const SizedBox(height: 10,),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          MyStory(img: '', utilisateur: 'Lyzzi',),
                          MyStory(img: '', utilisateur: 'Parker',),
                          MyStory(img: '', utilisateur: 'Lucia',),
                          MyStory(img: '', utilisateur: 'Eben',),
                        ],
                      ),
                    ),

                    const SizedBox(height: 25,),

                    //publications
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const DetailsPage(),
                                  ),
                                ),
                                child: const Hero(
                                  tag: "main",
                                  child: FacebookPost(
                                      userProfileImageUrl: "assets/images/tumblr_4928ab9d86f0bd0c8bc15aa4668fb72b_74d38c36_500.jpg",
                                      userName: "userName",
                                      likesCount: 156,
                                      commentsCount: 14,
                                      postImageUrl: "assets/images/tumblr_4928ab9d86f0bd0c8bc15aa4668fb72b_74d38c36_500.jpg"
                                  ),

                                ),
                              ),
                              const FacebookPost(
                                  userProfileImageUrl: "assets/images/tumblr_4928ab9d86f0bd0c8bc15aa4668fb72b_74d38c36_500.jpg",
                                  userName: "userName",
                                  likesCount: 12,
                                  commentsCount: 5,
                                  postImageUrl: "assets/images/tumblr_4928ab9d86f0bd0c8bc15aa4668fb72b_74d38c36_500.jpg"
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

          //bouton ajout publication
          Positioned(
            bottom: 30,
            right: 10,
            child: FloatingActionButton(
            elevation: 10,
            onPressed: () {
              // Add your button action here
            },
            backgroundColor: const Color(0xff3b5998),
            child: const Icon(Icons.add),
          ))
        ]
      ),

      //navbar
      bottomNavigationBar: const MyBottomNavigationBar(),

    );
  }
}
