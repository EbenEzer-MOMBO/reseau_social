import 'package:flutter/material.dart';
import 'package:reseau_social/components/navbar.dart';
import 'package:reseau_social/components/publication.dart';
import 'package:reseau_social/components/story.dart';
import 'package:reseau_social/components/story_personal.dart';
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
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.black87,
            ),
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
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Image.network(
                  "https://img.icons8.com/fluency/48/null/facebook-messenger--v2.png"),
              onPressed: () {
                // Show notifications
              },
            ),
          ],
          backgroundColor: Colors.white,
        ),
      ),

      //body
      body: Stack(children: [
        SingleChildScrollView(
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
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text("Voir les archives>"),
                      ],
                    ),

                    const SizedBox(
                      height: 10,
                    ),

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          MyStoryPerso(),
                          MyStory(
                            img:
                                'https://cdn.discordapp.com/attachments/1038926392538173481/1085977570748682270/211282ab-6d0a-4a4d-8c3a-5399fcfee2d0.JPG',
                            pfp:
                                'https://static.wikia.nocookie.net/souleater/images/7/7a/Death_the_Kid_anime.jpg/revision/latest?cb=20150318142752&path-prefix=fr',
                            utilisateur: 'Eben',
                          ),
                          MyStory(
                            img:
                                'https://cdn.discordapp.com/attachments/877856468840370216/1101324025734647869/IMG_2019.JPG',
                            pfp:
                                'https://cdn.discordapp.com/attachments/877856468840370216/1101324025734647869/IMG_2019.JPG',
                            utilisateur: 'Lizy',
                          ),
                          MyStory(
                            img:
                                'https://cdn.discordapp.com/attachments/877856468840370216/1048130574289735690/f3ab8dc2-0e6d-42fe-a253-4ac10dbbcfc3.JPG',
                            pfp:
                                'https://static.nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/2f987ad6-1f52-4720-8f67-38314a46c45b/les-meilleures-chaussures-%C3%A0-crampons-nike-football.jpg',
                            utilisateur: 'Parker',
                          ),
                          MyStory(
                            img:
                                'https://cdn.discordapp.com/attachments/1042038051012083753/1070730597024157788/WhatsApp_Image_2023-02-02_at_12.39.47.jpeg',
                            pfp:
                                'https://i.etsystatic.com/9718127/r/il/60a606/3493169772/il_1080xN.3493169772_jd1f.jpg',
                            utilisateur: 'Lucia',
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 25,
                    ),

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
                                      userProfileImageUrl:
                                          "assets/images/tumblr_a9d5f0b1818e54105042cd3714f313d0_e9c0862b_1280.jpg",
                                      userName: "Megan Thee Stalion",
                                      likesCount: 15402,
                                      commentsCount: 1236,
                                      time: "Il y a 2 heures",
                                      postImageUrl:
                                          "https://media.allure.com/photos/64341b7be133aa009624b594/master/pass/megan%20thee%20stallion%20curly%20bangs.jpg"),
                                ),
                              ),
                              const FacebookPost(
                                  userProfileImageUrl:
                                      "assets/images/ab6761610000e5eb8278b782cbb5a3963db88ada.jpeg",
                                  userName: "Tyler, the Creator",
                                  likesCount: 11200,
                                  commentsCount: 856,
                                  time: "Il y a 1 heure",
                                  postImageUrl:
                                      "https://www.radiofrance.fr/s3/cruiser-production/2021/10/db963200-2c09-4525-8ab0-6343894f1530/870x489_tyler-the-creator.jpg")
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
      ]),

      //navbar
      bottomNavigationBar: const MyBottomNavigationBar(),
    );
  }
}
