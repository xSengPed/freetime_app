import 'package:flutter/material.dart';
import 'package:freetime_app/utils/custom_colors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Notification",
                style: TextStyle(
                    fontSize: 13,
                    color: CustomColor.charcoal,
                    fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Text(
                "Long Descriptionnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnng Descriptionnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn",
                style: TextStyle(
                    fontSize: 12,
                    color: CustomColor.charcoal,
                    overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
