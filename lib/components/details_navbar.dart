import 'package:flutter/material.dart';

class DetailsNavbar extends StatelessWidget {
  const DetailsNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomAppBar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //first row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Image.asset(
                              "assets/images/icons8-thumb-circled-24.png"),
                          Positioned(
                              left: 16,
                              child: Image.asset(
                                  "assets/images/icons8-love-circled-24.png")),
                        ],
                      ),
                    ),
                  ),
                  const Text("15402"),
                  const Spacer(),
                  const Text("1236 commentaires"),
                ],
              ),
            ),

            //second row
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up_alt_outlined),
                ),
                Container(
                  width: 300,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(color: Colors.black12, width: 1)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Ajouter un commentaire',
                      border: InputBorder.none,
                      suffixIcon: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.gif_box_outlined,
                              color: Colors.black26,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.emoji_emotions_rounded,
                              color: Colors.black26,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
