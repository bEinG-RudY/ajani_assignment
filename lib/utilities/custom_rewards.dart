import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomRewards extends StatelessWidget {
  var rewards;

  CustomRewards({super.key, required this.rewards});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: MediaQuery.sizeOf(context).width,
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Daily Rewards",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              customDaily(context, rewards[0]["icon"], rewards[0]["title"],
                  rewards[0]["summary"], rewards[0]["coins"].toString()),
              const SizedBox(
                height: 15,
              ),
              customDaily(context, "video.png", "Watch Video",
                  "Watch video to earn reward coins", "50"),
            ],
          ),
        ),
      ),
    );
  }

  Container customDaily(BuildContext context, icon, title, summary, coin) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(244, 248, 255, 1),
          borderRadius: BorderRadius.circular(10)),
      height: 60,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/icons/$icon",
                width: 34,
                height: 34,
              ),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(0, 0, 0, 1)),
                  ),
                  Text("$summary",
                      style: TextStyle(
                          fontSize: 12, color: Color.fromRGBO(0, 0, 0, 0.54))),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "+$coin",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                width: 4,
              ),
              Image.asset(
                "assets/icons/icon-coin.png",
                width: 18,
                height: 18,
              )
            ],
          )
        ],
      ),
    );
  }
}
