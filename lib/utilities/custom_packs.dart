import 'package:flutter/material.dart';

class CustomPacks extends StatelessWidget {
  var packs;
  CustomPacks({super.key, required this.packs});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Material(
        // color: Colors.amber,
        elevation: 2,
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Buy Coins packs",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              SizedBox(
                height: 12,
              ),
              Wrap(
                spacing: 12,
                runSpacing: 20,
                children: List.generate(
                  packs.length,
                  (index) {
                    return customContainer(
                      icon: packs[index]["icon"],
                      coins: packs[index]["coins"].toString(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class customContainer extends StatelessWidget {
  var icon;
  var coins;
  customContainer({super.key, this.icon, this.coins});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 145,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(250, 226, 127, 1).withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
        border: Border.all(
          color: Color.fromRGBO(250, 226, 127, 1),
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '$coins' '0',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Coins',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            'assets/icons/$icon',
            fit: BoxFit.contain,
            width: 53.2,
            height: 51.93,
          ),
          Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(199, 28, 28, 1),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "₹$coins",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
