import 'package:flutter/material.dart';

class MyStory extends StatelessWidget{
  final String img;
  final String utilisateur;
  const MyStory({
    required this.img,
    required this.utilisateur,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    //screen size
    final screen = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              "assets/images/tumblr_4928ab9d86f0bd0c8bc15aa4668fb72b_74d38c36_500.jpg",
              fit: BoxFit.cover,
              height: screen.height*0.18,
              width: screen.width*0.25,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.black.withOpacity(0.6),
            ),
            child: SizedBox(
              height: screen.height*0.18,
              width: screen.width*0.25,
            ),
          ),
          SizedBox(
            width: screen.height*0.12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/tumblr_4928ab9d86f0bd0c8bc15aa4668fb72b_74d38c36_500.jpg"),
                        radius: 14.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 65,),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      utilisateur,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

}