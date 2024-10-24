import 'package:flutter/material.dart';
import 'package:wisata_candi/models/profile_info_item.dart';

class Profilscreen extends StatefulWidget {
  const Profilscreen({super.key});

  @override
  State<Profilscreen> createState() => _ProfilscreenState();
}

class _ProfilscreenState extends State<Profilscreen> {
  // TODO: 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = false;
  String fullName = '';
  String userName = '';
  int favouriteCandiCount = 0;
  //TODO: 5.Implementasi fungsi Sign In
  void signIn() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }
  //TODO: 6.Implementasi fungsi Sign Out

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: Colors.deepPurple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                // TODO: 2. Buat bagian ProfileHeader yang berisi gambar profile
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150),
                  ),
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepPurple, width: 2),
                        shape: BoxShape.circle,
                      ),
                      child: const CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('images/placeholder_image.png'),
                      ),
                    ),
                    if (isSignedIn)
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.deepPurple[50],
                        ),
                      ),
                  ],
                ),
                // TODO: 3. Buat bagian ProfileInfo yang berisi info profile
                SizedBox(height: 20),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                ProfileInfoItem(
                    icon: Icons.lock,
                    label: 'Pengguna',
                    value: userName,
                    iconColor: Colors.amber),
                SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                ProfileInfoItem(
                    icon: Icons.person,
                    label: 'Nama',
                    value: fullName,
                    iconColor: Colors.blue),

                SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 4),
                ProfileInfoItem(
                    icon: Icons.favorite,
                    label: 'Favorit',
                    value:
                        favouriteCandiCount > 0 ? '$favouriteCandiCount' : '',
                    iconColor: Colors.red),
                // TODO: 4. Buat ProfileActions yang berisi TextButton sign in/out
                SizedBox(height: 4),
                Divider(color: Colors.deepPurple[100]),
                SizedBox(height: 20),
                isSignedIn
                    ? TextButton(onPressed: signOut, child: Text('Sign Out'))
                    : TextButton(onPressed: signIn, child: Text('Sign In')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
