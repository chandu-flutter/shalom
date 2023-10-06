import 'package:flutter/material.dart';
import 'package:shalom/downloaad.dart';
import 'package:shalom/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 128, 0, 128),
        title: const Text('Thandri Sannidhi'),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                height: 200,
                width: 340,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: const Offset(4, 4),
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(-4, -4),
                    ),
                  ],
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mic,
                      size: 80,
                      color: Color.fromARGB(255, 128, 0, 128),
                    ),
                    Text(
                      'Songs',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DownloadScreen();
                      },
                    ),
                  );
                },
                child: Linked(
                  icon: Icons.description,
                  label1: "Satya",
                  label2: "Darsanam",
                ),
              ),
              Linked(
                icon: Icons.edit,
                label1: "",
                label2: "Blog",
              ),
              Linked(
                icon: Icons.monetization_on,
                label1: "",
                label2: "Tithe",
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Linked(
                icon: Icons.description,
                label1: "Satya",
                label2: "Darsanam",
              ),
              Linked(
                icon: Icons.edit,
                label1: "",
                label2: "Blog",
              ),
              Linked(
                icon: Icons.monetization_on,
                label1: "",
                label2: "Tithe",
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Linked(
                icon: Icons.description,
                label1: "Satya",
                label2: "Darsanam",
              ),
              Linked(
                icon: Icons.edit,
                label1: "",
                label2: "Blog",
              ),
              Linked(
                icon: Icons.monetization_on,
                label1: "",
                label2: "Tithe",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Linked extends StatelessWidget {
  IconData icon;
  String label1;
  String label2;
  Linked({
    super.key,
    required this.icon,
    required this.label1,
    required this.label2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(4, 4),
          ),
          const BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(-4, -4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label1,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
          Icon(
            icon,
            size: 40,
            color: Color.fromARGB(255, 128, 0, 128),
          ),
          Text(
            label2,
            style: TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
