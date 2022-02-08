import 'package:crypto/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

customAppBar() => AppBar(
      backgroundColor: customPrimaryColor,
      elevation: 0,
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: customPrimaryColor),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome To",
              style:
                  TextStyle(fontSize: 24, color: Colors.white.withOpacity(0.2)),
            ),
            const Text(
              "CoinPro",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
              child: const Icon(Icons.notifications, color: Colors.white)),
        )
      ],
    );

AppBarWidget() => AppBar(
    systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.grey[200]),
    elevation: 0,
    backgroundColor: Colors.grey[200]);
