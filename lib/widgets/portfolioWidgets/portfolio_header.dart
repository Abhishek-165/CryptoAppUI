import 'package:flutter/material.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.all(4.0),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white),
            alignment: Alignment.center,
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 18,
            ),
          ),
        ),
        const Text(
          "My Portfolio",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Container(
          padding: const EdgeInsets.all(4.0),
          margin: const EdgeInsets.symmetric(horizontal: 24),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          alignment: Alignment.center,
          child: const Icon(
            Icons.more_vert,
            color: Colors.black,
            size: 18,
          ),
        ),
      ]),
    );
  }
}
