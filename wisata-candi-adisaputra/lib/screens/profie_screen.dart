import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // TODO : 1. Deklarasikan variabel yang dibutuhkan
  bool isSignedIn = true;
  String fullName = '';
  String userName = '';
  int favoriteCandiCount = 0;

  // TODO : 5. Implementasi fungsi signIn
  void signIn() {
    // setState(() {
    //   isSignedIn = !isSignedIn;
    // });
    Navigator.pushNamed(context, '/signin');
  }

  // TODO : 6. Implementasi fungsi signOut
  void signOut() {
    setState(() {
      isSignedIn = !isSignedIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO : 2. buat bagian ProfilHeader yg berisi gambar profil
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 200 - 50),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepPurple,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/placeholder_image.png'),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // TODO : 3. buat bagian ProfilInfo yg berisi info profil
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.deepPurple[100],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const Row(
                            children: [
                              Icon(
                                Icons.lock,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Pengguna',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            ': $userName',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 4,
                    ),
                    Divider(
                      color: Colors.deepPurple[100],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const Row(
                            children: [
                              Icon(
                                Icons.person,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Nama',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            ': $fullName',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                        if (isSignedIn) const Icon(Icons.edit),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.deepPurple[100],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const Row(
                            children: [
                              Icon(
                                Icons.lock,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Pengguna',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text(
                            ': $userName',
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),

                    // TODO : 4. buat bagian ProfilActions yg berisi TextButton Sign in/out
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.deepPurple[100],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    isSignedIn
                        ? TextButton(
                            onPressed: signOut, child: const Text('Sign Out'))
                        : TextButton(
                            onPressed: signIn, child: const Text('Sign In'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

