import 'package:crypto/UI/my_portolio.dart';
import 'package:crypto/common/colors.dart';
import 'package:crypto/providers/coin_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeChildBody extends StatefulWidget {
  const HomeChildBody({Key? key}) : super(key: key);

  @override
  _HomeChildBodyState createState() => _HomeChildBodyState();
}

class _HomeChildBodyState extends State<HomeChildBody> {
  @override
  Widget build(BuildContext context) {
    var provRef = Provider.of<CoinProvider>(context, listen: true);
    return provRef.isLoading || provRef.cryptoCoins == null
        ? const CircularProgressIndicator()
        : Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.07,
            ),
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 4,
                itemBuilder: (BuildContext ctx, i) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyPortolio(i)));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: provRef.image(i).toString(),
                            child: Image.asset(
                              "lib/assets/images/${provRef.image(i)}",
                              height: 40,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Text(
                              provRef.title(i).toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$${provRef.amount(i)}",
                                  style: const TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                Container(
                                    padding: const EdgeInsets.all(4.0),
                                    decoration: BoxDecoration(
                                        color: provRef.sign(i) == "positive"
                                            ? customPrimaryColor
                                                .withOpacity(0.3)
                                            : Colors.red.withOpacity(0.3),
                                        shape: BoxShape.circle),
                                    child: provRef.sign(i) == "positive"
                                        ? const Icon(
                                            Icons.trending_up,
                                            size: 20,
                                          )
                                        : const Icon(
                                            Icons.trending_down,
                                            color: Colors.red,
                                          ))
                              ],
                            ),
                          ),
                          Text(
                            provRef.percentage(i).toString(),
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: provRef.sign(i) == "positive"
                                    ? customPrimaryColor
                                    : Colors.red.withOpacity(0.7)),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  );
                }),
          );
  }
}
