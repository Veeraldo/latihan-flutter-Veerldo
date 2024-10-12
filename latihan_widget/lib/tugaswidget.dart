import 'package:flutter/material.dart';

class MyGallery extends StatelessWidget {
  const MyGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Galeri Foto",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.network(
            "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTFZFu6J5fNkszT5rEWlZiJQXMI5QzLtdiOFG61OTqoOlIWWocl",
            width: double.infinity,
            height: 200,
            fit: BoxFit.fill,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Jalan di Barcelona",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 29),
              )
            ],
          ),
          Column(
            children: [
              Divider(),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  Text(
                    " Lokasi: Barcelona, Spanyol",
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.blue,
                  ),
                  Text(" Publikasi: 13 Agustus 2013"),
                ],
              ),
              Divider(),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Text("Deskripsi",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 29)),
                ],
              ),
            ],
          ),
          Column(
            children: [
              Text(
                  "Sebuah persimpangan jalan di Barcelona, Spanyol, Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik"),
            ],
          )
        ],
      ),
    );
  }
}
