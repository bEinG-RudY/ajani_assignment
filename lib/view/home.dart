import 'package:ajani_assignment/model/data_model.dart';
import 'package:ajani_assignment/utilities/custom_appbar.dart';
import 'package:ajani_assignment/utilities/custom_card.dart';
import 'package:ajani_assignment/utilities/custom_packs.dart';
import 'package:ajani_assignment/utilities/custom_rewards.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var isLoading = true;
  var dataFromAPI;
  DataModel fetchData = DataModel();

  setupData() async {
    dataFromAPI = await fetchData.getData();

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    setupData();
  }

  @override
  Widget build(BuildContext context) {
    var profile = dataFromAPI['profile'];
    var rewards = dataFromAPI['rewards'];
    var packs = dataFromAPI['packs'];
    return Scaffold(
        appBar: AppBar(
          title: const Text('FireAppX'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: isLoading
                  ? Center(child: CircularProgressIndicator())
                  : CustomAppBar(
                      iconPath: 'icon-coin.png',
                      text: dataFromAPI['profile']['coins'].toString(),
                    ),
            ),
          ],
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12),
                  child: Column(
                    children: [
                      CustomCard(
                        name: profile['name'],
                        photo: profile['photo'],
                        phone: profile['phone'].toString(),
                        membership: profile['membership'],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      CustomRewards(rewards: rewards),
                      SizedBox(
                        height: 20,
                      ),
                      CustomPacks(packs: packs),
                    ],
                  ),
                ),
              ));
  }
}
