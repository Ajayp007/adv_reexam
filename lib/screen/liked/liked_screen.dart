import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../home/provider/home_provider.dart';

class LikedScreen extends StatefulWidget {
  const LikedScreen({super.key});

  @override
  State<LikedScreen> createState() => _LikedScreenState();
}

class _LikedScreenState extends State<LikedScreen> {
  HomeProvider? providerR;
  HomeProvider? providerW;
  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
           ),
        child: ListView.builder(
          itemCount: providerW!.likeCountry.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text("${providerR!.likeCountry[0]}"),
                  trailing: IconButton(
                    onPressed: () {
                      providerW!.removeCountry(index);
                    },
                    icon: const Icon(Icons.delete_outline),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
