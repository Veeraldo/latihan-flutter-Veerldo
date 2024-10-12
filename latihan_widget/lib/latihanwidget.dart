import 'package:flutter/material.dart';

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Widget Demo",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            color: Colors.blue,
            child: const Center(
              child: Text(
                "Veraldo",
                style: TextStyle(fontSize: 20, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Ini adalah tombol Elevated",
                style: TextStyle(color: Colors.white),
              ),
            ),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(), backgroundColor: Colors.blue),
          ),
          SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
              ),
              Text("Rating: 4.5")
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Image.network(
            'https://static.promediateknologi.id/crop/0x247:1080x1075/0x0/webp/photo/p3/75/2024/09/10/Snapinstaapp_453945668_983071183595220_9216234579381105776_n_1080-1149338962.jpg',
            width: double.infinity,
            height: 200,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
