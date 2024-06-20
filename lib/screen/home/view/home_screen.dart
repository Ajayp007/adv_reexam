import 'package:adv_reexam/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().getCountry();
  }

  HomeProvider? providerR;
  HomeProvider? providerW;

  @override
  Widget build(BuildContext context) {
    providerR = context.read<HomeProvider>();
    providerW = context.watch<HomeProvider>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("World"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: providerW!.countryModelList!.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'detail',
                  arguments: providerW!.countryModelList![index]);
            },
            title: Text(
                "${providerR!.countryModelList![index].nameModel!.common}"),
            trailing: IconButton(
              icon: const Icon(Icons.favorite_border_outlined),
              onPressed: () {
                
              },
            ),
            subtitle: Text("Independent :- ${providerR!.countryModelList![index].independent}"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "${providerR!.countryModelList![index].flagsModel!.png}"),
            ),
          );
        },
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                    "https://www.thoughtco.com/thmb/bZbxog9GJSRxvMN9ZfHiXZLVRyo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Earth_Eastern_Hemisphere-56a8cda43df78cf772a0cc74.jpg"),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.home_outlined,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Home",
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'like');
                    },
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      size: 24,color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Favourite",
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share_outlined,
                      size: 24,color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    "Share",
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
