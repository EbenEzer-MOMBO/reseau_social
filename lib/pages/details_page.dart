import 'package:flutter/material.dart';
import 'package:reseau_social/components/details_navbar.dart';
import 'package:reseau_social/pages/home_page.dart';

class DetailsPage extends StatelessWidget{
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black87,),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const HomePage(),
            ),
          ),
        ),
        title: const Text(
          "Fil d'actualité",
          style: TextStyle(fontSize: 15, color: Colors.black87),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/tumblr_a9d5f0b1818e54105042cd3714f313d0_e9c0862b_1280.jpg"),
                ),
                title: Text("Megan Thee Stalion"),
                subtitle: Text('Il y a 2 heures'),
                trailing: Icon(Icons.more_vert),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Hero(
                  tag: 'main',
                  child: Image.asset(
                    "assets/images/tumblr_a9d5f0b1818e54105042cd3714f313d0_e9c0862b_1280.jpg",
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(20),
              //   child: Image.asset(
              //     "assets/images/tumblr_a9d5f0b1818e54105042cd3714f313d0_e9c0862b_1280.jpg",
              //     fit: BoxFit.cover,
              //     height: 200,
              //     width: double.infinity,
              //   ),
              // ),
              // const SizedBox(height: 12,),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(20),
              //   child: Image.asset(
              //     "assets/images/tumblr_a9d5f0b1818e54105042cd3714f313d0_e9c0862b_1280.jpg",
              //     fit: BoxFit.cover,
              //     height: 200,
              //     width: double.infinity,
              //   ),
              // ),
              // const SizedBox(height: 12,),

              const SizedBox(
                height: 10,
              ),

            ],
          ),
        ),
      ),

      resizeToAvoidBottomInset: false,

      bottomNavigationBar: const DetailsNavbar(),
    );
  }

}