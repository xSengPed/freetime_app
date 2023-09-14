import 'package:flutter/material.dart';
import 'package:freetime_app/components/notification_widget.dart';
import 'package:freetime_app/components/person_widget.dart';
import 'package:freetime_app/models/person.dart';
import 'package:freetime_app/utils/custom_colors.dart';

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
          "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png",
      favorite: true,
      group: "Group 1",
      location: "Nakorn Si Thammarat",
    ),
    Person(
      name: "Sakkarin Bunsob",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png",
      favorite: true,
      group: "Group 1",
      location: "Krabi",
    ),
    Person(
      name: "Krittamet Petchkor",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png",
      favorite: true,
      group: "Group 1",
      location: "Krabi",
    ),
    Person(
      name: "Titisak Luangsakul",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png",
      favorite: true,
      group: "Group 1",
      location: "Surathani",
    ),
    Person(
      name: "Teerapong Nitiporndecha",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png",
      favorite: true,
      group: "Group 1",
      location: "Trang",
    ),
    Person(
      name: "Nattawut Sawangjit",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png",
      favorite: true,
      group: "Group 1",
      location: "Nakorn Sri Thammarat",
    ),
    Person(
      name: "Pimwipha Sakulkham",
      email: "kalima007c@gmail.com",
      tel: "091-053-3948",
      avatarUrl:
          "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_1280.png",
      favorite: true,
      group: "Group 1",
      location: "Kamphang Phet",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          centerTitle: false,
          elevation: 1,
          toolbarHeight: 90,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          backgroundColor: Colors.white,
          // backgroundColor: Colors.amber[50]!.withOpacity(0.8),
          title: Row(
            children: [
              SizedBox(
                  height: 32,
                  width: 32,
                  child: Image.asset(
                    "assets/images/icons/user.png",
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                width: 16,
              ),
              Text(
                "Home",
                style: TextStyle(
                    color: CustomColor.charcoal,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: MediaQuery.removePadding(
              context: context,
              removeTop: true,
              child: ListView(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                            height: 32,
                            width: 32,
                            child: Image.asset(
                              "assets/images/icons/notification.png",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            child: Text(
                          "Notification",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: CustomColor.charcoal),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        NotificationWidget(),
                        NotificationWidget(),
                        NotificationWidget(),
                        NotificationWidget(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
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
                          "Favourite",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: CustomColor.charcoal),
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
                        onTapFavorite: (bool f) {
                          setState(() {
                            persons[index].favorite = f;
                          });
                        },
                      );

                      // if (persons[index].favorite == true) {
                      //   return PersonWidget(
                      //     person: persons[index],
                      //     onTapFavorite: (bool f) {
                      //       setState(() {
                      //         persons[index].favorite = f;
                      //       });
                      //     },
                      //   );
                      // } else {
                      //   return Container();
                      // }
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.5,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
