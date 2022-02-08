import 'package:crypto/providers/coin_provider.dart';
import 'package:crypto/widgets/homeTabWidgets/custom_appbar.dart';
import 'package:crypto/widgets/homeTabWidgets/home_body.dart';
import 'package:crypto/widgets/homeTabWidgets/home_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      Provider.of<CoinProvider>(context, listen: false).getResponse();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: customAppBar(),
      body: SafeArea(
        child: Column(
          children: const [
            HomeHeader(),
            HomeBody(),
          ],
        ),
      ),
    );
  }
}
