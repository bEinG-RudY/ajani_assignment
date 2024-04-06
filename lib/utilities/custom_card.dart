import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  var name;
  var photo;
  var phone;
  var membership;
  CustomCard(
      {super.key,
      required this.name,
      required this.photo,
      required this.phone,
      required this.membership});

  @override
  Widget build(BuildContext context) {
    // double sh = MediaQuery.sizeOf(context).height;
    double sw = MediaQuery.sizeOf(context).width;
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        height: sw / 2,
        width: sw,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                membership == "gold"
                    ? 'assets/icons/bg-gold.png'
                    : 'assets/icons/bg-silver.png',
                fit: BoxFit.fill,
              ),
            ),
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                  height: sw / 2 * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: 110,
                                    height: 110,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: membership == "gold"
                                          ? LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color.fromRGBO(203, 152, 63, 1),
                                                Color.fromRGBO(250, 213, 98, 1),
                                                Color.fromRGBO(
                                                    250, 239, 159, 1),
                                                Color.fromRGBO(212, 175, 97, 1),
                                                Color.fromRGBO(203, 152, 63, 1),
                                              ],
                                            )
                                          : LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Color.fromRGBO(
                                                    192, 192, 192, 1),
                                                Color.fromRGBO(
                                                    239, 253, 227, 1),
                                                Color.fromRGBO(
                                                    223, 221, 221, 1),
                                                Color.fromRGBO(
                                                    201, 213, 226, 1),
                                                Color.fromRGBO(
                                                    192, 192, 192, 1),
                                              ],
                                            ), // Background color of the circular container
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: ClipOval(
                                        child: Image.network(
                                          photo,
                                          fit: BoxFit.fill,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return const Icon(Icons
                                                .error); // Display an error icon
                                          },
                                        ),
                                      ),
                                    )),
                              ),
                              Positioned(
                                left: 10,
                                right: 10,
                                bottom: 10,
                                child: Container(
                                  width: 63,
                                  height: 32,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    gradient: membership == "gold"
                                        ? LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(203, 152, 63, 1),
                                              Color.fromRGBO(250, 213, 98, 1),
                                              Color.fromRGBO(250, 239, 159, 1),
                                              Color.fromRGBO(212, 175, 97, 1),
                                              Color.fromRGBO(203, 152, 63, 1),
                                            ],
                                          )
                                        : LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              Color.fromRGBO(192, 192, 192, 1),
                                              Color.fromRGBO(239, 253, 227, 1),
                                              Color.fromRGBO(223, 221, 221, 1),
                                              Color.fromRGBO(201, 213, 226, 1),
                                              Color.fromRGBO(192, 192, 192, 1),
                                            ],
                                          ),
                                  ),
                                  // Background color for text

                                  child: Center(
                                    child: Text(
                                      membership,
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Color.fromRGBO(0, 0, 51, 1),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(0, 0, 51, 1)),
                                ),
                                SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  phone,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(0, 0, 51, 1)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 57,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(0, 0, 51, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Edit",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: sw / 2 * 0.3,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      color: const Color.fromRGBO(0, 0, 51, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/icon-gold-star.png',
                                width: 30,
                                height: 30,
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const Text(
                                'Manage Your Membership',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Color.fromRGBO(250, 226, 127, 1)),
                              ),
                            ],
                          ),
                          const Icon(Icons.arrow_forward_ios,
                              color: Color.fromRGBO(250, 226, 127, 1)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
