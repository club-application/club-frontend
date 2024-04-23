import 'package:club_frontend/theme/pallete.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<dynamic> clubList = [
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSJ6nfCD5Sq5Na4NFEIAy6GXxrHiuTSQfV8qrRngmqxQ&s",
      "name": "Android",
      "type": "Mobile",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhX9GDxGnfhsEn3w-QdbxJI8zWkfHxUNJzHXnuE7birA&s",
      "name": "iOS",
      "type": "Mobile",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvZwc8_YE0wb11CK3k1kO2Deh7ignAus8mQQ&s",
      "name": "Flutter",
      "type": "Cross-Platform",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ18Gt9viR2yfaYTVjyutOeMAGk6sFTje4g2A&s",
      "name": "React Native",
      "type": "Cross-Platform",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYZqZkpMyiN2uSuT7GAf6JSkJ44YsZqoQHdw&s",
      "name": "Python",
      "type": "Backend",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkFe2u3Q8Bj-tL9F-WzdC_NiEuLv9L-hfFTQ&s",
      "name": "Java",
      "type": "General Purpose",
    },
    {
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkFe2u3Q8Bj-tL9F-WzdC_NiEuLv9L-hfFTQ&s",
      "name": "Kotlin",
      "type": "Mobile",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBar(
                leading: Padding(
                    padding: EdgeInsets.all(4),
                    child: const Icon(
                      Icons.search,
                      size: 28,
                    )),
                hintText: 'Explore club..',
              ),
              const SizedBox(height: 16),
              Container(
                height: 600,
                child: GridView.builder(
                  itemCount: clubList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    dynamic club = clubList[index];
                    return Container(
                      width: 250,
                      height: 300,
                      child: Card(
                        color: Pallete.onBackgroundColor,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Image.network(
                                club['image'],
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                club['name'],
                                style: const TextStyle(
                                  color: Pallete.whiteColor,
                                  fontSize: 20,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                club['type'],
                                style: const TextStyle(
                                  color: Pallete.greyColor,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
