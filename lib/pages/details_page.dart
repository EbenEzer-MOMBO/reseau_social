import 'package:flutter/material.dart';
import 'package:reseau_social/components/details_navbar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black87,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Fil d'actualité",
          style: TextStyle(fontSize: 15, color: Colors.black87),
        ),
      ),

      //body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                      "assets/images/tumblr_a9d5f0b1818e54105042cd3714f313d0_e9c0862b_1280.jpg"),
                ),
                title: Text("Megan Thee Stallion"),
                subtitle: Text('Il y a 2 heures'),
                trailing: Icon(Icons.more_vert),
              ),
              const SizedBox(height: 20,),
              const Text(
                "Met Gala in bad bitch 👄",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://media.allure.com/photos/64341b7be133aa009624b594/master/pass/megan%20thee%20stallion%20curly%20bangs.jpg",
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://s.yimg.com/ny/api/res/1.2/n9JGdcMB.CdNUEzqhB1vXA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyMDA7aD03OTQ-/https://media.zenfs.com/en/billboard_547/1f3752d196e080765e8ebbb8d7e2d400",
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  "https://static01.nyt.com/images/2022/05/05/fashion/02-met-gala-MEGANTHEESTALLION/02-met-gala-MEGANTHEESTALLION-facebookJumbo.jpg",
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const DetailsNavbar(),
    );
  }
}
