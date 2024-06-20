import 'package:adv_reexam/screen/home/model/home_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    CountryModel model =
        ModalRoute.of(context)!.settings.arguments as CountryModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Country Detail"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${model.nameModel!.common}",
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20),
            Center(
              child: Image.network(
                "${model.flagsModel!.png}",
                fit: BoxFit.cover,
                height: 230,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 160,
              width: MediaQuery.sizeOf(context).width,
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text("Region"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("${model.region}"),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          const Text(
                            "Capital",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("${model.capital![0]}"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          const Text("Area"),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("${model.area}"),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          const Text(
                            "Latlng",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text("${model.latlng![0]}"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
