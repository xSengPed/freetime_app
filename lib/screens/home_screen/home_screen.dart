import 'package:flutter/material.dart';
import 'package:freetime_app/components/person_widget.dart';
import 'package:freetime_app/models/person.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Person> persons = [
    Person(
      name: "Donnukrit Satirakul",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://scontent.fbkk25-1.fna.fbcdn.net/v/t39.30808-6/362915463_6653238568030661_6021005547844896506_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=tfPNgdL_gRIAX80mDf4&_nc_ht=scontent.fbkk25-1.fna&oh=00_AfATRN_tYVWIKyI_OGWJnJOGhhMJ15REev9hhMvpCFau4A&oe=6505DC5E",
      favorite: false,
      group: "Group 1",
      location: "Phuket",
    ),
    Person(
      name: "Donnukrit Satirakul",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://scontent.fbkk25-1.fna.fbcdn.net/v/t39.30808-6/362915463_6653238568030661_6021005547844896506_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=tfPNgdL_gRIAX80mDf4&_nc_ht=scontent.fbkk25-1.fna&oh=00_AfATRN_tYVWIKyI_OGWJnJOGhhMJ15REev9hhMvpCFau4A&oe=6505DC5E",
      favorite: false,
      group: "Group 1",
      location: "Phuket",
    ),
    Person(
      name: "Donnukrit Satirakul",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://scontent.fbkk25-1.fna.fbcdn.net/v/t39.30808-6/362915463_6653238568030661_6021005547844896506_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=tfPNgdL_gRIAX80mDf4&_nc_ht=scontent.fbkk25-1.fna&oh=00_AfATRN_tYVWIKyI_OGWJnJOGhhMJ15REev9hhMvpCFau4A&oe=6505DC5E",
      favorite: false,
      group: "Group 1",
      location: "Phuket",
    ),
    Person(
      name: "Donnukrit Satirakul",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://scontent.fbkk25-1.fna.fbcdn.net/v/t39.30808-6/362915463_6653238568030661_6021005547844896506_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=tfPNgdL_gRIAX80mDf4&_nc_ht=scontent.fbkk25-1.fna&oh=00_AfATRN_tYVWIKyI_OGWJnJOGhhMJ15REev9hhMvpCFau4A&oe=6505DC5E",
      favorite: false,
      group: "Group 1",
      location: "Phuket",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                SizedBox(
                    height: 32,
                    width: 32,
                    child: Image.asset(
                      "assets/images/icons/favorite.png",
                      fit: BoxFit.cover,
                    )),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Text(
                  "Favorite",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: persons.length,
            itemBuilder: (context, index) {
              return PersonWidget(
                person: persons[index],
              );
            },
          )
        ],
      ),
    );
  }
}
