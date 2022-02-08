import 'package:crypto/widgets/homeTabWidgets/home_body_header.dart';
import 'package:crypto/widgets/homeTabWidgets/home_bottom_bar..dart';
import 'package:crypto/widgets/homeTabWidgets/home_child_body.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
          child: Column(
        children: const [HomeBodyHeader(), HomeChildBody(), HomeBottomBar()],
      )),
    );
  }
}
