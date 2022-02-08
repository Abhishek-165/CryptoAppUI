import 'package:crypto/widgets/homeTabWidgets/home_header_overlaycard.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 20, top: 20, left: 48.0),
          height: 165,
          width: double.infinity,
          color: Theme.of(context).primaryColor,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Balance",
                    style: TextStyle(
                        fontSize: 18, color: Colors.white.withOpacity(0.4)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "\$32,761.65",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(Icons.trending_up,
                          color: Colors.white.withOpacity(0.7)),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "\$1,896",
                        style: TextStyle(color: Colors.white.withOpacity(0.7)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Today's Profit",
                        style: TextStyle(color: Colors.white.withOpacity(0.4)),
                      )
                    ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 30,
                      margin: const EdgeInsets.only(left: 30.0),
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          color: Colors.white38),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.arrow_drop_up,
                            color: Colors.white,
                            size: 24,
                          ),
                          Text(
                            "9.17%",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 4.0,
                          )
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
        const HomeHeaderOverlayCard()
      ],
    );
  }
}
