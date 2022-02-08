import 'package:flutter/material.dart';

customBottomSheet(context) {
  return Container(
    color: Colors.grey[200],
    padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(width: 1, color: Colors.red)),
              primary: Colors.white,
            ),
            child: const Text(
              'Sell',
              style: TextStyle(fontWeight: FontWeight.w700, color: Colors.red),
              textAlign: TextAlign.center,
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              primary: Theme.of(context).primaryColor,
            ),
            child: const Text(
              'Buy',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}
