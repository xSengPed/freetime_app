import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freetime_app/models/person.dart';
import 'package:freetime_app/utils/custom_colors.dart';

class PersonWidget extends StatelessWidget {
  final Person person;
  final Function(bool)? onTapFavorite;

  const PersonWidget({super.key, required this.person, this.onTapFavorite});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              height: 75,
              width: 75,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: CachedNetworkImage(
                  imageUrl: person.avatarUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${person.name}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: CustomColor.charcoal,
                          letterSpacing: 0.5),
                    ),
                    SizedBox(height: 8),
                    Text("${person.email}"),
                    SizedBox(height: 8),
                    Text("${person.tel}"),
                    SizedBox(height: 8),
                    Text("Location : ${person.location}",
                        style: TextStyle(fontSize: 12)),
                    Row(
                      children: [
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            if (onTapFavorite != null) {
                              return onTapFavorite!(!person.favorite);
                            } else {
                              return;
                            }
                          },
                          child: person.favorite
                              ? GestureDetector(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                )
                              : Icon(
                                  Icons.favorite_border,
                                ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
