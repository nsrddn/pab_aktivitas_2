import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("images/1.png"),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr. Jokowidodo",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(title, style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    Icon(Icons.favorite_outline, color: Colors.red),
                  ],
                ),
                SizedBox(height: 18),
                Text(
                  "Jadwal Praktik",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("Sabtu - Minggu 12:00", style: TextStyle(fontSize: 12)),
                SizedBox(height: 18),
                Text(
                  "Biografi Singkat",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Jokowi Asik dan Suka Mengobrol",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(height: 18),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star_half, color: Colors.yellow),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 18),
                Center(
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                        fullscreenDialog: false,
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: Colors.white,
                          content: Container(
                            height: MediaQuery.sizeOf(context).height / 3,
                            color: Colors.white,
                            child: Column(
                              spacing: 8,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.green,
                                  ),
                                  child: Icon(
                                    Icons.check,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Berhasil Membuat Jadwal",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          actionsAlignment: MainAxisAlignment.center,
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.black,
                              ),
                              child: Text(
                                "Close",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      fixedSize: Size.fromWidth(
                        MediaQuery.sizeOf(context).width,
                      ),
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(),
                    ),
                    child: Text(
                      "Buat Jadwal Temu",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
